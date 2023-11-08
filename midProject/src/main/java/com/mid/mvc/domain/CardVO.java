package com.mid.mvc.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CardVO {
	
	private int 			c_num;
	private String 	c_img1;
	private String 	c_rimg1;
	
	private String 	id;

	
	
	//******************파일 업로드**************************
	MultipartFile cardImg1;
	MultipartFile cardImg2;
	MultipartFile cardImg3;
	
	public MultipartFile getCardImg1() {
	    return cardImg1;
	}

	public void setCardImg1(MultipartFile cardImg1) {
	    this.cardImg1 = cardImg1;
	    // 업로드 파일이 있는 경우
	    if (!cardImg1.isEmpty()) {
	        this.c_img1 = cardImg1.getOriginalFilename();

	        // 실제 저장된 파일명 만들기
	        UUID uuid = UUID.randomUUID();
	        this.c_rimg1 = uuid.toString() + "_" + c_img1;

	        // 실제 파일 저장
	        // 나중에 웹서버 경로를 찾아서 수정
	        File f = new File("C:\\Users\\조대연\\git\\trent\\midProject\\src\\main\\webapp\\resources\\img\\cards\\" + c_rimg1);

	        try {
	        	cardImg1.transferTo(f);
	        } catch (IllegalStateException | IOException e) {
	            e.printStackTrace();
	        }
	    }
	}
	
	/*
	 * public MultipartFile getCardImg2() { return cardImg2; }
	 * 
	 * public void setCardImg2(MultipartFile cardImg2) { this.cardImg2 = cardImg2;
	 * // 업로드 파일이 있는 경우 if (!cardImg2.isEmpty()) { this.c_img2 =
	 * cardImg2.getOriginalFilename();
	 * 
	 * // 실제 저장된 파일명 만들기 UUID uuid = UUID.randomUUID(); this.c_rimg2 =
	 * uuid.toString() + "_" + c_img2;
	 * 
	 * // 실제 파일 저장 // 나중에 웹서버 경로를 찾아서 수정 File f = new File(
	 * "C:\\Users\\조대연\\git\\trent\\midProject\\src\\main\\webapp\\resources\\img\\cards\\"
	 * + c_rimg2);
	 * 
	 * try { cardImg2.transferTo(f); } catch (IllegalStateException | IOException e)
	 * { e.printStackTrace(); } } }
	 * 
	 * public MultipartFile getCardImg3() { return cardImg3; }
	 * 
	 * public void setCardImg3(MultipartFile cardImg3) { this.cardImg3 = cardImg3;
	 * // 업로드 파일이 있는 경우 if (!cardImg1.isEmpty()) { this.c_img3 =
	 * cardImg3.getOriginalFilename();
	 * 
	 * // 실제 저장된 파일명 만들기 UUID uuid = UUID.randomUUID(); this.c_rimg3 =
	 * uuid.toString() + "_" + c_img3;
	 * 
	 * // 실제 파일 저장 // 나중에 웹서버 경로를 찾아서 수정 File f = new File(
	 * "C:\\Users\\조대연\\git\\trent\\midProject\\src\\main\\webapp\\resources\\img\\cards\\"
	 * + c_rimg3);
	 * 
	 * try { cardImg3.transferTo(f); } catch (IllegalStateException | IOException e)
	 * { e.printStackTrace(); } } }
	 * 
	 */
	
	

}
