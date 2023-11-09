package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.UserReviewDAO;
import com.mid.mvc.domain.UserReviewVO;
 
@Service
public class UserReviewServiceImpl implements UserReviewService{

	@Autowired
	private UserReviewDAO userReviewDAO;
	
	// 리뷰 목록 
	public List<UserReviewVO> getUserReviewList(HashMap map) {
		return userReviewDAO.getUserReviewList(map);
	}
	// 리뷰 저장
	public void saveUserReview(UserReviewVO vo) {
		userReviewDAO.saveUserReview(vo);
	}

	// 리뷰 내용 가져오기 
	public UserReviewVO getUserReview(UserReviewVO vo) {
		return	userReviewDAO.getUserReview(vo);
		
	}

	// 리뷰 삭제
	public int deleteUserReview(UserReviewVO vo) {
		return	userReviewDAO.deleteUserReview(vo);
		
	}
	// 리뷰 등록 (구매확정)
	public void insertUserReview(UserReviewVO vo) {
			userReviewDAO.insertUserReview(vo);
	}
	
}
