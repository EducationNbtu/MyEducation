package com.education.dao;

import com.education.entity.Edu_user;
import com.education.entity.Edu_user_jurisdiction;
import com.mysql.jdbc.Connection;

public interface Edu_userDao {

	//账号登录
	 public Edu_user login(Connection con,Edu_user user);
	 //获取身份权限
	 public Edu_user_jurisdiction sess(Connection con,Edu_user_jurisdiction user);
}
