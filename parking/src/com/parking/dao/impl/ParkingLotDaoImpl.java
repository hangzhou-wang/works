package com.parking.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.parking.dao.ParkingLotDao;
import com.parking.entity.ParkingLot;
import com.parking.entity.ParkingSpace;

public class ParkingLotDaoImpl extends HibernateDaoSupport implements
		ParkingLotDao {
	/* 查询所有车库 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<ParkingLot> getParkingLots(final Integer begin,
			final Integer pageSize) {
		return getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "from ParkingLot pl order by pl.id asc";
				Query query = session.createQuery(hql).setFirstResult(begin)
						.setMaxResults(pageSize);
				return query.list();
			}
		});
	}

	/* 新增车库 */
	@Override
	public void insertParkingLot(ParkingLot parkingLot) {
		getHibernateTemplate().save(parkingLot);
	}

	/* 查询车库 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public Long countPL() {
		return getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Long Count = (Long) session.createQuery(
						"select count(*) from ParkingLot").uniqueResult();
				return Count;
			}
		});
	}

	/* 根据车库id查询车库信息 */
	@Override
	public ParkingLot getPLById(Integer pl_id) {
		return getHibernateTemplate().get(ParkingLot.class, pl_id);
	}

	/* 根据车库id查询该车库已经停了多少车 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public Long getPSCountByPLId(final Integer pl_id) {
		return getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session
						.createQuery(
								"select count(*) from ParkingSpace ps where ps.parkinglot.id=:pl_id")
						.setInteger("pl_id", pl_id);
				Long result = (Long) query.uniqueResult();
				return result;
			}
		});
	}
	/*为车库添加车位*/
	@Override
	public void insertPSForPL(ParkingSpace PS) {
		getHibernateTemplate().save(PS);
	}
	/*查询该车库是否有被预订或者被用的车位*/
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public Long readyToDelPL(final Integer pl_id) {
		return getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session
						.createQuery(
								"select count(*) from ParkingSpace ps where ps.parkinglot.id=:pl_id and ps.status!=0")
						.setInteger("pl_id", pl_id);
				Long result = (Long) query.uniqueResult();
				return result;
			}
		});
	}
	/*删除车库*/
	@Override
	public void delParkingLot(Integer pl_id) {
		getHibernateTemplate().delete(getPLById(pl_id));
	}
	/*删除车库中的车位*/
	@Override
	public int delPSinPL(Integer pl_id) {
		String hql="delete ParkingSpace ps where ps.parkinglot.id=?";
		return getHibernateTemplate().bulkUpdate(hql,pl_id);
	}

}
