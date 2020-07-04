package com.ssm.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ssm.pojo.User;
import com.ssm.pojo.anscontact;
import com.ssm.pojo.feedback;
import com.mysql.jdbc.StringUtils;
import com.ssm.pojo.Contact;
import com.ssm.service.Clientservice;
import com.ssm.service.Serverservice;
import com.ssm.service.UserService;

@Controller
@RequestMapping("/client")
public class ClientController {
	@Resource
	private UserService userService;
	// 跳转到 contact 页面
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String clientContact(Model model) {
		//获取用户名
		User user = userService.findUserById(1);
		model.addAttribute("user",user);
		//获取官方回复
		List<anscontact> ans = userService.findAllAnsContact();
		model.addAttribute("ans", ans);
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
	//跳转到 user_obtain_contact 页面
	@RequestMapping(value="/obtainContact",method=RequestMethod.GET)
	public String serverObtainContact(Model model) {
		//获取联系我们的全部信息
		List<Contact> contact = userService.findContact(0);
		model.addAttribute("contact",contact);
		return "user_obtain_contact";
	}
	//跳转到 user_ans_contact 页面
	@RequestMapping(value="/ansContact/{uid}/{contactId}",method=RequestMethod.GET)
	public String serverAnsContact(@PathVariable Integer uid,@PathVariable Integer contactId,Model model) {
		model.addAttribute("uid",uid);
		model.addAttribute("contactId",contactId);
		return "user_ans_contact";
	}
	//实现回复用户功能
	@RequestMapping(value="/ansContact/{uid}/{contactId}",method=RequestMethod.POST)
	public String serverAnsContact(@PathVariable Integer uid,@PathVariable Integer contactId,anscontact ans,Model model) {
		if(StringUtils.isNullOrEmpty(ans.getAnsMessage())){
			model.addAttribute("error","输入的内容不能为空");
			return "user_ans_contact";
		}
		//把 anscontact 添加到数据库中去
		ans.setAnsDate(new Date());
		ans.setUid(uid);
		ans.setContactId(contactId);
		userService.addNewAnsContact(ans);
		//修改回复状态
		userService.updateContactById(contactId);
		model.addAttribute("error","回复成功");
		return "user_ans_contact";
	}
	//跳转到 user_feedback页面
	@RequestMapping(value="/feedback",method=RequestMethod.GET)
	public String clientFeedback(Model model) {
		//获取用户名
		User user = userService.findUserById(1);
		model.addAttribute("user",user);
		return "user_feedback";
	}
	//用户反馈
	@RequestMapping(value="/feedback",method=RequestMethod.POST)
	public String clientFeedback(feedback feed,Model model) {
		if(StringUtils.isNullOrEmpty(feed.getfMessage()) || 
				StringUtils.isNullOrEmpty(feed.getSubject())) {
			model.addAttribute("error","输入的标题和内容不能为空");
			return "user_feedback";
		}
		//把 feedback 添加到数据库中
		feed.setfDate(new Date());
		userService.addNewFeedback(feed);
		model.addAttribute("error","感谢你的反馈");
		return "user_feedback";
	}
	
	//跳转到查看用户反馈 backstage_feedback
	@RequestMapping(value="backstage",method=RequestMethod.GET)
	public String clentBackstageFeedback(Model model) {
		//动态获取用户反馈
		List<feedback> feed = userService.findAllFeedback();
		model.addAttribute("feed",feed);
		return "backstage_feedback";
	}
}



















