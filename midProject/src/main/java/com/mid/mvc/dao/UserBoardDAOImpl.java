package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

@Repository
public class UserBoardDAOImpl implements UserBoardDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;	
	
	public void insertUserBoard(UserBoardVO vo) {
		System.out.println("===> sqlSession insertUserBoard() 호출");
		System.out.println("=>" + vo.toString());
		int result = sqlSession.insert("UserBoardMapper.insertUserBoard", vo); 
		System.out.println("입력결과 : " + result);
	}
	
	public UserBoardVO getUserBoard(UserBoardVO vo) {
		System.out.println("===> sqlSession getUserBoard() 호출");
		System.out.println("===> " + vo.toString());
		return sqlSession.selectOne("UserBoardMapper.getUserBoard", vo);
		
	}
	
	public List<UserBoardVO> getUserBoardList(HashMap map) {
		System.out.println("===> sqlSession getUserBoardList() 호출");
		System.out.println("===> " + map.get("searchCondition") +" / " +map.get("searchKeyword"));
		System.out.println("===> " + map.get("startDate") +" / " +map.get("endDate"));
		System.out.println("===> " + map.get("id"));
		return sqlSession.selectList("UserBoardMapper.getUserBoardList",map);
	}

	
	public List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo) {
		return sqlSession.selectList("UserBoardMapper.dashboardUserBoardList", vo);
	}

	public List<UserRentalVO> getUserRentalList(HashMap map) {
		System.out.println("===> sqlSession getUserRentalList() 호출");
		System.out.println("===> " + map.get("searchCondition") +" / " +map.get("searchKeyword"));
		System.out.println("===> " + map.get("startDate") +" / " +map.get("endDate"));
		return sqlSession.selectList("UserBoardMapper.getUserRentalList",map);
	}

	@Override
	public void insertAnswer(UserBoardVO vo) {
		int result = sqlSession.update("UserBoardMapper.insertAnswer", vo);
		System.out.println("입력결과 : " + result);
	}
	
}
