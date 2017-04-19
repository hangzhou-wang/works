package com.parking.dao;

import com.parking.entity.Schdule;

public interface SchduleDao {
	/*添加订单*/
	void insertSchdule(Schdule schdule);
	/*修改车位状态显示为已预订*/
	int updatePSstatus(Integer ps_id,Integer status);
}
