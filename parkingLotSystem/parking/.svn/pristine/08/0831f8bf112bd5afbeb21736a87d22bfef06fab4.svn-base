package com.parking.dao.impl;

import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.parking.dao.NoticeDao;
import com.parking.entity.Notice;

public class NoticeDaoImpl extends HibernateDaoSupport implements NoticeDao {

	/* 查询公告列表 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Notice> getNotices() {
		return getHibernateTemplate().find("from Notice n order by n.id desc");
	}

	/*添加公告*/
	@Override
	public void insertNotice(Notice notice) {
		getHibernateTemplate().save(notice);
	}
	
	/*删除公告*/
	@Override
	public void delNotice(Integer notice_id) {
		getHibernateTemplate().delete(getNoticeByNoticeId(notice_id));
	}

	/*修改公告*/
	@Override
	public void updateNotice(Notice notice) {
		getHibernateTemplate().update(notice);
	}

	/*得到notice*/
	@Override
	public Notice getNoticeByNoticeId(Integer id) {
		return getHibernateTemplate().get(Notice.class, id);
	}

}
