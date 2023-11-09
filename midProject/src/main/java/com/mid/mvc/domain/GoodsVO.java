package com.mid.mvc.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class GoodsVO {
	private String g_id;					// 모델명
	private String g_name;			// 제품명
	private String g_content;		// 제품설명
	private int c_id;							// 카테고리아이디
	private String c_name;			//	카테고리명 (제품분류)
	private int m_id;						// 제조사아이디
	private String m_name;			//	제조사명
	private int p_price;					// 렌탈비용
	private String s_name;			// 공급사명
	
	private String g_img1;
	private String g_rimg1;
	private String g_img2;
	private String g_rimg2;
	private String g_img3;
	private String g_rimg3;
	private String g_img4;
	private String g_rimg4;
	
	
	//******************파일 업로드**************************
	MultipartFile file1;
	MultipartFile file2;
	MultipartFile file3;
	MultipartFile file4;
	
	public MultipartFile getFile1() {
	    return file1;
	}

	public void setFile1(MultipartFile file1) {
	    this.file1 = file1;
	    // 업로드 파일이 있는 경우
	    if (!file1.isEmpty()) {
	        this.g_img1 = file1.getOriginalFilename();

	        // 실제 저장된 파일명 만들기
	        UUID uuid = UUID.randomUUID();
	        this.g_rimg1 = uuid.toString() + "_" + g_img1;

	        // 실제 파일 저장
	        // 나중에 웹서버 경로를 찾아서 수정
	        File f = new File("C:\\Users\\ict0307\\git\\trent\\midProject\\src\\main\\webapp\\resources\\img\\products\\" + g_rimg1);

	        try {
	            file1.transferTo(f);
	        } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	        }
	    }
	}
	
	public MultipartFile getFile2() {
	    return file2;
	}

	public void setFile2(MultipartFile file2) {
	    this.file2 = file2;
	    // 업로드 파일이 있는 경우
	    if (!file2.isEmpty()) {
	        this.g_img2 = file2.getOriginalFilename();

	        // 실제 저장된 파일명 만들기
	        UUID uuid = UUID.randomUUID();
	        this.g_rimg2 = uuid.toString() + "_" + g_img2;

	        // 실제 파일 저장
	        // 나중에 웹서버 경로를 찾아서 수정
	        File f = new File("C:\\Users\\ict0307\\git\\trent\\midProject\\src\\main\\webapp\\resources\\img\\products\\" + g_rimg2);

	        try {
	            file2.transferTo(f);
	        } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	        }
	    }
	}

	public MultipartFile getFile3() {
	    return file3;
	}

	public void setFile3(MultipartFile file3) {
	    this.file3 = file3;
	    // 업로드 파일이 있는 경우
	    if (!file3.isEmpty()) {
	        this.g_img3 = file3.getOriginalFilename();

	        // 실제 저장된 파일명 만들기
	        UUID uuid = UUID.randomUUID();
	        this.g_rimg3 = uuid.toString() + "_" + g_img3;

	        // 실제 파일 저장
	        // 나중에 웹서버 경로를 찾아서 수정
	        File f = new File("C:\\Users\\ict0307\\git\\trent\\midProject\\src\\main\\webapp\\resources\\img\\products\\" + g_rimg3);

	        try {
	            file3.transferTo(f);
	        } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	        }
	    }
	}
	
	public void setFile4(MultipartFile file4) {
	    this.file4 = file4;
	    // 업로드 파일이 있는 경우
	    if (!file4.isEmpty()) {
	        this.g_img4 = file4.getOriginalFilename();

	        // 실제 저장된 파일명 만들기
	        UUID uuid = UUID.randomUUID();
	        this.g_rimg4 = uuid.toString() + "_" + g_img4;

	        // 실제 파일 저장
	        // 나중에 웹서버 경로를 찾아서 수정
	        File f = new File("C:\\Users\\ict0307\\git\\trent\\midProject\\src\\main\\webapp\\resources\\img\\products\\" + g_rimg4);

	        try {
	            file4.transferTo(f);
	        } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	        }
	    }
	}

}