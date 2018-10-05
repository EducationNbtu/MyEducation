package com.education.entity;
/** 
* @author Yaves E-mail: 1156110543@qq.com
* @version 创建时间：2018年10月4日 下午4:09:25 
* 类说明 ：创建一个课程的实体类（对象）
*/
public class Edu_course {
private int cs_id;//课程编号
private String cs_code;//课程代码
private String cs_name;//课程名称
private String cs_target;//课程目标
private String cs_summary;//课程概述
private String cs_create_time;//课程创建时间
private int cs_state;//课程状态 0=待审核 1=正常 2=停用 3=删除
private String cs_modify_time;//课程修改时间
private int cs_modify_user;//修改人员
public int getCs_id() {
	return cs_id;
}
public void setCs_id(int cs_id) {
	this.cs_id = cs_id;
}
public String getCs_code() {
	return cs_code;
}
public void setCs_code(String cs_code) {
	this.cs_code = cs_code;
}
public String getCs_name() {
	return cs_name;
}
public void setCs_name(String cs_name) {
	this.cs_name = cs_name;
}
public String getCs_target() {
	return cs_target;
}
public void setCs_target(String cs_target) {
	this.cs_target = cs_target;
}
public String getCs_summary() {
	return cs_summary;
}
public void setCs_summary(String cs_summary) {
	this.cs_summary = cs_summary;
}
public String getCs_create_time() {
	return cs_create_time;
}
public void setCs_create_time(String cs_create_time) {
	this.cs_create_time = cs_create_time;
}
public int getCs_state() {
	return cs_state;
}
public void setCs_state(int cs_state) {
	this.cs_state = cs_state;
}
public String getCs_modify_time() {
	return cs_modify_time;
}
public void setCs_modify_time(String cs_modify_time) {
	this.cs_modify_time = cs_modify_time;
}
public int getCs_modify_user() {
	return cs_modify_user;
}
public void setCs_modify_user(int cs_modify_user) {
	this.cs_modify_user = cs_modify_user;
}
}
