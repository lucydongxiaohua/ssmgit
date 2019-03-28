package com.ssmlogin.service;

import com.ssmlogin.bean.User;

public interface UserService {

	//用户注册
	void regist(User user);
	//用户登陆
	User login(String name, String password);
}
