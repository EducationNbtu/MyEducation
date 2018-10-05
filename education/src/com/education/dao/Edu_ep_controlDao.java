package com.education.dao;

import com.education.entity.Edu_ep_control;
import com.education.entity.Edu_user;
import com.mysql.jdbc.Connection;

public interface Edu_ep_controlDao {
  public Edu_ep_control getrangemes(Connection con,Edu_ep_control ep)throws Exception;//获取试卷控制表相关信息
}
