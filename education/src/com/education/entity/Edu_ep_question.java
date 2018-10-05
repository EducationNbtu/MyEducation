package com.education.entity;

public class Edu_ep_question {

	public int ep_id;//试卷编号
	public int q_id;//题目编号
	public int seq;//题目序列
	public String eq_create_time;//添加时间
	public int eq_create_user;//添加人员
	public int eq_score;//题目分数
	public int eq_addition;//是否为附加题
	public String eq_modify_time;//修改时间
	public int eq_modify_user;//修改人员
	public int getEp_id() {
		return ep_id;
	}
	public void setEp_id(int ep_id) {
		this.ep_id = ep_id;
	}
	public int getQ_id() {
		return q_id;
	}
	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getEq_create_time() {
		return eq_create_time;
	}
	public void setEq_create_time(String eq_create_time) {
		this.eq_create_time = eq_create_time;
	}
	public int getEq_create_user() {
		return eq_create_user;
	}
	public void setEq_create_user(int eq_create_user) {
		this.eq_create_user = eq_create_user;
	}
	public int getEq_score() {
		return eq_score;
	}
	public void setEq_score(int eq_score) {
		this.eq_score = eq_score;
	}
	public int getEq_addition() {
		return eq_addition;
	}
	public void setEq_addition(int eq_addition) {
		this.eq_addition = eq_addition;
	}
	public String getEq_modify_time() {
		return eq_modify_time;
	}
	public void setEq_modify_time(String eq_modify_time) {
		this.eq_modify_time = eq_modify_time;
	}
	public int getEq_modify_user() {
		return eq_modify_user;
	}
	public void setEq_modify_user(int eq_modify_user) {
		this.eq_modify_user = eq_modify_user;
	}
}
