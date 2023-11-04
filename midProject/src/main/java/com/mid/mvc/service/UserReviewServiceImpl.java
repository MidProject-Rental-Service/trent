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
	
	
	public List<UserReviewVO> getUserReviewList(HashMap map) {
		return userReviewDAO.getUserReviewList(map);
	}

	public void insertUserReview(UserReviewVO vo) {
	 
		userReviewDAO.insertUserReview(vo);
	}
	
}
