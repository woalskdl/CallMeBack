package com.jay.web.service.customer;

import com.jay.web.entity.ProjectCnt;

public interface CustomerService {
	
//	- 메인페이지 호출 시 현황 출력
	ProjectCnt getProjectCnt(String id);

}
