package com.parking.service;

import java.util.List;

import com.parking.entity.CarRecord;

public interface CarRecordService {
	/*添加记录*/
	int insertCarRecord(CarRecord cr) throws Exception;
	/*恢复车位为空的状态*/
	int updateCSByUserId(Integer user_id);
	/*查询用户停车记录*/
	List<CarRecord> getCRListByUserId(int begin,int pageSize,Integer user_id);
	/*根据用户id查询停车记录总数*/
	Long countUserCR(Integer user_id);
	/*删除停车记录*/
	int delUserCR(Integer cr_id) throws Exception;
}
