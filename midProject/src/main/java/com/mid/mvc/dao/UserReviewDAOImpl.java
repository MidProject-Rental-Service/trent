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
	
	public void saveUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession saveUserReview() 호출");
		System.out.println("==>" + vo.toString());
		int result = sqlSession.insert("UserReviewMapper.saveUserReview", vo); 
		System.out.println("입력결과 : " + result);
	}
	public List<UserReviewVO> getUserReviewList(HashMap map) {
		System.out.println("===> sqlSession getUserReviewList() 호출");
		System.out.println("===> " + map);
		return sqlSession.selectList("UserReviewMapper.getUserReviewList",map);
	}
	

	public UserReviewVO getUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession getUserReview() 호출");
		System.out.println("===> " + vo.toString());
		return sqlSession.selectOne("UserReviewMapper.getUserReview", vo);
		
	}


	
	
}
