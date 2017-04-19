package com.parking.service;

import com.parking.entity.Schdule;

public interface SchduleService {
	/*添加订单*/
	int insertSchdule(Schdule schdule) throws Exception;
	/*修改车位状态显示为已预订*/
	int updatePSstatus(Integer ps_id,Integer status) throws Exception;
}
