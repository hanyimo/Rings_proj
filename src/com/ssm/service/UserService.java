package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Contact;
import com.ssm.pojo.User;
import com.ssm.pojo.anscontact;
import com.ssm.pojo.feedback;

public interface UserService {
	//获取用户名
	User findUserById(Integer uid);
	//添加联系我们内容
	int addNewContact(Contact contact);
	
	List<Contact> findContact(Integer status);
	
	int addNewAnsContact(anscontact ans);
	
	int updateContactById(Integer contactId);
	
	List<anscontact> findAllAnsContact();
	
	int addNewFeedback(feedback feed);
	
	List<feedback> findAllFeedback();
}
