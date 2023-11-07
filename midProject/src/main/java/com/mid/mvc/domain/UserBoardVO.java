package com.mid.mvc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserBoardVO {
	private int 	ub_id;
	private String 	ub_head;
	private String 	ub_title;
	private String 	ub_content;
	private String 	ub_answer;
	private Date 	ub_regdate;
	private int 	ub_cnt;
	private String 	id;
	private String 	name;
	private String  phone;
	
}
