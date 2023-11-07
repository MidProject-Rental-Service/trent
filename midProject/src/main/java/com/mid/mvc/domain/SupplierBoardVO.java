package com.mid.mvc.domain;

import lombok.Data;

@Data
public class SupplierBoardVO {
	private int 			sb_id;			//공급사 문의글 게시번호
	private String 	sb_head;		//말머리
	private String 	sb_title;		//제목
	private String 	sb_content;	//문의내용
	private String 	sb_answer;	//답변내용
	private String 	sb_regdate;	//게시일자
	private int 			sb_cnt;			//조회수
	private String 	id;				//공급사아이디
}
