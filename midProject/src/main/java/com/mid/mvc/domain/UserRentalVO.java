package com.mid.mvc.domain;

import java.util.Date;

import lombok.Data;
 
@Data
public class UserRentalVO {
	private String b_id;				// 주문번호
	private Date b_signdate;		// 렌탈신청일
	private Date b_startdate;		// 렌탈시작일
	private Date b_enddate;		// 렌탈 종료일
	private int b_stat;					// 진행상태
	private int b_rent;					// 약정기간
	private int b_price;				// 렌탈비용
	private int b_card;				// 카드할인가
	private int b_gift;					// 사은품
	private String p_name;		// 공급사명
	private String id;					// 회원아이디
	private String g_id;				// 모델명
	private String g_name;		// 제품명
	private String g_img1;			// 제품메인썸네일
}
