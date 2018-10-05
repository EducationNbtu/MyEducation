package com.education.entity;

public class Edu_question {
	public int q_id;//题目主键
	public String q_title;//题目标题
	public String q_summary;//题目概述
	public String q_tips;//题目提示
	public String q_sample_in;//题目输入样例
	public String q_create_time;//题目输出样例
	public int q_time_limit;//编译题时间限制
	public int q_memory_limit;//编译内存限制
	public int q_state;//题目状态
	public int q_type;//题目类型
	public String q_exam;//题目答案样例
	public int q_create_user;//题目创建人员
	public int q_time;//题目时间限制0=不限制
	public String q_modify_time;//题目修改时间
	public int q_modify_user;//题目修改人员
	public int getQ_id() {
		return q_id;
	}
	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public String getQ_summary() {
		return q_summary;
	}
	public void setQ_summary(String q_summary) {
		this.q_summary = q_summary;
	}
	public String getQ_tips() {
		return q_tips;
	}
	public void setQ_tips(String q_tips) {
		this.q_tips = q_tips;
	}
	public String getQ_sample_in() {
		return q_sample_in;
	}
	public void setQ_sample_in(String q_sample_in) {
		this.q_sample_in = q_sample_in;
	}
	public String getQ_create_time() {
		return q_create_time;
	}
	public void setQ_create_time(String q_create_time) {
		this.q_create_time = q_create_time;
	}
	public int getQ_time_limit() {
		return q_time_limit;
	}
	public void setQ_time_limit(int q_time_limit) {
		this.q_time_limit = q_time_limit;
	}
	public int getQ_memory_limit() {
		return q_memory_limit;
	}
	public void setQ_memory_limit(int q_memory_limit) {
		this.q_memory_limit = q_memory_limit;
	}
	public int getQ_state() {
		return q_state;
	}
	public void setQ_state(int q_state) {
		this.q_state = q_state;
	}
	public int getQ_type() {
		return q_type;
	}
	public void setQ_type(int q_type) {
		this.q_type = q_type;
	}
	public String getQ_exam() {
		return q_exam;
	}
	public void setQ_exam(String q_exam) {
		this.q_exam = q_exam;
	}
	public int getQ_create_user() {
		return q_create_user;
	}
	public void setQ_create_user(int q_create_user) {
		this.q_create_user = q_create_user;
	}
	public int getQ_time() {
		return q_time;
	}
	public void setQ_time(int q_time) {
		this.q_time = q_time;
	}
	public String getQ_modify_time() {
		return q_modify_time;
	}
	public void setQ_modify_time(String q_modify_time) {
		this.q_modify_time = q_modify_time;
	}
	public int getQ_modify_user() {
		return q_modify_user;
	}
	public void setQ_modify_user(int q_modify_user) {
		this.q_modify_user = q_modify_user;
	}

}
