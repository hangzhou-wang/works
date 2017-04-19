package com.parking.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.parking.entity.Notice;
import com.parking.service.NoticeService;

@SuppressWarnings("serial")
public class NoticeAction extends ActionSupport {
	private List<Notice> noticeList;
	private NoticeService noticeService;
	private Notice notice;
	private Integer notice_id;
	
	/**
	 * 查询所有公告列表
	 * @return
	 */
	public String getAllNotices(){
		noticeList=noticeService.getNotices();
		return "success";
	}
	
	/**
	 * 公告详情
	 * @return
	 */
	public String getNoticeById(){
		notice=noticeService.getNoticeById(notice_id);
		return "success";
	}
	/**
	 * 发布新公告
	 * @return
	 * @throws Exception
	 */
	public String addNotice() throws Exception{
		int insertRes=noticeService.insertNotice(notice);
		if (insertRes>0) {
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * 删除公告
	 * @return
	 * @throws Exception
	 */
	public String delNotice() throws Exception{
		int delRes=noticeService.delNotice(notice_id);
		if (delRes>0) {
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * 修改公告
	 * @return
	 * @throws Exception
	 */
	public String updateNotice() throws Exception{
		int updateRes=noticeService.updateNotice(notice);
		if (updateRes>0) {
			return "success";
		}else{
			return "error";
		}
	}

	
	
	public NoticeService getNoticeService() {
		return noticeService;
	}
	public void setNoticeService(NoticeService noticeService) {
		this.noticeService = noticeService;
	}
	public List<Notice> getNoticeList() {
		return noticeList;
	}
	public void setNoticeList(List<Notice> noticeList) {
		this.noticeList = noticeList;
	}
	public Notice getNotice() {
		return notice;
	}
	public void setNotice(Notice notice) {
		this.notice = notice;
	}
	public Integer getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(Integer notice_id) {
		this.notice_id = notice_id;
	}
}
