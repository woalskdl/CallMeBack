package com.jay.web.service.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jay.web.dao.CustomerDao;
import com.jay.web.entity.ProjectCnt;

@Service
public class CustomerServiceImp implements CustomerService{

	@Autowired
	private CustomerDao customerDao;
	
	@Override
	public ProjectCnt getProjectCnt(String id) {
		
		int newCnt = customerDao.getNewCnt(id);
		int deadlineCnt = customerDao.getDeadlineCnt(id);
		int myCnt = customerDao.getMyCnt(id);
		int totalCnt = customerDao.getTotalCnt();
		int todayCnt = customerDao.getTodayCnt();
		int imgCnt = customerDao.getImgCnt();
		int videoCnt = customerDao.getVideoCnt();
		
		ProjectCnt pCnt = new ProjectCnt(newCnt, deadlineCnt, myCnt, totalCnt, todayCnt, imgCnt, videoCnt); 
		
		return pCnt;
	}
	
}