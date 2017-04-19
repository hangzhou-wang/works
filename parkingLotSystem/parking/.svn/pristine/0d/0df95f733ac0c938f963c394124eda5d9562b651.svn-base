package com.parking.service.impl;

import java.util.List;

import com.parking.dao.NoticeDao;
import com.parking.entity.Notice;
import com.parking.service.NoticeService;

public class NoticeServiceImpl implements NoticeService {
	private NoticeDao dao;
	public NoticeDao getDao() {
		return dao;
	}
	public void setDao(NoticeDao dao) {
		this.dao = dao;
	}
	@Override
	public List<Notice> getNotices() {
		return dao.getNotices();
	}
	/*公告详情展示*/
	@Override
	public Notice getNoticeById(Integer notice_id) {
		return dao.getNoticeByNoticeId(notice_id);
	}
	/*发布新公告*/
	@Override
	public int insertNotice(Notice notice) throws Exception {
		int res=0;
		try {
			dao.insertNotice(notice);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*删除公告*/
	@Override
	public int delNotice(Integer notice_id) throws Exception {
		int res=0;
		try {
			dao.delNotice(notice_id);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*修改公告*/
	@Override
	public int updateNotice(Notice notice) throws Exception {
		int res=0;
		try {
			dao.updateNotice(notice);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}

}
