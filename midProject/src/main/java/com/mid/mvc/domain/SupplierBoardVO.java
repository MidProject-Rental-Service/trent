package com.mid.mvc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SupplierBoardVO {
	private int 	sb_id;
	private String 	sb_head;
	private String 	sb_title;
	private String 	sb_content;
	private String 	sb_answer;
	private Date 	sb_regdate;
	private int 	sb_cnt;
	private String 	id;
	private String 	name;
	private String 	phone;
}
