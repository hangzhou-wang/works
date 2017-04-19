package com.parking.service.impl;

import java.util.List;

import com.parking.dao.CarRecordDao;
import com.parking.entity.CarRecord;
import com.parking.service.CarRecordService;

public class CarRecordServiceImpl implements CarRecordService {
	private CarRecordDao dao;
	public CarRecordDao getDao() {
		return dao;
	}
	public void setDao(CarRecordDao dao) {
		this.dao = dao;
	}
	@Override
	public int insertCarRecord(CarRecord cr) throws Exception {
		int res=0;
		try {
			dao.insertCarRecord(cr);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*恢复车位为空的状态*/
	@Override
	public int updateCSByUserId(Integer user_id) {
		return dao.updateCSByUserId(user_id);
	}
	/*查询用户停车记录*/
	@Override
	public List<CarRecord> getCRListByUserId(int begin,int pageSize,Integer user_id) {
		return dao.getCRListByUserId(begin,pageSize,user_id);
	}
	/*根据用户id查询停车记录总数*/
	@Override
	public Long countUserCR(Integer user_id) {
		return dao.countUserCR(user_id);
	}
	/*删除停车记录*/
	@Override
	public int delUserCR(Integer cr_id) throws Exception {
		int res=0;
		try {
			dao.delUserCR(cr_id);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}

}
