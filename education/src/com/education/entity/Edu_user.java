package com.education.entity;

public class Edu_user {
	  private int u_id;//人员主键
	  private String u_name;//人员姓名
	  private String u_username;//用户名（帐号）
	  private String u_password;//密码
	  private int u_state;//人员状态
	  private String u_mobile;//联系电话
	  private String u_email;//联系邮箱
	  private String u_modify_time;//修改时间
	  private int u_modify_user;//修改人
	  private String u_path;//人物头像路径
	  
	public Edu_user() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_username() {
		return u_username;
	}
	public void setU_username(String u_username) {
		this.u_username = u_username;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public int getU_state() {
		return u_state;
	}
	public void setU_state(int u_state) {
		this.u_state = u_state;
	}
	public String getU_mobile() {
		return u_mobile;
	}
	public void setU_mobile(String u_mobile) {
		this.u_mobile = u_mobile;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_modify_time() {
		return u_modify_time;
	}
	public void setU_modify_time(String u_modify_time) {
		this.u_modify_time = u_modify_time;
	}
	public int getU_modify_user() {
		return u_modify_user;
	}
	public void setU_modify_user(int u_modify_user) {
		this.u_modify_user = u_modify_user;
	}
	public String getU_path() {
		return u_path;
	}
	public void setU_path(String u_path) {
		this.u_path = u_path;
	}
	public Edu_user(String u_username, String u_password) {
		super();
		this.u_username = u_username;
		this.u_password = u_password;
	}
	
  
}
