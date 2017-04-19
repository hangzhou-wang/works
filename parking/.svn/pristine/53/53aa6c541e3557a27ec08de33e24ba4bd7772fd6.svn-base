package com.parking.service.impl;

import java.util.List;
import com.parking.dao.ParkingSpaceDao;
import com.parking.entity.ParkingSpace;
import com.parking.entity.Schdule;
import com.parking.service.ParkingSpaceService;

public class ParkingSpaceServiceImpl implements ParkingSpaceService {
	private ParkingSpaceDao dao;

	public ParkingSpaceDao getDao() {
		return dao;
	}

	public void setDao(ParkingSpaceDao dao) {
		this.dao = dao;
	}

	/* 获取空车位 */
	/*
	 * @Override public Long countSpace(Integer status) { return
	 * dao.countSpace(status); }
	 */
	@Override
	public Long countSpace() {
		return dao.countSpace();
	}

	/* 车位列表 */
	@Override
	public List<ParkingSpace> psList(Integer begin, Integer pageSize) {
		return dao.psList(begin, pageSize);
	}

	/* 根据id插叙车位 */
	@Override
	public ParkingSpace getPSById(Integer ps_id) {
		return dao.getPSById(ps_id);
	}

	/* 停车 */
	@Override
	public int updateParkingCar(ParkingSpace ps) throws Exception {
		int res = 0;
		try {
			dao.parkingCar(ps);
			res = 1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}

	/* 根据用户id获得车位状态 */
	@Override
	public ParkingSpace getPSByUserId(Integer user_id) {
		List<ParkingSpace> psList = dao.getPSByUserId(user_id);
		if (psList.size() > 0) {
			return psList.get(0);
		} else {
			return null;
		}
	}
	
	@Override
	public Schdule getSCByUserId(Integer user_id) {
		List<Schdule> scsList = dao.getSCByUserId(user_id);
		if (scsList.size() > 0) {
			return scsList.get(0);
		} else {
			return null;
		}
	}
	/*根据用户id删除订单表信息完成停车操作*/
	@Override
	public void delSCByUserId(Integer user_id) {
		dao.delSCByUserId(user_id);
	}

}
