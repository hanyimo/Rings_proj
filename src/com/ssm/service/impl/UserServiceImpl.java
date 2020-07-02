package com.ssm.service.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.ContactMapper;
import com.ssm.pojo.Contact;
import com.ssm.pojo.User;
import com.ssm.pojo.anscontact;
import com.ssm.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Resource
	ContactMapper contactMapper;
	/**
	 * 获取用户名
	 */
	@Override
	public User findUserById(Integer uid) {
		return contactMapper.findUserById(uid);
	}
	/**
	 * 添加联系我们内容
	 */
	@Override
	public int addNewContact(Contact contact) {
		//对内容进行编码处理
		String message = null;
		try {
			message = URLEncoder.encode(contact.getcMessage(), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		contact.setcMessage(message);
		return contactMapper.addNewContact(contact);
	}
	/**
	 * 获取联系我们内容
	 */
	@Override
	public List<Contact> findContact(Integer status) {
		List<Contact> contact = contactMapper.findContact(status);
		String message = null;
		for(Contact con : contact) {
			try {
				// 对内容进行解码处理(采用UTF-8编码格式)
				message = URLDecoder.decode(con.getcMessage(),"utf-8");
				// 屏蔽掉敏感内容
				message = message.replaceAll("(操)","*");
			} catch (Exception e) {
				e.printStackTrace();
			}
			con.setcMessage(message);
		}
		return contact;
	}
	/**
	 * 回复用户
	 */
	@Override
	public int addNewAnsContact(anscontact ans) {
		String message = null;
		try {
			message = URLEncoder.encode(ans.getAnsMessage(), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		ans.setAnsMessage(message);
		return contactMapper.addNewAnsContact(ans);
	}
	
}
