package com.mid.mvc.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class UserReviewVO {

	private int r_id;						// 리뷰번호
	private int r_point;				// 평점
	private String r_content;		// 리뷰내용
	private Date r_regdate;		// 리뷰작성일
	private String r_img;			// 리뷰 사진
	private String r_rimg;			// 리뷰 사진 저장
	private String id;					// 회원아이디
	private String g_id;				// 모델명
	private String g_name;		// 제품명
	private int b_id;						// 주문번호
	private String m_name;		// 제조사명 
	private String p_name;		// 공급사명

}
