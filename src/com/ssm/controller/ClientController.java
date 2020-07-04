package com.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.pojo.Design;
import com.ssm.pojo.Invitation;
import com.ssm.pojo.InvitationAns;
import com.ssm.pojo.User;
import com.ssm.service.Clientservice;

import com.mysql.jdbc.StringUtils;
import com.ssm.pojo.Contact;
import com.ssm.service.UserService;

@Controller
@RequestMapping("/client")
public class ClientController {
	@Resource
	private Clientservice clientService;
	@Resource
	private UserService userService;
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
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String clientContact() {
		return "user_contact";
	}
	//实现联系我们功能
	@RequestMapping(value="/contact",method=RequestMethod.POST)
	public String clientContact(Contact contact,Model model) {
		if(StringUtils.isNullOrEmpty(contact.getcMessage())) {
			model.addAttribute("error","内容不能为空");
			return "user_contact";
		}
		//把 contact 添加到数据库中
		contact.setcDate(new Date());
		userService.addNewContact(contact);
		model.addAttribute("error","您的消息发送成功！我会尽快与你联系");
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
	// 跳转到 invitation 页面
	@RequestMapping(value="/invitation",method=RequestMethod.GET)
	public String clientInvitation(Model model) {
		//查找所有帖子
		List<Invitation> invitation = clientService.findAllInvitation();
		model.addAttribute("invitation", invitation);
		return "user_invitation";
	}
	// 发帖功能
	@RequestMapping(value="/invitation",method=RequestMethod.POST)
	public String clientInvitationpost(Invitation invitation,Model model) {
		//查找所有帖子
		List<Invitation> invitations = clientService.findAllInvitation();
		model.addAttribute("invitation", invitations);
		//验证
		if(StringUtils.isNullOrEmpty(invitation.getInvTitle())
				|| StringUtils.isNullOrEmpty(invitation.getInvMessage())) {
			model.addAttribute("error","贴子标题和内容都不能为空");
			return "user_invitation";
		}
		// 把 invitation 添加到数据库中
		//User loginer = (User)session.getAttribute("loginer");
		User user = new User(2, null, null, null, null, null, null, null, null);
		invitation.setUid(user);
		invitation.setInvCreatDate(new Date());
		clientService.addNewInvitation(invitation);
		model.addAttribute("error", "发帖成功");
		invitations = clientService.findAllInvitation();
		model.addAttribute("invitation", invitations);
		return "user_invitation";
	}
	// 跳转到 view_invitation 页面
	@RequestMapping(value="/view_invitation/{invid}",method=RequestMethod.GET)
	public String clientViewInvitation(@PathVariable Integer invid, Model model) {
		//查找id对应的帖子信息和头像
		Invitation invitation = clientService.findInvitationById(invid);
		model.addAttribute("invitation", invitation);
		//获取所有回复信息
		List<InvitationAns> invitationans = clientService.findAllInvitationAns(invid);
		model.addAttribute("ans", invitationans);
		return "user_view_invitation";
	}
	// 回复功能
	@RequestMapping(value="/view_invitation",method=RequestMethod.POST)
	public String clientViewInvitationpost(InvitationAns ans,Model model) {
		//查找id对应的帖子信息和头像
		Invitation invitation = clientService.findInvitationById(ans.getInvid());
		model.addAttribute("invitation", invitation);
		//验证
		if(StringUtils.isNullOrEmpty(ans.getAnsMessage())) {
			model.addAttribute("error","内容不能为空");
			return "user_view_invitation";
		}
		// 把 ans 添加到数据库中
		ans.setUid(3);
		ans.setAnsDate(new Date());
		clientService.addNewInvitationAns(ans);
		model.addAttribute("error", "回复成功");
		//获取所有回复信息
		List<InvitationAns> invitationans = clientService.findAllInvitationAns(ans.getInvid());
		model.addAttribute("ans", invitationans);
		return "user_view_invitation";
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



















