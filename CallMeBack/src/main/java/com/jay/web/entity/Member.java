package com.jay.web.entity;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Member {
	
	@NonNull private String id;
	@NonNull private String pwd;
	private String name;
	private Date regdate;
	private String email;
}
