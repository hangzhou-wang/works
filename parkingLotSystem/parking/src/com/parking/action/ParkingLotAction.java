package com.parking.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.parking.entity.ActionResult;
import com.parking.entity.ParkingLot;
import com.parking.entity.ParkingSpace;
import com.parking.service.ParkingLotService;

@SuppressWarnings("serial")
public class ParkingLotAction extends ActionSupport {
	private ParkingLotService parkingLotService;//车库Service
	private List<ParkingLot> parkingLots;
	private ParkingLot parkingLot;//车库
	private ParkingSpace parkingSpace;//车位
	private ActionResult result;
	/**分页 */
	private Integer totalPage;// 总页数
	private Integer currentPage;// 当前页
	/**统计*/
	private Long psCount; //已停车的车位数
	private Integer pl_id; //车库id
	
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session=ServletActionContext.getRequest().getSession();
	
	/**
	 * 查询所有车库
	 * @return
	 */
	public String getPLs(){
		int pageSize = 6;
		Long count = parkingLotService.countPL();
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
		parkingLots = parkingLotService.getParkingLots(begin, pageSize);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("currentPage", currentPage);
		return "success";
	}
	/**
	 * 新增车库
	 * @return
	 * @throws Exception
	 */
	public String addPL() throws Exception{
		parkingLotService.insertParkingLot(parkingLot);
		return "success";
	}
	/**
	 * 根据id获得车库信息
	 * @return
	 */
	public String getPLInfoById(){
		parkingLot=parkingLotService.getPLById(pl_id);
		psCount=parkingLotService.getPSCountByPLId(pl_id);
		return "success";
	}
	/**
	 * 添加车位
	 * @return
	 * @throws Exception
	 */
	public String addPSforPL() throws Exception{
		result=new ActionResult();
		int addRes=parkingLotService.insertPSForPL(parkingSpace);
		if (addRes>0) {
			result.setCode(0);
			result.setMsg("新增车位成功");
			return "success";
		}else{
			result.setCode(1);
			result.setMsg("新增车位失败");
			return "success";
		}
	}
	/**
	 * 删除
	 * @return
	 * @throws Exception 
	 */
	public String delPL() throws Exception{
		result=new ActionResult();
		Long readyDelRes=parkingLotService.readyToDelPL(pl_id);
		System.out.println("----------------------------"+readyDelRes);
		if (readyDelRes<=0) {
			int delPSinPLRes=parkingLotService.delPSinPL(pl_id);
			if (delPSinPLRes>0) {
				int delPLRes=parkingLotService.delParkingLot(pl_id);
				if (delPLRes>0) {
					result.setCode(0);
					result.setMsg("删除成功");
					return "success";
				}else{
					result.setCode(1);
					result.setMsg("删除失败");
					return "success";
				}
			}else{
				result.setCode(2);
				result.setMsg("删除车库车位失败");
				return "success";
			}
		}else{
			result.setCode(3);
			result.setMsg("当前车库有车位正在使用中，不能删除");
			return "success";
		}
	}
	
	
	
	public ParkingLotService getParkingLotService() {
		return parkingLotService;
	}
	public void setParkingLotService(ParkingLotService parkingLotService) {
		this.parkingLotService = parkingLotService;
	}
	public ParkingLot getParkingLot() {
		return parkingLot;
	}
	public void setParkingLot(ParkingLot parkingLot) {
		this.parkingLot = parkingLot;
	}
	public List<ParkingLot> getParkingLots() {
		return parkingLots;
	}
	public void setParkingLots(List<ParkingLot> parkingLots) {
		this.parkingLots = parkingLots;
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
	public Long getPsCount() {
		return psCount;
	}
	public void setPsCount(Long psCount) {
		this.psCount = psCount;
	}
	public Integer getPl_id() {
		return pl_id;
	}
	public void setPl_id(Integer pl_id) {
		this.pl_id = pl_id;
	}
	public ParkingSpace getParkingSpace() {
		return parkingSpace;
	}
	public void setParkingSpace(ParkingSpace parkingSpace) {
		this.parkingSpace = parkingSpace;
	}
	public ActionResult getResult() {
		return result;
	}
	public void setResult(ActionResult result) {
		this.result = result;
	}
}
