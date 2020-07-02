package com.ssm.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.pojo.Design;
import com.ssm.pojo.User;
import com.ssm.pojo.anscontact;
import com.mysql.jdbc.StringUtils;
import com.ssm.pojo.Contact;
import com.ssm.service.Clientservice;
import com.ssm.service.Serverservice;
import com.ssm.service.UserService;

@Controller
@RequestMapping("/client")
public class ClientController {
	@Resource
	private Clientservice clientService;
	@Resource
	private UserService userService;
	// 跳转到 about 页面
	@RequestMapping("/about")
	public String clientAbout() {
		return "user_about";
	}
	// 跳转到 cart 页面
	@RequestMapping("/cart")
	public String clientCart() {
		return "user_cart";
	}
	// 跳转到 checkout 页面
	@RequestMapping("/checkout")
	public String clientCheckOut() {
		return "user_checkout";
	}
	// 跳转到 contact 页面
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String clientContact(Model model) {
		//获取用户名
		User user = userService.findUserById(1);
		model.addAttribute("user",user);
		return "user_contact";
	}
	//实现联系我们功能
	@RequestMapping(value="/contact",method=RequestMethod.POST)
	public String clientContact(Contact contact,Model model) {
		if(StringUtils.isNullOrEmpty(contact.getcMessage())) {
			model.addAttribute("error","内容不能为空");
			return "user_contact";
		}
		//把 contact 添加到数据库中
		contact.setcDate(new Date());
		userService.addNewContact(contact);
		model.addAttribute("error","您的消息发送成功！我会尽快与你联系");
		return "user_contact";
		
	}
	//跳转到 user_obtain_contact 页面
	@RequestMapping(value="/obtainContact",method=RequestMethod.GET)
	public String serverObtainContact(Model model) {
		//获取联系我们的全部信息
		List<Contact> contact = userService.findContact(0);
		model.addAttribute("contact",contact);
		return "user_obtain_contact";
	}
	//跳转到 user_ans_contact 页面
	@RequestMapping(value="/ansContact",method=RequestMethod.GET)
	public String serverAnsContact() {
		return "user_ans_contact";
	}
	//实现回复用户功能
	@RequestMapping(value="/ansContact",method=RequestMethod.POST)
	public String serverAnsContact(anscontact ans,Model model) {
		if(StringUtils.isNullOrEmpty(ans.getAnsMessage())){
			model.addAttribute("error","输入的内容不能为空");
			return "user_ans_contact";
		}
		//把 anscontact 添加到数据库中去
		ans.setAnsDate(new Date());
		userService.addNewAnsContact(ans);
		model.addAttribute("error","回复成功");
		return "user_ans_contact";
	}
	// 跳转到 design 页面
	@RequestMapping("/design")
	public String clientDesign(Model model) {
		//获取该用户所有设计（session获取uid）
		List<Design> design = clientService.findDesignByUid(1);
		model.addAttribute("design", design);
		return "user_design";
	}
	// 跳转到 designup 页面
	@RequestMapping("/designup")
	public String clientDesignUp() {
		return "user_designup";
	}
	// 跳转到 personInfo 页面
	@RequestMapping("/personInfo")
	public String clientPersonInfo() {
		return "user_personInfo";
	}
	// 跳转到 productCategory 页面
	@RequestMapping("/productCategory")
	public String clientProductCategory() {
		return "productCategory";
	}
	// 跳转到 singleproduct 页面
	@RequestMapping("/singleproduct")
	public String clientSingleproduct() {
		return "user_singleproduct";
	}
}



















