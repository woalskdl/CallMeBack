package com.jay.web.service.customer;

import com.jay.web.entity.Member;
import com.jay.web.entity.ProjectCnt;

public interface CustomerService {
	
//	- 메인페이지 호출 시 현황 출력
	ProjectCnt getProjectCnt(String id);
	
//	- 로그인
	Member login(Member m);

//	- 중복 확인
	int checkDouble(String input, String field, String userId);

//	- 개인정보 수정
	int updateProfile(Member m);

}
