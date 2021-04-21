package com.jay.web.dao;

import com.jay.web.entity.Member;

public interface CustomerDao {

	int getNewCnt(String id);
	int getDeadlineCnt(String id);
	int getMyCnt(String id);
	int getTotalCnt();
	int getTodayCnt();
	int getImgCnt();
	int getVideoCnt();
	
	Member login(Member m);
	
	int checkDouble(String input, String field, String userId);
	int updateProfile(Member m);
	
}
