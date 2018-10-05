package com.education.daoImpl;

import java.sql.PreparedStatement;

import com.education.dao.Edu_ep_controlDao;
import com.education.entity.Edu_ep_control;
import com.education.entity.Edu_user;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

public class Edu_ep_controlDaoImpl implements Edu_ep_controlDao {

	@Override
	//获取试卷控制表相关信息
	public Edu_ep_control getrangemes(Connection con,Edu_ep_control ep)throws Exception
	{
		// TODO Auto-generated method stub
		 Edu_ep_control resultep=null;
		 String sql="select * from edu_ep_control where CE_ID=?";
		 PreparedStatement pstmt=(PreparedStatement) con.prepareStatement(sql);
		 pstmt.setInt(1, ep.getCe_id());
		 ResultSet rs=(ResultSet) pstmt.executeQuery();
		 if(rs.next())
		 {
			 resultep=new Edu_ep_control();
			 resultep.setCe_id(rs.getInt("CE_ID"));
			 resultep.setEc_begin(rs.getString("EC_BEGIN"));
			 resultep.setEc_end(rs.getString("CE_END"));
			 resultep.setEc_ep_limit(rs.getInt("EC_EP_LIMIT"));
			 resultep.setEc_q_limit(rs.getInt("EC_Q_LIMIT"));
			 resultep.setEc_user(rs.getInt("EC_USER"));
			 resultep.setEp_id(rs.getInt("EP_ID"));
			 resultep.setTs_id(rs.getInt("TS_ID"));
			
		 }
		 return resultep;
	}

	
	
}
