package com.parking.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.parking.dao.SchduleDao;
import com.parking.entity.Schdule;

public class SchduleDaoImpl extends HibernateDaoSupport implements SchduleDao {
	/*添加订单*/
	@Override
	public void insertSchdule(Schdule schdule) {
		getHibernateTemplate().save(schdule);
	}
	/*修改车位状态显示为已预订*/
	@Override
	public int updatePSstatus(Integer ps_id,Integer status) {
		String hql="update ParkingSpace ps set ps.status=? where ps.id=?";
		Object[] args={status,ps_id};
		return getHibernateTemplate().bulkUpdate(hql, args);
	}

}
