package com.parking.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.parking.entity.ReportdResult;
import com.parking.service.ReportsService;

@SuppressWarnings("serial")
public class RepportsAction extends ActionSupport {
	private ReportsService reportsService;//报表Service
	private List<ReportdResult> reportdResults; //报表信息列表
	
	/**
	 * 获得
	 * @return
	 */
	public String getRPInfo(){
		reportdResults=reportsService.getReportsInfo();
		return "success";
	}
	
	

	public ReportsService getReportsService() {
		return reportsService;
	}
	public void setReportsService(ReportsService reportsService) {
		this.reportsService = reportsService;
	}
	public List<ReportdResult> getReportdResults() {
		return reportdResults;
	}
	public void setReportdResults(List<ReportdResult> reportdResults) {
		this.reportdResults = reportdResults;
	}
}
