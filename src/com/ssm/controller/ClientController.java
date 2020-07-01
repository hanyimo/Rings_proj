package com.ssm.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.ssm.pojo.Design;
import com.ssm.service.Clientservice;
import com.ssm.service.Serverservice;

@Controller
@RequestMapping("/client")
public class ClientController {
	@Resource
	private Clientservice clientService;
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
	@RequestMapping("/contact")
	public String clientContact() {
		return "user_contact";
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
	//上传
	@RequestMapping(value="/designupto")
	public String clientDesignUpto(HttpSession session) {
		//获取design对象
		Object design = session.getAttribute("design");
		//判断是否为空
		if(design == null)
			session.setAttribute("error", "上传失败");
		// 把Design对象放入数据库
		int a = clientService.addNewDesign((Design)design);
		if(a==1) {
			session.setAttribute("error", "上传成功");
		}
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



















