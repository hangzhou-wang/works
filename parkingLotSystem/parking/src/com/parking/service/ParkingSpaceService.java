package com.parking.service;

import java.util.List;

import com.parking.entity.ParkingSpace;
import com.parking.entity.Schdule;

public interface ParkingSpaceService {
	Long countSpace();

	List<ParkingSpace> psList(Integer begin, Integer pageSize);
	/*根据id查询车位*/
	ParkingSpace getPSById(Integer ps_id);
	/*停车*/
	int updateParkingCar(ParkingSpace ps) throws Exception;
	/*根据用户id查询车位状态*/
	ParkingSpace getPSByUserId(Integer user_id);
	/*根据用户id查询预订信息*/
	Schdule getSCByUserId(Integer user_id);
	/*根据用户id删除订单表信息完成停车操作*/
	void delSCByUserId(Integer user_id);
}
