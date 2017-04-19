package com.parking.dao;

import java.util.List;

import com.parking.entity.CarRecord;

public interface CarRecordDao {
	/*根据id获得记录*/
	CarRecord getCRById(Integer cr_id);
	/*添加记录*/
	void insertCarRecord(CarRecord cr);
	/*恢复车位为空的状态*/
	int updateCSByUserId(Integer user_id);
	/*查询用户停车记录*/
	List<CarRecord> getCRListByUserId(int begin,int pageSize,Integer user_id);
	/*根据用户id查询停车记录总数*/
	Long countUserCR(Integer user_id);
	/*删除停车记录*/
	void delUserCR(Integer cr_id);
}
