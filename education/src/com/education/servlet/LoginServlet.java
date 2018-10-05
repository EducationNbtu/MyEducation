package com.education.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.education.daoImpl.Edu_userDaoImpl;
import com.education.entity.Edu_user;
import com.education.entity.Edu_user_jurisdiction;
import com.education.util.DbUtil;
import com.education.util.StringUtil;
import com.mysql.jdbc.Connection;

public class LoginServlet extends HttpServlet{

	DbUtil dbUtil=new DbUtil();
	Edu_userDaoImpl Edu_userDao=new Edu_userDaoImpl();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String u_username=request.getParameter("u_username");
		String u_password=request.getParameter("u_password");
		System.out.println(u_username+" "+u_password);
		request.setAttribute("userName", u_username);//将（String）userName的值传给name为userName的前端
		request.setAttribute("password", u_password);
		if(StringUtil.isEmpty(u_username)||StringUtil.isEmpty(u_password))
		{
			request.setAttribute("error", "用户名或密码为空");//如果从前端获取的值为空则发送错误信息由前台接收
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return ;
		}
		Edu_user user=new Edu_user(u_username,u_password);
		Connection con=null;
		try {
			con=(Connection) dbUtil.getCon();//获取数据库连接对象
			Edu_user currentUser=Edu_userDao.login(con, user);
			Edu_user_jurisdiction currentjudgeUser=Edu_userDao.sess(con, user);
			System.out.println(currentjudgeUser.getU_id()+"ok "+currentjudgeUser.getJ_id());
			if(currentUser==null)
			{
				request.setAttribute("error", "用户名或密码错误");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			else
			{
				if(currentjudgeUser.getJ_id()==0)
				{
					response.sendRedirect("Education/Manager/index.html");
				}
				else if(currentjudgeUser.getJ_id()==1)
				{
					//如果登录成功将用户信息存储到session中
					HttpSession session=request.getSession();
					session.setAttribute("currentUser", currentUser);
					session.setAttribute("J_ID", currentjudgeUser.getJ_id());
					session.setAttribute("currentUser", currentUser);
					response.sendRedirect("Education/Teacher/index.jsp");
				}
				else
				{
					
					response.sendRedirect("Education/Students/index.html");
				}
					
			
				
				System.out.println("你成功了！");
				
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	}

}
