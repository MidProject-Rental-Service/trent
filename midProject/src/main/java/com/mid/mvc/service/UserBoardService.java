package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

public interface UserBoardService {
	
	UserBoardVO getUserBoard(UserBoardVO vo);
	
	List<UserBoardVO> getUserBoardList(HashMap map);

	void insertUserBoard(UserBoardVO vo);
	
	List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo);
	
	List<UserRentalVO> getUserRentalList(HashMap map);

}
