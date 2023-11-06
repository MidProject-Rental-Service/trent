package com.mid.mvc.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserBoardVO {
	private int 			ub_id;				// 사용자글게시번호
	private String 	ub_head;		// 말머리
	private String 	ub_title;			// 제목
	private String 	ub_content;	// 문의내용
	private String 	ub_answer;	// 답변내용
	private Date 		ub_regdate;	// 게시일자
	private int 			ub_cnt;			// 조회수
	private String 	id;					// 회원아이디
	private String 	name;				// 회원이름

}
