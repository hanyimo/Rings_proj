package com.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.pojo.Category;
import com.ssm.service.Serverservice;


@Controller
@RequestMapping("/server")
public class ServerController {
	@Resource
	private Serverservice serverService;
	// 跳转到 index 页面
	@RequestMapping("/index")
	public String serverAdminIndex() {
		return "admin_Index";
	}

	// 跳转到 商品管理列表 页面
	@RequestMapping(value="/goodsManage",method=RequestMethod.GET)
	public String servergoodsManage(Model model) {
		// 获取所有的商品分类显示在列表中
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "goodsManage";
	}
	
	// 跳转到添加分类 页面
	@RequestMapping(value="/addgoodsCate",method=RequestMethod.GET)
	public String serveraddgoodsCate(@ModelAttribute Category category) {
		return "addgoodsCategory";
	}
	// 实现添加商品分类功能
	@RequestMapping(value="/addgoodsCate",method=RequestMethod.POST)
		public String serveraddgoodsCate(@Valid Category category,BindingResult bindingResult,
				Model model) {
			model.addAttribute("category", category);
			if(bindingResult.hasErrors()) {
				return "addgoodsCategory";
			}
			if(serverService.addNewgoodsCate(category.getCategory()) == 0) {
				model.addAttribute("error","不同添加相同的分类名称");
				return "addgoodsCategory";
			}
			return "redirect:/server/goodsManage";
		}
		
	// 跳转到修改分类 页面
		@RequestMapping(value="/EditgoodsCate/{categoryId}",method=RequestMethod.GET)
		public String serverEditgoodsCate(@PathVariable Integer categoryId,Model model) {
			// 根据 id 获取分类类型
			Category category = serverService.findCategoryById(categoryId);
			model.addAttribute("category", category);
			return "EditgoodsCategory";
		}
		// 实现修改分类功能
		@RequestMapping(value="/EditgoodsCate",method=RequestMethod.POST)
		public String manageAlterCategory(@ModelAttribute Category category,Model model) {
			Category result = serverService.findCategory(category.getCategory());
			// 判断输入的新标题是否跟其他的标题同名
			if(result!=null && result.getCategoryId()!=category.getCategoryId()) {
				model.addAttribute("error","此分类已经存在");
				return "EditgoodsCategory";
			}
			// 修改分类名称
			serverService.updateCategoryById(category);
			model.addAttribute("error", "修改分类名称成功");
			return "EditgoodsCategory";
		}
}
