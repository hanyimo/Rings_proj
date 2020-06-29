package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	// 跳转到 index 页面
	@RequestMapping("/")
	public String clientIndex() {
		return "user_index";
	}
}






