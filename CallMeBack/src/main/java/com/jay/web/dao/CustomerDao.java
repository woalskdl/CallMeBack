package com.jay.web.dao;

public interface CustomerDao {

	int getNewCnt(String id);
	int getDeadlineCnt(String id);
	int getMyCnt(String id);
	int getTotalCnt();
	int getTodayCnt();
	int getImgCnt();
	int getVideoCnt();
	
}
