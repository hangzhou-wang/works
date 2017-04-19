package com.parking.dao;

import java.util.List;

import com.parking.entity.Users;

public interface UsersDao {
	/**
	 * 用户登录方法
	 */
	List<Users> login(String loginName, String loginPwd);
	
	/**
	 * 新用户注册
	 */
	void insertUser(Users user);
	
	/**
	 * 检查用户名是否已经存在
	 */
	Long existUserName(String userName);
	
	/**
	 * 用户积分更新
	 */
	void updateIntegration(int user_id,int integration);
	
	/**
	 * 修改用户密码
	 */
	void modifyUserPwd(int user_id,String newPwd);
	/**
	 * 注册成为会员
	 */
	void beMember(int user_id);
	 /*用于账户注销*/
	void nullifyUser(Users user);
	/*根据id得到用户*/
	Users getUserById(Integer user_id);
	/*抽奖*/
	int luckyMan(Integer user_id);
	/*修改用户基本信息*/
	int modifyUserInfo(Users user);
	
	
	/**
	 * 管理员
	 */
	/*查询所有用户*/
	List<Users> getUsers(int begin,int pageSize);
	/*得到用户数量*/
	Long getUserCount();
	/*封号*/
	int killorLiveUser(Integer user_id,Integer status);
	/*根据用户名查询用户信息*/
	List<Users> getUserByName(String user_name);
}
