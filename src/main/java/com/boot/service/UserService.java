package com.boot.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.boot.dao.UserDao;



public class UserService {

	@Autowired
	UserDao dao;

	public void register() {
		dao.saveUser();
	}

	public boolean validate(String userName,String password) {
		return dao.checkLogin(userName, password);
	}

}
