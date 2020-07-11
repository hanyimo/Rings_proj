package com.ssm.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.api.KdniaoSubscribeAPI_1;
import com.ssm.pojo.Category;
import com.ssm.pojo.Design;
import com.ssm.pojo.Invitation;
import com.ssm.pojo.InvitationAns;
import com.ssm.pojo.User;
import com.ssm.service.Clientservice;
import com.ssm.service.Serverservice;
import com.alibaba.fastjson.JSON;
import com.mysql.jdbc.StringUtils;
import com.ssm.service.UserService;

@Controller
@RequestMapping("/design")
public class DesignController {
	@Resource
	private Clientservice clientService;
	@Resource
	private UserService userService;
	@Resource
	private Serverservice serverService;
	// 跳转到user_design
	@RequestMapping("/design")
	public String clientDesign(HttpSession session,Model model) {
		//根据uid获取所有设计
		Integer uid = ((User)session.getAttribute("loginer")).getUid();
		List<Design> design = clientService.findDesignByUid(uid);
		model.addAttribute("design", design);
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "user_design";
	}
	// 跳转到user_designup
	@RequestMapping("/designup")
	public String clientDesignUp(Model model) {
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "user_designup";
	}
	//上传设计
	@RequestMapping(value="/designupto")
	public String clientDesignUpto(HttpSession session) {
		//获取design
		Object design = session.getAttribute("design");
		//判断是否为空
		if(design == null)
			session.setAttribute("error", "上传失败");
		// 上传设计
		int a = clientService.addNewDesign((Design)design);
		if(a==1) {
			session.setAttribute("error", "上传成功");
		}
		return "user_designup";
	}
	// 跳转到user_invitation
	@RequestMapping(value="/invitation",method=RequestMethod.GET)
	public String clientInvitation(Model model) {
		//获取所有帖子
		List<Invitation> invitation = clientService.findAllInvitation();
		model.addAttribute("invitation", invitation);
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "user_invitation";
	}
	// 发帖功能
	@RequestMapping(value="/invitation",method=RequestMethod.POST)
	public String clientInvitationpost(Invitation invitation,Model model,HttpSession session) {
		//获取所有帖子
		List<Invitation> invitations = clientService.findAllInvitation();
		model.addAttribute("invitation", invitations);
		//判断是否为空
		if(StringUtils.isNullOrEmpty(invitation.getInvTitle())
				|| StringUtils.isNullOrEmpty(invitation.getInvMessage())) {
			model.addAttribute("error","贴子标题和内容都不能为空");
			return "user_invitation";
		}
		User user = (User)session.getAttribute("loginer");
		invitation.setUid(user);
		invitation.setInvCreatDate(new Date());
		clientService.addNewInvitation(invitation);
		model.addAttribute("error", "发帖成功");
		invitations = clientService.findAllInvitation();
		model.addAttribute("invitation", invitations);
		return "user_invitation";
	}
	//跳转到对应的user_view_invitation页面
	@RequestMapping(value="/view_invitation/{invid}",method=RequestMethod.GET)
	public String clientViewInvitation(@PathVariable Integer invid, Model model) {
		//查找对应帖子信息
		Invitation invitation = clientService.findInvitationById(invid);
		model.addAttribute("invitation", invitation);
		//获取所有回复
		List<InvitationAns> invitationans = clientService.findAllInvitationAns(invid);
		model.addAttribute("ans", invitationans);
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "user_view_invitation";
	}
	// 发表回复
	@RequestMapping(value="/view_invitation",method=RequestMethod.POST)
	public String clientViewInvitationpost(InvitationAns ans,Model model,HttpSession session) {
		//获取对应帖子信息
		Invitation invitation = clientService.findInvitationById(ans.getInvid());
		model.addAttribute("invitation", invitation);
		//判断是否为空
		if(StringUtils.isNullOrEmpty(ans.getAnsMessage())) {
			model.addAttribute("error","内容不能为空");
			return "user_view_invitation";
		}
		ans.setUid(((User)session.getAttribute("loginer")).getUid());
		ans.setAnsDate(new Date());
		clientService.addNewInvitationAns(ans);
		model.addAttribute("error", "评论成功");
		//获取所有回复
		List<InvitationAns> invitationans = clientService.findAllInvitationAns(ans.getInvid());
		model.addAttribute("ans", invitationans);
		return "user_view_invitation";
	}
	// 跳转到 admin_invitation_manager 页面
	@RequestMapping("/invitation_manager")
	public String InvitationManager(Model model) {
		//获取所有帖子
		List<Invitation> invitation = clientService.findAllInvitation();
		model.addAttribute("invitation", invitation);
		return "admin_invitation_manager";
	}
	// 跳转到 admin_view_invitation 页面
	@RequestMapping("/invitation_view_manager/{invid}")
	public String InvitationViewManager(@PathVariable Integer invid,Model model) {
		//获取所有invid
		Invitation invitation = clientService.findInvitationById(invid);
		model.addAttribute("invitation", invitation);
		return "admin_view_invitation";
	}
	// 通过审核
	@RequestMapping("/success/{invid}")
	public String updateInvitationSuccess(@PathVariable Integer invid,Model model) {
		Date time = new Date();
		//通过审核
		clientService.updateInvitationSuccess(invid,time);
		//获取所有帖子
		List<Invitation> invitation = clientService.findAllInvitation();
		model.addAttribute("invitation", invitation);
		return "admin_invitation_manager";
	}
	// 未通过审核
	@RequestMapping("/no/{invid}")
	public String updateInvitationNo(@PathVariable Integer invid,Model model) {
		Date time = new Date();
		//未通过审核
		clientService.updateInvitationNo(invid,time);
		//获取所有帖子
		List<Invitation> invitation = clientService.findAllInvitation();
		model.addAttribute("invitation", invitation);
		return "admin_invitation_manager";
	}
	//删除帖子
	@RequestMapping("/delinvitation/{invid}")
	public String clientDelInvitation(@PathVariable Integer invid,Model model) {
		//删除帖子
		clientService.delInvitationById(invid);
		//删除帖子下，所有回复
		clientService.delInvitationAnsByInvId(invid);
		//获取所有帖子
		List<Invitation> invitation = clientService.findAllInvitation();
		model.addAttribute("invitation", invitation);
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "user_invitation";
	}
	//删除回复
	@RequestMapping("/delinvitationAns/{invid}/{aid}")
	public String clientDelInvitationAns(@PathVariable Integer invid,@PathVariable Integer aid,Model model) {
		//删除
		clientService.delInvitationAnsById(aid);
		//获取所有帖子
		Invitation invitation = clientService.findInvitationById(invid);
		model.addAttribute("invitation", invitation);
		//获取所有回复
		List<InvitationAns> invitationans = clientService.findAllInvitationAns(invid);
		model.addAttribute("ans", invitationans);
		// 循环获取商品分类
		List<Category> categories = serverService.findAllCategories();
		model.addAttribute("categories", categories);
		return "user_view_invitation";
	}
	
}



















