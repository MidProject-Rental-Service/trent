package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserReviewVO;

public interface UserReviewService {


	List<UserReviewVO> getUserReviewList(HashMap map);

	void saveUserReview(UserReviewVO vo);

	void deleteUserReview(UserReviewVO vo);

	UserReviewVO getUserReview(UserReviewVO vo);
	
}
