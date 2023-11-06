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
		System.out.println("==>" + vo.toString());
		int result = sqlSession.insert("UserReviewMapper.insertUserReview", vo); 
		System.out.println("입력결과 : " + result);
	}
	public List<UserReviewVO> getUserReviewList(HashMap map) {
		System.out.println("===> sqlSession getUserReviewList() 호출");
		return sqlSession.selectList("UserReviewMapper.getUserReviewList",map);
	}
	
	public void deleteUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession deleteUserReview() 호출");
		int result = sqlSession.delete("UserReviewMapper.deleteUserReview", vo); 
		System.out.println("입력결과 : " + result);
	}
	@Override
	public UserReviewVO getUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession getUserReview() 호출");
		return sqlSession.selectOne("UserReviewMapper.getUserReview", vo);
		
	}


	
	
}
