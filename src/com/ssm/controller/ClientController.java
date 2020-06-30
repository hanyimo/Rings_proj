package com.ssm.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/client")
public class ClientController {
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
	public String clientDesign() {
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



















