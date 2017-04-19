package com.parking.service;

import java.util.List;

import com.parking.entity.LostAndFound;

public interface LostAndFoundService {
	
	List<LostAndFound> lostList(int begin,int pageSize,Integer status);
	
	LostAndFound getLostById(Integer lost_id);
	
	int findLost(Integer lost_id) throws Exception;
	
	Long countLost(Integer status);
	
	int insertLost(LostAndFound lost) throws Exception;
	
	List<LostAndFound> getLostsByUserId(Integer user_id);
}
