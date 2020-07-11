package com.ssm.controller;

import java.util.Date;
import java.util.List;

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


import com.ssm.pojo.Category;
import com.ssm.pojo.goods;

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
	@RequestMapping(value = "/goodsManage", method = RequestMethod.GET)
	public String servergoodsManage(Model model) {
		// 获取所有的商品分类显示在列表中
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "goodsManage";
	}

	// 跳转到添加分类 页面
	@RequestMapping(value = "/addgoodsCate", method = RequestMethod.GET)
	public String serveraddgoodsCate(@ModelAttribute Category category) {
		return "addgoodsCategory";
	}

	// 实现添加商品分类功能
	@RequestMapping(value = "/addgoodsCate", method = RequestMethod.POST)
	public String serveraddgoodsCate(@Valid Category category, BindingResult bindingResult, Model model) {
		model.addAttribute("category", category);
		if (bindingResult.hasErrors()) {
			return "addgoodsCategory";
		}
		if (serverService.addNewgoodsCate(category.getCategory()) == 0) {
			model.addAttribute("error", "不同添加相同的分类名称");
			return "addgoodsCategory";
		}
		return "redirect:/server/goodsManage";
	}

	// 跳转到修改分类 页面
	@RequestMapping(value = "/EditgoodsCate/{categoryId}", method = RequestMethod.GET)
	public String serverEditgoodsCate(@PathVariable Integer categoryId, Model model) {
		// 根据 id 获取分类类型
		Category category = serverService.findCategoryById(categoryId);
		model.addAttribute("category", category);
		return "EditgoodsCategory";
	}

	// 实现修改分类功能
	@RequestMapping(value = "/EditgoodsCate", method = RequestMethod.POST)
	public String serverEditgoodsCate(@Valid Category category,
			 BindingResult bindingResult,Model model) {
		model.addAttribute("category", category);
		if (bindingResult.hasErrors()) {
			return "EditgoodsCategory";
		}
		Category result = serverService.findCategory(category.getCategory());
		// 判断输入的新标题是否跟其他的标题同名
		if (result != null && result.getCategoryId() != category.getCategoryId()) {
			model.addAttribute("error", "此分类已经存在");
			return "EditgoodsCategory";
		}
			// 修改分类名称
			serverService.updateCategoryById(category);
			model.addAttribute("error", "修改分类名称成功");
			return "EditgoodsCategory";

		
	}
	//删除分类
	@RequestMapping(value="/del_category/{categoryId}",method=RequestMethod.GET)
	public String delCategory(@PathVariable Integer categoryId,Model model) {
		int results=serverService.delCategoryById(categoryId);
		if(results==1) {
			model.addAttribute("errors", "删除分类成功");
			return "redirect:/server/goodsManage";
		}
		    model.addAttribute("errors", "分类下有相关商品，不可删除");
		return "redirect:/server/goodsManage";
	}
	// 跳转到商品列表页面
	@RequestMapping(value = "/goodsTable", method = RequestMethod.GET)
	public String servergoodsTable(Model model) {
		// 循环输出商品信息
		List<goods> gs = serverService.findAllgoods();
		model.addAttribute("goods", gs);
		return "admin_goodsTable";
	}
	//商品下架处理
		@RequestMapping(value = "/updateStatus/{gid}")
		public String serverupdateStatus(@PathVariable Integer gid,Model model) {   
			serverService.updategoodsStatusById(gid,new Date());
				return "redirect:/server/goodsTable";
			}

	// 跳转到商品添加页面
	@RequestMapping(value = "/add_goods")
	public String serveraddgoods(Model model) {
		// 获取所有的商品分类显示在列表中
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "admin_addGoods";
	}

	// 实现商品添加功能
	@RequestMapping(value = "/add_goodss")
	public String serveraddgoodss(@Valid goods gs, BindingResult bindingResult, HttpSession session, Model model) {
		if (bindingResult.hasErrors()) {
			return "admin_addGoods";
		}
		// 获取goods对象
		Object goods = session.getAttribute("goods");
		// 添加商品
		int resultss = serverService.addNewGoods((goods) goods);
		System.out.println(resultss);
		if (resultss == 1) {
			// 添加数据成功
			model.addAttribute("error", "添加数据成功");
            // 清除session
            session.setAttribute("goods", null);
            return "redirect:/server/add_goods";
		}
		// 添加数据成功
		model.addAttribute("error", "添加数据失败");
		// 清除session
		session.setAttribute("goods", null);
		return "redirect:/server/add_goods";
	}

	// 根据gid跳转到修改商品 页面
	@RequestMapping(value = "/Editgoods/{gid}", method = RequestMethod.GET)
	public String serverEditgoods(@PathVariable Integer gid, Model model) {
		// 获取所有的商品分类显示在列表中
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		goods gs = serverService.findgoodsById(gid);
		model.addAttribute("goods", gs);
		return "EditGoods";
	}
	
   //????修改商品信息
	@RequestMapping(value = "/edit_goodss")
	public String servereditgoodss(HttpSession session, Model model) {
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		// 获取goods对象
		Object gs = session.getAttribute("goodss");
		// 判断是否为空
		if (gs == null)
			model.addAttribute("error", "内容不能为空");
		// 修改商品
		int resultss = serverService.updategoodsById((goods)gs);
		
		System.out.println(resultss);
		if (resultss == 1) // 添加数据成功
			model.addAttribute("error", "修改数据成功");
		
		return "redirect:/server/goodsTable";
	}
	//跳转到库存信息页面
	@RequestMapping(value = "/EditgoodsStock/{gid}", method = RequestMethod.GET)
	public String serverEditgoodsStock(@PathVariable Integer gid,Model model) {
		//根据gid获取对应商品的库存信息
		goods gss=serverService.findgoodsById(gid);
		model.addAttribute("goods", gss);
		return "editgoodsStock";
	}
	
	//修改库存信息
	@RequestMapping(value = "/EditgoodsStock", method = RequestMethod.POST)
	public String serverEditgoodsStock(@Valid goods gs,BindingResult bindingResult,Model model) {
		model.addAttribute("goods", gs);
		if (bindingResult.hasErrors()) {
			model.addAttribute("error", "库存量最低为0");
			return "editgoodsStock";
		}
		int gss=serverService.updategoodsStockById(gs);
		if(gss==1) 
			model.addAttribute("error","修改库存成功");
			//System.out.println(gss);
			return "editgoodsStock";
		}
	
}
