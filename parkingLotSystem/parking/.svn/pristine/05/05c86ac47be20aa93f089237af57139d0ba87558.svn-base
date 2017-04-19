package com.parking.service.impl;

import com.parking.dao.SchduleDao;
import com.parking.entity.Schdule;
import com.parking.service.SchduleService;

public class SchduleServiceImpl implements SchduleService {
	private SchduleDao dao;
	public SchduleDao getDao() {
		return dao;
	}
	public void setDao(SchduleDao dao) {
		this.dao = dao;
	}
	/*添加订单*/
	@Override
	public int insertSchdule(Schdule schdule) throws Exception {
		int res=0;
		try {
			dao.insertSchdule(schdule);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*修改车位状态显示为以预定*/
	@Override
	public int updatePSstatus(Integer ps_id, Integer status) throws Exception {
		int res=0;
		try {
			dao.updatePSstatus(ps_id, status);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	
	
}
