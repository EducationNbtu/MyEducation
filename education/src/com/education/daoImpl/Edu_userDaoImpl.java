package com.education.daoImpl;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.education.entity.Edu_user;
import com.education.entity.Edu_user_jurisdiction;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;
public class Edu_userDaoImpl {

	//账号登录
   public Edu_user login(Connection con,Edu_user user) throws Exception
	 {
		 Edu_user resultuser=null;
		 String sql="select * from edu_user where U_USERNAME=? and U_PASSWORD=?";
		 PreparedStatement pstmt=(PreparedStatement) con.prepareStatement(sql);
		 pstmt.setString(1, user.getU_username());
		 pstmt.setString(2, user.getU_password());
		 ResultSet rs=(ResultSet) pstmt.executeQuery();
		 if(rs.next())
		 {
			 resultuser=new Edu_user();
			 resultuser.setU_username(rs.getString("u_username"));
			 resultuser.setU_password(rs.getString("u_password"));
		 }
		 return resultuser;
		 
	 }
   //获取身份权限
	 public Edu_user_jurisdiction sess(Connection con,Edu_user user) throws SQLException
	 {
		 Edu_user_jurisdiction resultuser=null;
		 String sql="select * from edu_user_jurisdiction where U_ID = (select U_ID from edu_user where U_USERNAME=? and U_PASSWORD=?)";
		 PreparedStatement pstmt=con.prepareStatement(sql);
		 pstmt.setString(1, user.getU_username());
		 pstmt.setString(2, user.getU_password());
		 ResultSet rs=(ResultSet) pstmt.executeQuery();
		 if(rs.next())
		 {
			 
			 resultuser=new Edu_user_jurisdiction();
			 resultuser.setU_id(rs.getInt("U_ID"));
			 resultuser.setJ_id(rs.getInt("J_ID"));
		 }
		 return resultuser;
		 
	 }
	 
	 
}
