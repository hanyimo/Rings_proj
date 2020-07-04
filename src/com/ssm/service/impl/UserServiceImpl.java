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
import com.ssm.pojo.feedback;
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
		return contactMapper.addNewContact(contact);
	}
	/**
	 * 获取联系我们内容
	 */
	@Override
	public List<Contact> findContact(Integer status) {
		return contactMapper.findContact(status);
	}
	/**
	 * 回复用户
	 */
	@Override
	public int addNewAnsContact(anscontact ans) {
		return contactMapper.addNewAnsContact(ans);
	}
	/**
	 * 修改回复状态
	 */
	@Override
	public int updateContactById(Integer contactId) {
		return contactMapper.updateContactById(contactId);
	}
	/**
	 * 获取官方回复
	 */
	@Override
	public List<anscontact> findAllAnsContact() {
		return contactMapper.findAllAnsContact();
	}
	/**
	 * 用户反馈
	 */
	@Override
	public int addNewFeedback(feedback feed) {
		return contactMapper.addNewFeedback(feed);
	}
	@Override
	public List<feedback> findAllFeedback() {
		return contactMapper.findAllFeedback();
	}
	
}
