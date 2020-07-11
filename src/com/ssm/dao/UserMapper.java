package com.ssm.dao;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.User;

public interface UserMapper {
	/**
	 * 根据账户和密码查找对应的用户信息
	 */
	User findByIdAndPsw(@Param("userName") String userName,@Param("userPsw") String userPsw);
	
	/**
	 * 把账户添加到数据库
	 */
	int addNewUser(User user);
	
	/**
	 * 根据账户查找对应的用户信息
	 */
	User findUserById(
			@Param("userName") String userName);
	
	/**
	 * 根据uid查找对应的用户信息
	 */
	User findUserByUid(
			@Param("uid") Integer uid);
	
	/**
	 * 根据id修改信息
	 */
	int updateMessage(User user);

	/**
	 * 根据id修改头像
	 */
	int updateUserPhotoById(String userName, String userPhoto);
	
	int updateUserPswById(User user);
}
