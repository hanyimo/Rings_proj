package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/server")
public class ServerController {
	// 跳转到 index 页面
	@RequestMapping("/index")
	public String serverAdminIndex() {
		return "admin_Index";
	}
}






