package com.parking.entity;

import java.util.Date;
/**
 * 用户类
 * @author LHF
 *
 */
public class Users {
	private Integer id; 	//编号
	private String name; 	//用户民
	private String realname;//真实姓名
	private String password; 	//密码
	private String phone; 	//电话
	private String address; 	//地址
	private String email; 	//邮箱
	private Date birthday; 	//生日
	private Integer status;//用户身份
	private Date regdate; 	//注册日期
	private Integer integration;//积分

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Integer getIntegration() {
		return integration;
	}

	public void setIntegration(Integer integration) {
		this.integration = integration;
	}
}
