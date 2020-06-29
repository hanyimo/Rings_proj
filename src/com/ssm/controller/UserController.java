/*package com.controller;

import java.util.Date;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.jdbc.StringUtils;
import com.service.ClientService;
import com.service.UserService;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	@Resource
	private ClientService clientService;
	// 跳转到 login 页面
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(@ModelAttribute User user) {
		return "login";
	}
	// 登录校验
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@Valid User user,BindingResult bindingResult,HttpSession session,Model model) {
		model.addAttribute("user",user);
		// 判断是否有校验错误
		if(bindingResult.hasErrors())
			return "login";
		// 根据账户密码查找账户
		User result = userService.findUserByIdAndPsw(user.getUserId(),user.getUserPsw());
		// 没有找到
		if(null == result) {
			model.addAttribute("error","账户或密码错误");
			return "login";
		}
		// 判断账户是否被锁定
		if(result.getUserLock()!=null 
				&& result.getUserLock().getTime() > new Date().getTime()) {
			model.addAttribute("error","账户被锁定");
			return "login";
		}
		// 把账户放入 session
		session.setAttribute("loginer",result);
		// 判断其权限
		if(result.getUserLevel().getLevelMessage().equals("系统管理员")) 
			return "manage";
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
		user.setUserSex("男");
		return "client_regist";
	}
	// 实现注册功能
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public String clientRegist(@Valid User user,BindingResult bindingResult,
			String reUserPsw,Model model) {
		if(bindingResult.hasErrors()) {
			return "client_regist";
		}
		// 校验密码和确认密码是否相同
		if(!user.getUserPsw().equals(reUserPsw)) {
			model.addAttribute("error","密码和确认密码不同");
			return "client_regist";
		}
		// 判断账户是否已经存在
		User result = clientService.findUserById(user.getUserId());
		if(result != null) {
			model.addAttribute("error","账户已经存在");
			return "client_regist";
		}
		// 添加账户信息然后跳转到登录页面
		user.setUserCreateDate(new Date());
		user.setUserLevel(level);
		clientService.addNewUser(user);
		return "redirect:/login";
	}
	// 跳转到 client_view_invitation
	@RequestMapping(
			value="/client_view_invitation/{invitationId}",method=RequestMethod.GET)
	public String clientViewInvitation(@PathVariable String invitationId,
			HttpSession session,Model model) {
		Invitation invitation = clientService.findInvitationById(invitationId);
		model.addAttribute("invitation",invitation);
		// 获取所有的回复列表
		model.addAttribute("anss",clientService.findInvitationAnsByInvitationId(invitationId));
		// 获取用户登录信息
		Object obj = session.getAttribute("loginer");
		if(obj != null) {
			InvitationInter inter = clientService.findInvitationInterByUidAndIid(
					((User)obj).getUserId(), invitationId);
			model.addAttribute("inter",inter);
		}
		return "client_view_invitation";
	}
	// 跳转到 user_reset_password
	@RequestMapping(value="/user_reset_password",method=RequestMethod.GET)
	public String userResetPassword() {
		return "user_reset_password";
	}
	// 重置密码
	@RequestMapping(value="/user_reset_password",method=RequestMethod.POST)
	public String userResetPassword(String userId,String yzm,
				HttpSession session,Model model) {
		if(StringUtils.isNullOrEmpty(userId)
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
		User user = clientService.findUserById(userId);
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
		// 重置密码为6个6，并且发送到邮箱
		user.setUserPsw("666666");
		clientService.updateUserPswById(user);
		Properties props = new Properties();
		// 设置发送邮件的邮件服务器的属性（这里使用网易的smtp服务器，也可以使用其他邮箱服务器，
		// 什么邮箱就要使用对应的服务器，比如163邮箱服务器，就写“smtp.163.com”）
		props.put("mail.smtp.host","smtp.163.com");
		// 需要经过授权，也就是有户名和密码的校验，这样才能通过验证（一定要有这一条）
		props.put("mail.smtp.auth", "true");
		// 用刚刚设置好的props对象构建一个session
		Session emailSession = Session.getDefaultInstance(props);
		// 用session为参数定义消息对象
		MimeMessage message = new MimeMessage(emailSession);
		try {
			// 加载发件人地址
			message.setFrom(new InternetAddress("你的邮箱地址，比如123@qq.com"));
			// 加载收件人地址
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(user.getUserEmail()));
			// 加载标题
			message.setSubject("密码重置");
			// 向multipart对象中添加邮件的各个部分内容，包括文本内容和附件
			Multipart multipart = new MimeMultipart();

			// 设置邮件的文本内容
			BodyPart contentPart = new MimeBodyPart();
			contentPart.setText("重置密码成功！新密码为 666666");
			multipart.addBodyPart(contentPart);

			// 将multipart对象放到message中
			message.setContent(multipart);
			// 保存邮件
			message.saveChanges();
			// 发送邮件
			Transport transport = emailSession.getTransport("smtp");
			// 连接服务器的邮箱
			transport.connect("smtp.163.com","你的邮箱账号","你的邮箱密码");
			// 把邮件发送出去
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("error","密码重置成功，请到邮箱查看");
		
		return "user_reset_password";
	}
}
*/