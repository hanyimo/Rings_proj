package com.ssm.service;

import com.ssm.pojo.Contact;

public interface UserService {
	//获取用户名
	Contact findUserById(int contactId);
	//添加联系我们内容
	int addNewContact(Contact contact);
}
