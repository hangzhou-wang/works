package com.parking.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.parking.dao.LostAndFoundDao;
import com.parking.entity.LostAndFound;

public class LostAndFoundDaoImpl extends HibernateDaoSupport implements LostAndFoundDao {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	/*失物列表*/
	public List<LostAndFound> lostList(final int begin, final int pageSize,final Integer status) {
		return getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "from LostAndFound l where l.status=:status order by l.id desc";
				Query query = session.createQuery(hql).setFirstResult(begin)
						.setMaxResults(pageSize).setInteger("status", status);
				return query.list();
			}
		});
	}

	@SuppressWarnings("unchecked")
	@Override
	/*根据id查找到失物*/
	public List<LostAndFound> getLostById(Integer lost_id) {
		String hql="from LostAndFound l where l.id=?";
		return getHibernateTemplate().find(hql, lost_id);
	}

	/*失物找回*/
	@Override
	public void findLost(Integer lost_id) {
		String hql="update LostAndFound l set l.status=1 where l.id=?";
		getHibernateTemplate().bulkUpdate(hql, lost_id);
	}

	/*查询总数*/
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public Long countLost(final Integer status) {
		return getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Long lostCount=(Long) session.createQuery("select count(*) from LostAndFound l where l.status=:status").setInteger("status", status).uniqueResult();
				return lostCount;
			}
		});
	}

	/*寻物启事*/
	@Override
	public void insertLost(LostAndFound lost) {
		getHibernateTemplate().save(lost);
	}
	/*查询用户寻物启事*/
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<LostAndFound> getLostsByUserId(final Integer user_id) {
		return getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "from LostAndFound l where l.status=0 and l.user.id=:id order by l.id desc";
				Query query = session.createQuery(hql).setInteger("id", user_id);
				return query.list();
			}
		});
	}

}
