package com.parking.service.impl;

import java.util.List;

import com.parking.dao.ReportsDao;
import com.parking.entity.ReportdResult;
import com.parking.entity.Reports;
import com.parking.service.ReportsService;

public class ReportsServiceImpl implements ReportsService {
	private ReportsDao dao; //报表数据接口
	public ReportsDao getDao() {
		return dao;
	}
	public void setDao(ReportsDao dao) {
		this.dao = dao;
	}
	/*添加报表信息*/
	@Override
	public int insertReports(Reports reports) throws Exception {
		int res=0;
		try {
			dao.insertReports(reports);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*获得报表信息*/
	@Override
	public List<ReportdResult> getReportsInfo() {
		return dao.getReportsInfo();
	}

}
