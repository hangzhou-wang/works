package com.parking.entity;
/**
 * 价格类型
 * @author LHF
 *
 */
public class PriceType {
	private Integer id;		//编号
	private Float price;	//价格
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
}
