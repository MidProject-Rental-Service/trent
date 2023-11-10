package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserReviewVO;

public interface UserReviewService {

	// 리뷰 목록 
	List<UserReviewVO> getUserReviewList(HashMap map);
	
	// 리뷰 저장
	void saveUserReview(UserReviewVO vo);
	
	// 리뷰 내용 가져오기 
	UserReviewVO getUserReview(UserReviewVO vo);
	
	// 리뷰 삭제
	int deleteUserReview(UserReviewVO vo);
	
	// 리뷰 등록 (구매확정)
	void insertUserReview(UserReviewVO vo);
	
	// 상품페이지 리뷰 목록 
	List<UserReviewVO> reviewGoodsList(String g_id);
	
}
