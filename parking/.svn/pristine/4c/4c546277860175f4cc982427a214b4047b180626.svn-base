package com.parking.service.impl;

import java.util.List;

import com.parking.dao.ParkingLotDao;
import com.parking.entity.ParkingLot;
import com.parking.entity.ParkingSpace;
import com.parking.service.ParkingLotService;

public class ParkingLotServiceImpl implements ParkingLotService {
	private ParkingLotDao dao;//parkingLot 数据访问接口
	public ParkingLotDao getDao() {
		return dao;
	}
	public void setDao(ParkingLotDao dao) {
		this.dao = dao;
	}
	/*分页查询车库*/
	@Override
	public List<ParkingLot> getParkingLots(Integer begin, Integer pageSize) {
		return dao.getParkingLots(begin, pageSize);
	}
	/*新增车库*/
	@Override
	public int insertParkingLot(ParkingLot parkingLot) throws Exception {
		int res = 0;
		try {
			dao.insertParkingLot(parkingLot);
			res = 1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*查询车库数量*/
	@Override
	public Long countPL() {
		return dao.countPL();
	}
	/*根据车库id查询车库信息*/
	@Override
	public ParkingLot getPLById(Integer pl_id) {
		return dao.getPLById(pl_id);
	}
	/*根据车库id查询该车库已经停了多少车*/
	@Override
	public Long getPSCountByPLId(Integer pl_id) {
		return dao.getPSCountByPLId(pl_id);
	}
	/*为车库添加车位*/
	@Override
	public int insertPSForPL(ParkingSpace PS) throws Exception {
		int res = 0;
		try {
			dao.insertPSForPL(PS);
			res = 1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*查询该车库是否有被预订或者被用的车位*/
	@Override
	public Long readyToDelPL(Integer pl_id) {
		return dao.readyToDelPL(pl_id);
	}
	@Override
	public int delParkingLot(Integer pl_id) throws Exception {
		int res = 0;
		try {
			dao.delParkingLot(pl_id);
			res = 1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*删除车库中的车位*/
	@Override
	public int delPSinPL(Integer pl_id) {
		return dao.delPSinPL(pl_id);
	}
}
