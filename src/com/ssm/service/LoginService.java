package com.ssm.service;

import com.ssm.pojo.User;

public interface LoginService {
	User findByIdAndPsw(String userName,String userPsw);
	
	int addNewUser(User user);
	
	User findUserById(String userName);
	
	User findUserByUid(Integer uid);
	
	int updateMessage(User user);

	int updateUserPhotoById(String userName, String userPhoto);
	
	int updateUserPswById(User user);

}
