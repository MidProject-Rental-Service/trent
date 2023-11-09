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
	
	// 리뷰 목록 
	public List<UserReviewVO> getUserReviewList(HashMap map) {
		System.out.println("===> sqlSession getUserReviewList() 호출");
		System.out.println("===> " + map);
		return sqlSession.selectList("UserReviewMapper.getUserReviewList",map);
	}
	// 리뷰 저장
	public void saveUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession saveUserReview() 호출");
		System.out.println("==>" + vo.toString());
		int result = sqlSession.update("UserReviewMapper.saveUserReview", vo); 
		System.out.println("입력결과 : " + result);
	}
	
	// 리뷰 내용 가져오기 
	public UserReviewVO getUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession getUserReview() 호출");
		System.out.println("===> " + vo.toString());
		return sqlSession.selectOne("UserReviewMapper.getUserReview", vo);
		
	}
	
	// 리뷰 삭제
	public int deleteUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession deleteUserReview() 호출");
		System.out.println("===> " + vo.toString());
		return sqlSession.delete("UserReviewMapper.deleteUserReview",vo);
	}
	// 리뷰 등록
	public void insertUserReview(UserReviewVO vo) {
		System.out.println("===> sqlSession insertUserReview() 호출");
		System.out.println("===> " + vo.toString());
		sqlSession.insert("UserReviewMapper.insertUserReview", vo);
		sqlSession.update("UserReviewMapper.updateBstat",vo);
		 
	}


	
	
}
