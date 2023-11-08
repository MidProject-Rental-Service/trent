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
	
	
	
	//사용자페이지 문의 리스트 
	public List<UserBoardVO> getUserBoardList(HashMap map) {
		return userboardDAO.getUserBoardList(map);
	}
	
	//관리자페이지 사용자 문의 리스트
	public List<UserBoardVO> admingetUserBoardList(HashMap map) {
		return userboardDAO.admingetUserBoardList(map);
	}
	

	public void insertUserBoard(UserBoardVO vo) {
	 
		userboardDAO.insertUserBoard(vo);
	}
	
	public List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo) {
		return userboardDAO.dashboardUserBoardList(vo);
	}


	@Override
	public List<UserRentalVO> getUserRentalList(HashMap map) {
		return userboardDAO.getUserRentalList(map);
	}
	
	public UserBoardVO getUserBoard(UserBoardVO vo) {
		
		return userboardDAO.getUserBoard(vo);
	}

	public void insertAnswer(UserBoardVO vo) {
		userboardDAO.insertAnswer(vo);
	}

}
