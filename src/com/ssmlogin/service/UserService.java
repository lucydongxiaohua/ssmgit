package com.ssmlogin.service;

import com.ssmlogin.bean.User;

public interface UserService {

	//�û�ע��
	void regist(User user);
	//�û���½
	User login(String name, String password);
}
