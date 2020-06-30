package com.ssm.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.pojo.Category;
import com.ssm.service.Serverservice;

@Controller
public class IndexController {
	@Resource
	private Serverservice serverService;
	// 跳转到 index 页面
	@RequestMapping("/")
	public String clientIndex(Model model) {
		// 获取所有的商品分类显示在列表中
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "user_index";
	}
	// 跳转到 对应分类页面
	@RequestMapping("/productCate1")
	public String product(Model model) {
		return "user_productCategory";
	}
}






