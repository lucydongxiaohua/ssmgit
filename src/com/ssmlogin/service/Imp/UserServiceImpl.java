package com.ssmlogin.service.Imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssmlogin.bean.User;
import com.ssmlogin.dao.UserDao;
import com.ssmlogin.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
 
	public void regist(User user){
		// TODO Auto-generated method stub
		userDao.addUser(user);
	}

 
	public User login(String name , String password){
		// TODO Auto-generated method stub 
		System.out.println("ÓÃ»§µÇÂ¼£º"+name+password); 
		return userDao.findUserByNameAndPwd(name, password);
		
	}
}
