package com.mid.mvc.domain;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

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

	//******************파일 업로드**************************
	MultipartFile file1;
	
	
	public MultipartFile getFile1() {
	    return file1;
	}

	public void setFile1(MultipartFile file1) {
	    this.file1 = file1;
	    // 업로드 파일이 있는 경우
	    if (!file1.isEmpty()) {
	        this.r_img = file1.getOriginalFilename();

	        // 실제 저장된 파일명 만들기
	        UUID uuid = UUID.randomUUID();
	        this.r_rimg = uuid.toString() + "_" + r_img;

	        // 실제 파일 저장
	        // 나중에 웹서버 경로를 찾아서 수정
	        File f = new File("C:\\Users\\ict0330\\git\\trent\\midProject\\src\\main\\webapp\\resources\\img\\products\\" + r_rimg);

	        try {
	            file1.transferTo(f);
	        } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	        }
	    }
	}
	

	
}
