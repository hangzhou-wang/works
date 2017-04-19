package com.parking.dao;

import java.util.List;

import com.parking.entity.LostAndFound;

public interface LostAndFoundDao {
	
	List<LostAndFound> lostList(int begin,int pageSize,Integer status);
	
	List<LostAndFound> getLostById(Integer lost_id);
	
	void findLost(Integer lost_id);
	
	Long countLost(Integer status);
	
	void insertLost(LostAndFound lost);
	
	List<LostAndFound> getLostsByUserId(Integer user_id);
	
}
