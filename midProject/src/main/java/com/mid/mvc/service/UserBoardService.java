package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserBoardVO;

public interface UserBoardService {
	
	UserBoardVO getUserBoard(UserBoardVO vo);
	
	List<UserBoardVO> getUserBoardList(HashMap map);

	void insertUserBoard(UserBoardVO vo);
	
}
