                                                                            package com.mid.mvc.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ShoppingCartVO {
	private int sh_id;						// 장바구니번호
	
	
	// goods 테이블
	private String g_id;					// 모델명 
	private String g_name;			// 제품명 *
	private String g_content;		// 제품설명
	
	// category 테이블
	private int c_id;							// 카테고리아이디
	private String c_name;			//	카테고리명 (제품분류)
	
	// maker 테이블
	private int m_id;						// 제조사아이디
	private String m_name;			//	제조사명
	
	// price 테이블
	private int p_price;					// 렌탈비용	*
	private int p_rent;						// 약정기간	*
	private int p_card;					// 카드할인가
	private int p_gift;						// 사은품
	private String s_name;			// 공급사명	*
	
	// user 테이블
	private String id;						// 회원아이디
	
	// 제품 메인 썸네일	*
	private String g_img1;	
	private String g_rimg1;
	
	

	
	

}