package com.parking.entity;

import java.util.Date;
/**
 * 预定车位类
 * @author LHF
 *
 */
public class Schdule {
	private Integer id;		//预定编号
	private ParkingSpace parkingSpace; //车位外键
	private String carno;	//车牌号
	private Users user;	//用户外键
	private Date sctime;	//预定时间
	private Date arriveTime;	//预计到达时间
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public ParkingSpace getParkingSpace() {
		return parkingSpace;
	}
	public void setParkingSpace(ParkingSpace parkingSpace) {
		this.parkingSpace = parkingSpace;
	}
	public String getCarno() {
		return carno;
	}
	public void setCarno(String carno) {
		this.carno = carno;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Date getSctime() {
		return sctime;
	}
	public void setSctime(Date sctime) {
		this.sctime = sctime;
	}
	public Date getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(Date arriveTime) {
		this.arriveTime = arriveTime;
	}
}
