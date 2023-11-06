package com.mid.mvc.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class UserReviewVO {
	private int r_id;
	private int r_point;
	private String r_content;
	private Date r_regdate;
	private String r_img;
	private String r_rimg;
	private String id;
	private String g_id;
	private String b_id;
}
