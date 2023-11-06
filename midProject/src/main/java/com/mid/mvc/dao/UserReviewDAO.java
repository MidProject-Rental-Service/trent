package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserReviewVO;

public interface UserReviewDAO {
	public void saveUserReview(UserReviewVO vo);
	public void deleteUserReview(UserReviewVO vo);
	public List<UserReviewVO> getUserReviewList(HashMap map) ;
	public UserReviewVO getUserReview(UserReviewVO vo);

}
