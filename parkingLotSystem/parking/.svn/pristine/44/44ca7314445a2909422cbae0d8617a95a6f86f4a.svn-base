package com.parking.service.impl;

import java.util.List;

import com.parking.dao.LostAndFoundDao;
import com.parking.entity.LostAndFound;
import com.parking.service.LostAndFoundService;

public class LostAndFoundServiceImpl implements LostAndFoundService {
	
	private LostAndFoundDao dao;
	public LostAndFoundDao getDao() {
		return dao;
	}
	public void setDao(LostAndFoundDao dao) {
		this.dao = dao;
	}

	/*全部失物*/
	@Override
	public List<LostAndFound> lostList(int begin, int pageSize, Integer status) {
		return dao.lostList(begin, pageSize, status);
	}

	/*失物详情*/
	@Override
	public LostAndFound getLostById(Integer lost_id) {
		List<LostAndFound> lostList=dao.getLostById(lost_id);
		if (lostList!=null&lostList.size()>0) {
			return lostList.get(0);
		}else{
			return null;
		}		
	}

	/*失物找到*/
	@Override
	public int findLost(Integer lost_id) throws Exception {
		int res=0;
		try {
			dao.findLost(lost_id);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	/*失物总数*/
	@Override
	public Long countLost(Integer status) {
		return dao.countLost(status);
	}
	/*寻物启事*/
	@Override
	public int insertLost(LostAndFound lost) throws Exception {
		int res=0;
		try {
			dao.insertLost(lost);
			res=1;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception();
		}
		return res;
	}
	@Override
	public List<LostAndFound> getLostsByUserId(Integer user_id) {
		return dao.getLostsByUserId(user_id);
	}

}
