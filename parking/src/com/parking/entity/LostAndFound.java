package com.parking.entity;

import java.util.Date;

/**
 * 寻物启事类
 * @author LHF
 *
 */
public class LostAndFound {
	private Integer id;		//编号
	private String name;	//失物名称
	private String description;		//失物描述
	private Users user;		//失主
	private Integer status;		//失物状态
	private Date publishDate;		//发布时间
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
}
