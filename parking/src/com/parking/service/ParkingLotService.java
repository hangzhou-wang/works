package com.parking.service;

import java.util.List;

import com.parking.entity.ParkingLot;
import com.parking.entity.ParkingSpace;

public interface ParkingLotService {
	/*查询车库数量*/
	Long countPL();
	/*查询所有车库*/
	List<ParkingLot> getParkingLots(Integer begin, Integer pageSize);
	/*添加车库*/
	int insertParkingLot(ParkingLot parkingLot) throws Exception;
	/*根据车库id查询车库信息*/
	ParkingLot getPLById(Integer pl_id);
	/*根据车库id查询该车库已经停了多少车*/
	Long getPSCountByPLId(Integer pl_id);
	/*为车库添加车位*/
	int insertPSForPL(ParkingSpace PS) throws Exception;
	/*查询该车库是否有被预订或者被用的车位*/
	Long readyToDelPL(Integer pl_id);
	/*删除车库中的车位*/
	int delPSinPL(Integer pl_id);
	/*删除车库*/
	int delParkingLot(Integer pl_id) throws Exception;
}
