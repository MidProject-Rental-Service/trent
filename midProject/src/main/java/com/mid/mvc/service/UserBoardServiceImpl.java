package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.UserBoardDAO;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

@Service
public class UserBoardServiceImpl implements UserBoardService{

	@Autowired
	private UserBoardDAO userboardDAO;
	
	

	public UserBoardVO getUserBoard(UserBoardVO vo) {
		
		return userboardDAO.getUserBoard(vo);
	}
	
	public List<UserBoardVO> getUserBoardList(HashMap map) {
		return userboardDAO.getUserBoardList(map);
	}

	public void insertUserBoard(UserBoardVO vo) {
	 
		userboardDAO.insertUserBoard(vo);
	}

	@Override
	public List<UserRentalVO> getUserRentalList(HashMap map) {
		
		return userboardDAO.getUserRentalList(map);
	}

}
