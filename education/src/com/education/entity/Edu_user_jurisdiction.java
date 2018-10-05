package com.education.entity;

public class Edu_user_jurisdiction {
	
private int u_id;//主键
private int j_id;//权限号
private String uj_modify_time;//修改时间
private int uj_modify_user;//修改人
public Edu_user_jurisdiction() {
	super();
	// TODO Auto-generated constructor stub
}
public Edu_user_jurisdiction(int u_id, int j_id) {
	super();
	this.u_id = u_id;
	this.j_id = j_id;
}
public int getU_id() {
	return u_id;
}
public void setU_id(int u_id) {
	this.u_id = u_id;
}
public int getJ_id() {
	return j_id;
}
public void setJ_id(int j_id) {
	this.j_id = j_id;
}
public String getUj_modify_time() {
	return uj_modify_time;
}
public void setUj_modify_time(String uj_modify_time) {
	this.uj_modify_time = uj_modify_time;
}
public int getUj_modify_user() {
	return uj_modify_user;
}
public void setUj_modify_user(int uj_modify_user) {
	this.uj_modify_user = uj_modify_user;
}

}
