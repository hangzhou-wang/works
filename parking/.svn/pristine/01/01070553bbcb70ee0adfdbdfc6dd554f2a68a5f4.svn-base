package com.parking.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.parking.entity.LostAndFound;
import com.parking.entity.Users;
import com.parking.service.LostAndFoundService;

@SuppressWarnings("serial")
public class LostAndFoundAction extends ActionSupport {
	private LostAndFound lostAndFound;
	private List<LostAndFound> lostAndFounds;
	private LostAndFoundService lostAndFoundService;
	private Integer lost_id;
	//分页
	private Integer totalPage;
	private Integer currentPage;
	
	HttpServletRequest request=ServletActionContext.getRequest();
	HttpSession session=ServletActionContext.getRequest().getSession();
	
	/**
	 * 得到所有失物列表
	 * @return
	 */
	public String getLosts() {
		int pageSize = 10;
		Long count = lostAndFoundService.countLost(0);
		if (count <= 0) {
			totalPage = 1;
		} else {
			totalPage = (int) ((count % pageSize == 0) ? (count / pageSize)
					: (count / pageSize + 1));
		}
		if (currentPage == null) {
			this.setCurrentPage(1);
		}
		int begin = (currentPage - 1) * pageSize;
		lostAndFounds = lostAndFoundService.lostList(begin, pageSize, 0);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		return "success";
	}
	
	/**
	 * 失物详情
	 * @return
	 */
	public String getLostById(){
		lostAndFound=lostAndFoundService.getLostById(lost_id);
		return "success";
	}
	
	/**
	 * 发布寻物启事
	 * @return
	 * @throws Exception
	 */
	public String addLost() throws Exception{
		Users userSession=(Users) session.getAttribute("user");
		lostAndFound.setUser(userSession);
		int resAdd=lostAndFoundService.insertLost(lostAndFound);
		if (resAdd>0) {
			return "success";
		}else{
			return "error";
		}
	}
	
	/**
	 * 查询用户寻物启事
	 * @return
	 */
	public String getLostByUserId(){
		Users userSession=(Users) session.getAttribute("user");
		lostAndFounds=lostAndFoundService.getLostsByUserId(userSession.getId());
		return "success";
	}
	/**
	 * 失物找到
	 * @return
	 * @throws Exception
	 */
	public String hadFoundLost() throws Exception{
		int findRes=lostAndFoundService.findLost(lost_id);
		if (findRes>0) {
			return "success";
		}else{
			return "error";
		}
	}
	
	
	
	public LostAndFound getLostAndFound() {
		return lostAndFound;
	}
	public void setLostAndFound(LostAndFound lostAndFound) {
		this.lostAndFound = lostAndFound;
	}
	public LostAndFoundService getLostAndFoundService() {
		return lostAndFoundService;
	}
	public void setLostAndFoundService(LostAndFoundService lostAndFoundService) {
		this.lostAndFoundService = lostAndFoundService;
	}
	public Integer getLost_id() {
		return lost_id;
	}
	public void setLost_id(Integer lost_id) {
		this.lost_id = lost_id;
	}
	public List<LostAndFound> getLostAndFounds() {
		return lostAndFounds;
	}
	public void setLostAndFounds(List<LostAndFound> lostAndFounds) {
		this.lostAndFounds = lostAndFounds;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
}
