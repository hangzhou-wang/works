package com.parking.dao;


import java.util.List;

import com.parking.entity.ParkingSpace;
import com.parking.entity.Schdule;

public interface ParkingSpaceDao {
	/*查询空车位数*/
	Long countSpace();
	/*分页显示空车位*/
	List<ParkingSpace> psList(Integer begin, Integer pageSize);
	/*根据id查询车位*/
	ParkingSpace getPSById(Integer ps_id);
	/*停车*/
	void parkingCar(ParkingSpace ps);
	/*根据用户id查询车位状态*/
	List<ParkingSpace> getPSByUserId(Integer user_id);
	/*根据用户id查询预订信息*/
	List<Schdule> getSCByUserId(Integer user_id);
	/*根据用户id删除订单表信息完成停车操作*/
	void delSCByUserId(Integer user_id);
}
