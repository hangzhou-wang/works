package com.parking.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.parking.dao.ReportsDao;
import com.parking.entity.ReportdResult;
import com.parking.entity.Reports;

public class ReportsDaoImpl extends HibernateDaoSupport implements ReportsDao {
	/*添加新的报表信息*/
	@Override
	public void insertReports(Reports reports) {
		getHibernateTemplate().save(reports);
	}
	/*获得报表中的信息*/
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<ReportdResult> getReportsInfo() {
		return getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				List<ReportdResult> reportdResults=new ArrayList<ReportdResult>();//获取查询出的信息字段
				List<ReportdResult> reportdResults1=new ArrayList<ReportdResult>();//用作返回值
				ReportdResult reportdResult=null;
				String hql="select sum(r.money),to_char(r.time,'MM') from Reports r group by to_char(r.time,'MM') order by to_char(r.time,'MM') asc";
				List<Object[]> reportsList= session.createQuery(hql).list();
				System.out.println(reportsList.size());
				for (Object[] object : reportsList) {
					reportdResult=new ReportdResult();
					reportdResult.setMoney((Double) object[0]);
					reportdResult.setQuarter((String)object[1]);
					reportdResults.add(reportdResult);
				}
				String[] strArray={"01","02","03","04","05","06","07","08","09","10","11","12"};
				for (int i = 0; i < strArray.length; i++) {
					boolean flag=true;
					String str=strArray[i];//01
					System.out.println("--------------------------------"+str);
					for (int j = 0; j < reportdResults.size(); j++) {
						String strTwo=reportdResults.get(j).getQuarter();//01
						System.out.println("--------------------------------"+strTwo);
						if (str.equals(strTwo)) {//如果str等于strTwo将reportdResults.get(j)添加进reportdResults1
							flag=false;
							reportdResults1.add(reportdResults.get(j));
							break;
						} 
					}
					if(flag){//如果reportdResults.get(j)不等于strArray循环中的内容，就将new一个新对象添加进reportdResults1
						reportdResult=new ReportdResult();
						reportdResult.setQuarter(str);
						reportdResult.setMoney(0.00);
						reportdResults1.add(reportdResult);
					}
				}
				return reportdResults1;
			}
		});
		
	}

}
