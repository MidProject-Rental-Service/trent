package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserBoardVO;

public interface UserBoardDAO {
	public void insertUserBoard(UserBoardVO vo);
	public List<UserBoardVO> getUserBoardList(HashMap map) ;
	public UserBoardVO getUserBoard(UserBoardVO vo);
	public List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo) ;
}
