package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

public interface UserBoardDAO {
	public void insertUserBoard(UserBoardVO vo);
	
	//사용자 페이지에서 문의리스트
	public List<UserBoardVO> getUserBoardList(HashMap map) ;
	
	//관리자 페이지에서 문의리스트
	public List<UserBoardVO> admingetUserBoardList(HashMap map) ;
	
	public UserBoardVO getUserBoard(UserBoardVO vo);

	public List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo) ;

	public List<UserRentalVO> getUserRentalList(HashMap map) ;

	public void insertAnswer(UserBoardVO vo);
}
