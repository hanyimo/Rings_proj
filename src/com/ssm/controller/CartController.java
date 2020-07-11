package com.ssm.controller;


import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.pojo.User;
import com.ssm.pojo.goods;
import com.ssm.pojo.order;
import com.alibaba.fastjson.JSON;
import com.ssm.pojo.Category;
import com.ssm.pojo.cart;

import com.ssm.service.Clientservice;
import com.ssm.service.Serverservice;

@Controller
@RequestMapping("/client")
public class CartController {
	@Resource
	private Clientservice cartService;
	@Resource
	private Serverservice serverService;
	//根据商品id
	//添加商品到购物车,中间两个2要后来动态获取/add_cart/{gid}
	@RequestMapping("/add_cart/{gid}")
	public String addCart(@PathVariable Integer gid,Model model,HttpSession session) {
		User loginer = (User)session.getAttribute("loginer");
		// 判断购物车商品是否已经存在
		cart result = cartService.findCartByGidAndUid(gid,loginer.getUid());
		if (result != null) {
			cartService.updateCart(gid, loginer.getUid());
		} 
		else {
		cart carts=new cart(gid,loginer.getUid(),1);
		cartService.addCart(carts);
		}
		return "redirect:/";
		
	}
	//添加商品到购物车,中间两个2要后来动态获取/add_cart/{gid}/回到详情
	@RequestMapping("/add_cart2/{gid}")
	public String addCart2(@PathVariable Integer gid,Model model,HttpSession session) {
		User loginer = (User)session.getAttribute("loginer");
		// 判断购物车商品是否已经存在
		cart result = cartService.findCartByGidAndUid(gid,loginer.getUid());
		if (result != null) {
			cartService.updateCart(gid, loginer.getUid());
		} 
		else {
		cart carts=new cart(gid,loginer.getUid(),1);
		cartService.addCart(carts);
		}
		// 获取该商品相关信息
		goods gs = serverService.findgoodsById(gid);
		// 根据categoryId获取相似产品信息
		List<goods> gss = serverService.findLikedgoods(gs.getCategory().getCategoryId());
		model.addAttribute("gs", gs);
		model.addAttribute("gss", gss);
		return "user_singleproduct";
	}
	//添加商品到购物车,中间两个2要后来动态获取/add_cart/{gid}/回到分类
	@RequestMapping("/add_cart3/{gid}/{cid}")
	public String addCart(@PathVariable Integer gid,@PathVariable Integer cid,Model model,HttpSession session) {
	  	User loginer = (User)session.getAttribute("loginer");
		// 判断购物车商品是否已经存在
		cart result = cartService.findCartByGidAndUid(gid,loginer.getUid());
		if (result != null) {
			cartService.updateCart(gid, loginer.getUid());
		}
		else {
		cart carts=new cart(gid,loginer.getUid(),1);
		cartService.addCart(carts);
		}
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		// 获取所有商品列表
		List<goods> gs = serverService.findAllgoodsByCate(cid);
		model.addAttribute("gs", gs);
		// 根据id进行跳转
		Category cate = serverService.findCategoryById(cid);
		model.addAttribute("category", cate);
		return "user_productCategory";
	}
	//根据用户id获取购物车商品，数字到时候要动态获取
	@RequestMapping(value="/obtain_goods",method=RequestMethod.GET)
	public String clientObtainGoods(Model model,HttpSession session) {
		// 循环获取商品分类
				List<Category> categories = serverService.findAllCategories();
				model.addAttribute("categories", categories);
		Integer uid = ((User)session.getAttribute("loginer")).getUid();
		// 获取所有的商品信息
		List<cart> goods = cartService.findCartsByUid(uid);
		model.addAttribute("goods",goods);
		model.addAttribute("uid",uid);
		return "user_cart";
	}
	//根据购物车id移除出购物车
	@RequestMapping(value="/delete_goods",method=RequestMethod.POST)
	@ResponseBody
	public String deleteGoods(Integer cid) {
		cartService.deleteCartByGid(cid);
		return JSON.toJSONString("");
	}	
	//清空购物车
	@RequestMapping(value="/delete_orders",method=RequestMethod.POST)
	@ResponseBody
	public String deleteCart(Integer uid) {
		cartService.deleteCart(uid);
	    return JSON.toJSONString("");
	}
	//继续购物，跳转到商品页面
	@RequestMapping("/continue_cart")
	public String continueCart() {
		return "user_singleproduct";
	}
	//结算页面
	@RequestMapping(value="/order_goods",method=RequestMethod.GET)
	public String orderGoods(Model model,HttpSession session) {
		// 循环获取商品分类
				List<Category> categories = serverService.findAllCategories();
				model.addAttribute("categories", categories);
		Integer uid = ((User)session.getAttribute("loginer")).getUid();
		// 获取所有的商品信息
	    List<cart> goods = cartService.findCartsByUid(uid);
		model.addAttribute("goods",goods);
		return "user_checkout";
	}
	//跳转到订单页面
	@RequestMapping("/order_for_goods")
	public String order_for_goods(HttpSession session,Model model) {
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		Integer uid = ((User)session.getAttribute("loginer")).getUid();
		 List<order> orders =cartService.findAllOrders(uid);
		 model.addAttribute("order",orders);
		return "orderforgoods";
	}
	//生成订单
	@RequestMapping(value="/order_goods",method=RequestMethod.POST)
	public String orderToGoods(HttpSession session,order order) {
		Random random = new Random();
		order.setUid(((User)session.getAttribute("loginer")).getUid());
		order.setOrder_code("RD106851"+random.nextInt(10000000));
		System.out.println(order.getAddress());
		//创建订单时间
		order.setOrder_time(new Date());
		cartService.addNewOrder(order);
		return "redirect:/client/order_for_goods";
	}
	//后台订单管理页面
	@RequestMapping("/admin_order")
	public String continueAdmin(HttpSession session,Model model) {
		List<order> order =cartService.findAllOrdersto();
		 model.addAttribute("order",order);
		return "admin_order_manager";
	}
	// 发货（是否发货）
	@RequestMapping("/success_shipment_status/{oid}")
	public String updateInvitationSuccess(@PathVariable Integer oid) {
		cartService.updateSuccess(oid);
		return "redirect:/client/admin_order";
	}
	// 未发货
	@RequestMapping("/no_shipment_status/{oid}")
	public String updateInvitationNo(@PathVariable Integer oid) {
		cartService.updateNo(oid);
		return "redirect:/client/admin_order";
	}
	
}



















