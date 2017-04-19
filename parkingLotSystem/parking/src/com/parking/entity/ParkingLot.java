package com.parking.entity;
/**
 * 停车场类
 * @author LHF
 */
public class ParkingLot {
	private Integer id;		//编号
	private String name;	//车场名
	private String position;	//位置
	private Integer volume;		//容量

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

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public Integer getVolume() {
		return volume;
	}

	public void setVolume(Integer volume) {
		this.volume = volume;
	}
}
