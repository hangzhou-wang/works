package com.parking.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.parking.dao.ParkingSpaceDao;
import com.parking.entity.ParkingSpace;
import com.parking.entity.Schdule;

public class ParkingSpaceDaoImpl extends HibernateDaoSupport implements
		ParkingSpaceDao {
	/* 查询空车位数 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public Long countSpace() {
		return getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Long Count = (Long) session.createQuery(
						"select count(*) from ParkingSpace").uniqueResult();
				return Count;
			}
		});
	}

	/* 分页显示空车位 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<ParkingSpace> psList(final Integer begin, final Integer pageSize) {
		return getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "from ParkingSpace ps order by ps.id asc";
				Query query = session.createQuery(hql).setFirstResult(begin)
						.setMaxResults(pageSize);
				return query.list();
			}
		});
	}

	/* 根据id查询车位 */
	@Override
	public ParkingSpace getPSById(Integer ps_id) {
		return getHibernateTemplate().get(ParkingSpace.class, ps_id);
	}

	/* 停车 */
	@Override
	public void parkingCar(ParkingSpace ps) {
		//getHibernateTemplate().update(ps);
		String hql="update ParkingSpace ps set ps.user.id=?,ps.status=2,ps.intime=sysdate where ps.id=?";
		Object[] args={ps.getUser().getId(),ps.getId()};
		getHibernateTemplate().bulkUpdate(hql, args);
	}

	/* 根据用户id查询车位状态 */
	@SuppressWarnings("unchecked")
	@Override
	public List<ParkingSpace> getPSByUserId(Integer user_id) {
		String hql = "from ParkingSpace ps where ps.user.id=?";
		return getHibernateTemplate().find(hql, user_id);
	}

	/* 根据用户id查询预订信息 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Schdule> getSCByUserId(Integer user_id) {
		String hql = "from Schdule s where s.user.id=?";
		return getHibernateTemplate().find(hql, user_id);
	}
	/*根据用户id删除订单表信息完成停车操作*/
	@Override
	public void delSCByUserId(Integer user_id) {
		List<Schdule> scList=getSCByUserId(user_id);
		if (scList!=null&&scList.size()>0) {
			Schdule schdule=scList.get(0);
			getHibernateTemplate().delete(schdule);
		}
	}
}