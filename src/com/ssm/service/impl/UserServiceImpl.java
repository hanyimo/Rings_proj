package com.ssm.service.impl;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.dao.ContactMapper;
import com.ssm.pojo.Contact;
import com.ssm.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Resource
	ContactMapper contactMapper;
	/**
	 * 获取用户名
	 */
	@Override
	public Contact findUserById(int contactId) {
		return contactMapper.findUserById(contactId);
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
	

}
