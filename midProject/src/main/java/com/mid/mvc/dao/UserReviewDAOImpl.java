package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.UserReviewVO;

@Repository
public class UserReviewDAOImpl implements UserReviewDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;	
	
	public void insertUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession insertUserReview() 호출");
		System.out.println("=>" + vo.toString());
		int result = sqlSession.insert("UserReviewDAO.insertUserReview", vo); 
		System.out.println("입력결과 : " + result);
	}
	public List<UserReviewVO> getUserReviewList(HashMap map) {
		System.out.println("===> sqlSession getUserReviewList() 호출");
		return sqlSession.selectList("UserReviewDAO.getUserReviewList",map);
	}


	
	
}
