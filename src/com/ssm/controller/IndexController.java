package com.ssm.controller;


import java.util.List;

import javax.annotation.Resource;

import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.pojo.Category;
import com.ssm.pojo.User;
import com.ssm.pojo.goods;
import com.ssm.pojo.goodsstore;
import com.ssm.service.Serverservice;

@Controller
public class IndexController {
	@Resource
	private Serverservice serverService;

	// 跳转到 index 页面
	@RequestMapping("/")
	public String clientIndex(Model model) {
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		// 获取最新商品
		List<goods> gss = serverService.showNewgoods();
		model.addAttribute("gss", gss);
		//获取热门商品
		List<goods> hotgs = serverService.findHotGoods();
		model.addAttribute("hotgs", hotgs);
		return "user_index";
	}

	// 根据categoryId跳转到 对应分类页面
	@RequestMapping(value = "/pro1/{categoryId}")
	public String product(@PathVariable Integer categoryId,goods goods, Model model) {
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		// 获取所有商品列表
		List<goods> gs = serverService.findAllgoodsByCate(categoryId);
		model.addAttribute("gs", gs);
		// 根据id进行跳转
		Category cate = serverService.findCategoryById(categoryId);
		model.addAttribute("category", cate);
		return "user_productCategory";
	}

	// 根据商品id跳转到 商品详情 页面
	@RequestMapping("/singleproduct/{gid}")
	public String clientSingleproduct(@PathVariable Integer gid, Model model,HttpSession session) {
		// 获取该商品相关信息
		goods gs = serverService.findgoodsById(gid);
		// 根据categoryId获取相似产品信息
		List<goods> gss = serverService.findLikedgoods(gs.getCategory().getCategoryId());
		model.addAttribute("gs", gs);
		model.addAttribute("gss", gss);
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		// System.out.println(gss);
		if((User)session.getAttribute("loginer")!=null) {
			//判断是否收藏
			goodsstore re = serverService.findgoodsStoreById(((User)session.getAttribute("loginer")).getUid(), gid);
			model.addAttribute("re",re);
		}
		return "user_singleproduct";
	}

	// 跳转到 goodsstore 页面
	@RequestMapping("/goodsstore")
	public String userGoodsstore(Model model,HttpSession session) {
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		// 显示收藏的商品列表
		List<goods> gsstore = serverService.findAllStoregoods(((User)session.getAttribute("loginer")).getUid());
		model.addAttribute("gsstore", gsstore);
		return "user_goodsstore";
	}

	// 收藏商品 跳转到各个分类页面
	@RequestMapping("/add_new_goods_store/{gid}/{categoryId}")
	public ModelAndView addNewGoodsstore(@PathVariable Integer gid, @PathVariable Integer categoryId, Model model,HttpSession session) {
		// 通过gid 获取 goods
		goods goods = serverService.findgoodsById(gid);
		model.addAttribute("goods", goods);
		// 保存goodsstore 到数据库
		// 获取登录信息
		User loginer = (User)session.getAttribute("loginer"); 
		int re = serverService.addNewgoodsstore(loginer.getUid(),gid);
		// System.out.println(re);
		// 在 model中设置一个 store 值
		model.addAttribute("store", new goodsstore());
		String url = "redirect:http://localhost:8080/Rings_proj/pro1/" + categoryId;
		return new ModelAndView(url);
	}

	// 收藏商品 跳转到详情页面
	@RequestMapping("/add_new_goodss_store/{gid}")
	public String add_new_goodss_storee(@PathVariable Integer gid, Model model,HttpSession session) {
		// 通过gid 获取 goods
		goods goods = serverService.findgoodsById(gid);
		model.addAttribute("goods", goods);
		// 保存goodsstore 到数据库
		// 获取登录信息
		User loginer = (User)session.getAttribute("loginer");
		int re = serverService.addNewgoodsstore(loginer.getUid(),gid);
		// System.out.println(re);
		// 在 model中设置一个 store 值
		model.addAttribute("store", new goodsstore());
		return "redirect:/singleproduct/" + gid;
	}

	// 收藏商品 跳转到首页
	@RequestMapping("/add_new_goodsss_store/{gid}")
	public String add_new_goodsss_storee(@PathVariable Integer gid, Model model,HttpSession session) {
		// 通过gid 获取 goods
		goods goods = serverService.findgoodsById(gid);
		model.addAttribute("goods", goods);
		// 保存goodsstore 到数据库
		// 获取登录信息
		User loginer = (User)session.getAttribute("loginer");
		int re =  serverService.addNewgoodsstore(loginer.getUid(),gid);
		// System.out.println(re);
		// 在 model中设置一个 store 值
		model.addAttribute("store", new goodsstore());
		return "redirect:/";
	}

	// 取消商品收藏
	@RequestMapping(value = "/del_goods_store/{gid}")
	public String delInvitationInter(@PathVariable Integer gid, HttpSession session, Model model) {
		// 通过gid 获取 goods
		goods goods = serverService.findgoodsById(gid);
		model.addAttribute("goods", goods);
		// 删除表 bbs_invitation_inter 中对应的记录
		// 获取此登录用户的信息
		User loginer = (User)session.getAttribute("loginer");
		serverService.delgoodsStoreByUidAndgid(loginer.getUid(),gid);
		// 在 model中设置一个 store 值
		model.addAttribute("store", new goodsstore());
		return "redirect:/goodsstore";
	}
	
	/**
	 * 搜索商品
	 * 
	 * @param str          
	 * @return
	 * @throws Exception
	 * 用注解@RequestParam绑定请求参数到方法入参  
　　      当请求参数str不存在时会有异常发生,可以通过设置属性required=false解决,
             例如: @RequestParam(value="str", required=false)
	 */
	@RequestMapping(value = "/search")
	public String searchGoods(@RequestParam(value = "str", required = false) String str,
			@RequestParam(value = "cate", required = false) Integer cate,Model model) throws Exception {
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		//获取搜索的商品
		List<goods> goodsList = serverService.searchGoods(str, str,cate);
		model.addAttribute("search", goodsList);
		System.out.println(cate);
	    return "searchGoods";
	}
	
}
