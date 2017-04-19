package com.parking.dao;

import java.util.List;

import com.parking.entity.ParkingLot;
import com.parking.entity.ParkingSpace;

public interface ParkingLotDao {
	/*查询车库数量*/
	Long countPL();
	/*查询所有车库*/
	List<ParkingLot> getParkingLots(Integer begin, Integer pageSize);
	/*添加车库*/
	void insertParkingLot(ParkingLot parkingLot);
	/*根据车库id查询车库信息*/
	ParkingLot getPLById(Integer pl_id);
	/*根据车库id查询该车库已经开拓了多少车位*/
	Long getPSCountByPLId(Integer pl_id);
	/*为车库添加车位*/
	void insertPSForPL(ParkingSpace PS);
	/*查询该车库是否有被预订或者被用的车位*/
	Long readyToDelPL(Integer pl_id);
	/*删除车库中的车位*/
	int delPSinPL(Integer pl_id);
	/*删除车库*/
	void delParkingLot(Integer pl_id);
}
