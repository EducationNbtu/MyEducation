package com.education.Service;

import java.util.List;

import com.education.entity.Edu_user;

public interface UserService {
	/**

	 * @Description:根据学生主键获取用户
	 */
	List<Edu_user> getUser(int user_id);
}
