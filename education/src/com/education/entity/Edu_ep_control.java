package com.education.entity;

public class Edu_ep_control {

	public int ce_id;//试卷实施编号
	public int ts_id;//教学安排编号
	public int ep_id;//试卷编号
	public String ec_begin;//试卷开始时间
	public String ec_end;//试卷结束时间
	public int ec_ep_limit;//试卷是否限制时长
	public int ec_q_limit;//问题是否限制时长
	public int ec_user;//操作人员
	public int getCe_id() {
		return ce_id;
	}
	public void setCe_id(int ce_id) {
		this.ce_id = ce_id;
	}
	public int getTs_id() {
		return ts_id;
	}
	public void setTs_id(int ts_id) {
		this.ts_id = ts_id;
	}
	public int getEp_id() {
		return ep_id;
	}
	public void setEp_id(int ep_id) {
		this.ep_id = ep_id;
	}
	public String getEc_begin() {
		return ec_begin;
	}
	public void setEc_begin(String ec_begin) {
		this.ec_begin = ec_begin;
	}
	public String getEc_end() {
		return ec_end;
	}
	public void setEc_end(String ec_end) {
		this.ec_end = ec_end;
	}
	public int getEc_ep_limit() {
		return ec_ep_limit;
	}
	public void setEc_ep_limit(int ec_ep_limit) {
		this.ec_ep_limit = ec_ep_limit;
	}
	public int getEc_q_limit() {
		return ec_q_limit;
	}
	public void setEc_q_limit(int ec_q_limit) {
		this.ec_q_limit = ec_q_limit;
	}
	public int getEc_user() {
		return ec_user;
	}
	public void setEc_user(int ec_user) {
		this.ec_user = ec_user;
	}
	
}
