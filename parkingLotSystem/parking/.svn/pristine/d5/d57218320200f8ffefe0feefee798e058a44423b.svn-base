package com.parking.action;
import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;
import com.parking.entity.Schdule;
import com.parking.service.SchduleService;

@SuppressWarnings("serial")
public class SchduleAction extends ActionSupport {
	private SchduleService schduleService;//预订信息Service
	private Schdule schdule;//预订信息实体
	private String arriveTime;//预计到达时间
	private String scTime;//预定时间
	
	/**
	 * 添加预订信息
	 * @return
	 * @throws Exception
	 */
	public String addSchdule() throws Exception{
		@SuppressWarnings("deprecation")
		Date dateArrivetime=new Date(arriveTime);
		@SuppressWarnings("deprecation")
		Date dateSctiem=new Date(scTime);
		schdule.setSctime(dateSctiem);
		schdule.setArriveTime(dateArrivetime);
		int addRes=schduleService.insertSchdule(schdule);
		if (addRes>0) {
			int changeStatus=schduleService.updatePSstatus(schdule.getParkingSpace().getId(), 1);
			if (changeStatus>0) {
				return "success";
			}else{
				return "error";
			}
		}
		return "error";
	}
	
	
	public SchduleService getSchduleService() {
		return schduleService;
	}
	public void setSchduleService(SchduleService schduleService) {
		this.schduleService = schduleService;
	}
	public Schdule getSchdule() {
		return schdule;
	}
	public void setSchdule(Schdule schdule) {
		this.schdule = schdule;
	}
	public String getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(String arriveTime) {
		this.arriveTime = arriveTime;
	}
	public String getScTime() {
		return scTime;
	}
	public void setScTime(String scTime) {
		this.scTime = scTime;
	}
}
