package com.jay.web.entity;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProjectCnt {
	
	private int newCnt;
	private int deadlineCnt;
	private int myCnt;
	private int totalCnt;
	private int todayCnt;
	private int imgCnt;
	private int videoCnt;
	
}
