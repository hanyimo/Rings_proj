package com.ssm.controller;

import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.FilenameUtils;
import org.aspectj.bridge.Message;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;
import com.ssm.pojo.Category;
import com.ssm.pojo.User;
import com.ssm.service.LoginService;
import com.ssm.service.Serverservice;


@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private LoginService loginService;
	@Resource
	private Serverservice serverService;
	// 跳转到 login 页面
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(@ModelAttribute User user,Model model) {
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "user_login";
	}
	// 登录校验
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@Valid User user,BindingResult bindingResult,HttpSession session,Model model) {
		model.addAttribute("user",user);
		System.out.println(user.getUserName()+user.getUserPsw());
		// 判断是否有校验错误
		if(bindingResult.hasErrors())
			return "user_login";
		// 根据账户密码查找账户
		System.out.println("wjk");
		String userName = user.getUserName();
		String userPsw = user.getUserPsw();
		User result = loginService.findByIdAndPsw(userName, userPsw);
		// 没有找到
		if(result == null) {
			System.out.println("kk");
			model.addAttribute("error","账户或密码错误");
			return "user_login";
		}
		System.out.println("bajsbasjnsjsa");
		// 把账户放入 session
		session.setAttribute("loginer",result);
		if(result.getUserScore() == 999999)
		return "redirect:/server/index";
		return "redirect:/";
	}
	// 实现登出功能
	@RequestMapping("/loginout")
	public String loginout(HttpSession session) {
		session.removeAttribute("loginer");
		return "redirect:/";
	}
	// 跳转到  client_regist 页面
	@RequestMapping(value="/regist",method=RequestMethod.GET)
	public String clientRegist(@ModelAttribute User user) {
		return "user_register";
	}
	// 实现注册功能
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String clientRegist(@Valid User user,BindingResult bindingResult,
			String reUserPsw,Model model) {
		model.addAttribute("user",user);
		if(bindingResult.hasErrors()) {
			return "user_register";
		}
		// 判断账户是否已经存在
		User result = loginService.findUserById(user.getUserName());
		if(result != null) {
			model.addAttribute("error","账户已经存在");
			return "user_register";
		}
		// 添加账户信息然后跳转到登录页面
		Date userCreateDate = new Date();
		user.setUserCreateDate(userCreateDate);
		loginService.addNewUser(user);
		return "redirect:/user/login";
	}
	//根据id修改用户信息
	@RequestMapping(value="/user_manage")
	public String manageAlter(HttpSession session,Model model) {
		// 获取user对象
		Object user = session.getAttribute("user");
		// 判断是否为空
		if (user == null)
			model.addAttribute("error", "内容不能为空");
		// 修改商品
		int resultss = loginService.updateMessage((User)user);
		System.out.println(resultss);
		if (resultss == 1) { 
			model.addAttribute("error", "修改数据成功");
			return "redirect:/user/userinfo";
		}
		else 
			model.addAttribute("error", "修改数据失败");
		User loginer = loginService.findUserByUid(((User)user).getUid());
		session.removeAttribute("loginer");
		session.setAttribute("loginer", loginer);
		return "redirect:/user/userinfo";
	}
	//跳转到manage页面
	@RequestMapping(value="/manage" )
	public String clientManage(HttpSession session,Model model) {
		Integer uid = ((User)session.getAttribute("loginer")).getUid();
		User user = loginService.findUserByUid(uid);
		model.addAttribute("user",user);
		return "manage";
	}
	// 跳转到 userinfo
	@RequestMapping("/userinfo")
	public String userInfod(HttpSession session,Model model) {
		Integer uid = ((User)session.getAttribute("loginer")).getUid();
		User user = loginService.findUserByUid(uid);
		model.addAttribute("user",user);
		return "userinfo";
	}
	// 跳转到 user_reset_password
	@RequestMapping(value="/user_reset_password",method=RequestMethod.GET)
	public String userResetPassword() {
		return "user_reset_password";
	}
	// 重置密码
	@RequestMapping(value="/forget",method=RequestMethod.POST)
	public String userResetPassword(String userName,String yzm,
				HttpSession session,Model model) {
		if(StringUtils.isNullOrEmpty(userName)
				|| StringUtils.isNullOrEmpty(yzm)) {
			model.addAttribute("error", "账户和验证码都不能为空");
			return "user_reset_password";
		}
		Object obj = session.getAttribute("yzm");
		if(!yzm.equals(obj.toString())) {
			model.addAttribute("error", "验证码输入错误");
			return "user_reset_password";
		}
		// 根据账户id查找账户
		User user = loginService.findUserById(userName);
		if(null == user) {
			model.addAttribute("error", "账户不存在");
			return "user_reset_password";
		}
		// 获取账户邮箱
		String email = user.getUserEmail();
		if(null == email) {
			model.addAttribute("error", "未设置邮箱，无法重置");
			return "user_reset_password";
		}
		String regEx1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
		Pattern p = Pattern.compile(regEx1);
		Matcher m = p.matcher(email);
		if(!m.matches()){
			model.addAttribute("error", "邮箱错误，无法重置");
			return "user_reset_password";
        }
		// 重置密码为6个9，并且发送到邮箱
		user.setUserPsw("999999");
		loginService.updateUserPswById(user);
		model.addAttribute("error","密码重置成功，请到邮箱查看");
		model.addAttribute("user",user);
		return "user_login";
	}
}