package com.parking.service;

import java.util.List;

import com.parking.entity.Notice;

public interface NoticeService {
	List<Notice> getNotices();

	Notice getNoticeById(Integer notice_id);
	
	int insertNotice(Notice notice) throws Exception;
	
	int delNotice(Integer notice_id) throws Exception;
	
	int updateNotice(Notice notice) throws Exception;
}
