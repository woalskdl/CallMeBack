package com.jay.web.service.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.jay.web.service.CustomerService;
import com.jay.web.service.dto.ProjectCnt;

@Service
public class PcommentDAO implements CustomerService{
	
	@Autowired
	private JdbcTemplate template;

	// 금일 프로젝트 집계
	@Override
	public ProjectCnt getProjectCnt() {
		
		String sql = "SELECT COUNT(TITLE) FROM PCOMMENT WHERE REGDATE = 'SYSDATE' OR 'SYSDATE - 1'";
		
		return (ProjectCnt) template.query(sql, new BeanPropertyRowMapper(ProjectCnt.class));
	}

}
