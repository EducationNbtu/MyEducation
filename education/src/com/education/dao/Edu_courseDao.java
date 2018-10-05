package com.education.dao;

import com.education.entity.Edu_course;
import com.mysql.jdbc.Connection;

/** 
* @author Yaves E-mail: 1156110543@qq.com
* @version 创建时间：2018年10月4日 下午3:55:27 
* 类说明 ：关于课程的数据交互
*/

public interface Edu_courseDao {
  /**
 * @author Yaves
 * 最近更新： 2018年10月4日下午4:06:43
 * 功能描述：添加课程
 */

public void addCourse(Edu_course newcourse,Connection con)throws Exception;
}
