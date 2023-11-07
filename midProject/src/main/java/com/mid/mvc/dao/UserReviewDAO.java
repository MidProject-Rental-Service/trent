package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserReviewVO;

public interface UserReviewDAO {
	// 리뷰 목록 
	public List<UserReviewVO> getUserReviewList(HashMap map) ;
	// 리뷰 저장
	public void saveUserReview(UserReviewVO vo);
	// 리뷰 내용 가져오기
	public UserReviewVO getUserReview(UserReviewVO vo);
	// 리뷰 삭제
	public int deleteUserReview(UserReviewVO vo);

}
