package com.education.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.education.daoImpl.Edu_ep_controlDaoImpl;
import com.education.entity.Edu_ep_control;
import com.education.util.DbUtil;
import com.mysql.jdbc.Connection;

public class EpServlet extends HttpServlet {
    DbUtil dbUtil=new DbUtil();
    Edu_ep_controlDaoImpl Edu_ep_controlDao=new Edu_ep_controlDaoImpl();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con=null;
		try {
			con=(Connection) dbUtil.getCon();
			Edu_ep_control ep=new Edu_ep_control();
			Edu_ep_control currentep_control=Edu_ep_controlDao.getrangemes(con, ep);
			//测试是否进行成功的跳转
			System.out.println(currentep_control.getCe_id()+"ok"+currentep_control.getEc_begin());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	

}
