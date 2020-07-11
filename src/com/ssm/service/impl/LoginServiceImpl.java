package com.ssm.service.impl;

import javax.annotation.Resource;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;

import com.ssm.dao.UserMapper;
import com.ssm.pojo.User;
import com.ssm.service.LoginService;


@Service("loginService")
public class LoginServiceImpl implements LoginService{
	@Resource
	private UserMapper userMapper;
	//根据userName和密码查询信息
	@Override
	public User findByIdAndPsw(String userName,String userPsw) {
		userPsw = DigestUtils.md5Hex(userPsw);
		return userMapper.findByIdAndPsw(userName, userPsw);
	}
	// 添加新的用户
	@Override
	public int addNewUser(User user) {
		// 加密密码
		user.setUserPsw(DigestUtils.md5Hex(user.getUserPsw()));
		return userMapper.addNewUser(user);
	}
	// 根据 userId 查找用户
	@Override
	public User findUserById(String userId) {
		return userMapper.findUserById(userId);
	}
	// 根据 uid 查找用户
	@Override
	public User findUserByUid(Integer uid) {
		return userMapper.findUserByUid(uid);
	}
	// 根据 userId 修改 userPhoto
	@Override
	public int updateUserPhotoById(String userName, String userPhoto) {
		return userMapper.updateUserPhotoById(userName, userPhoto);
	}
	//根据id就修改用户信息
	@Override
	public int updateMessage(User user) {
		return userMapper.updateMessage(user);
	}
	@Override
	public int updateUserPswById(User user) {
		// 加密密码
		user.setUserPsw(DigestUtils.md5Hex(user.getUserPsw()));
		return userMapper.updateUserPswById(user);
	}
}
