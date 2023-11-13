package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.UserBoardDAO;
import com.mid.mvc.domain.Criteria;
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
	public List<UserBoardVO> admingetUserBoardList(Criteria cri) {
		return userboardDAO.admingetUserBoardList(cri);
	}
	
	//유저문의 개시글 count
	public int getTotalUserinquiry(Criteria cri) {
		return userboardDAO.getTotalUserinquiry(cri);
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

	@Override
	public int getTotal() {
		return userboardDAO.getTotal();
	}

	//공급사 페이지에 렌탈리스트 보기
	public List<UserRentalVO> rentalList(HashMap map) {
		return userboardDAO.rentalList(map);
	}
	
	@Override
	public List<UserRentalVO> getUserRecentList(HashMap map) {
		return userboardDAO.getUserRecentList(map);
	}

	@Override
	public void updateStat(int b_stat, String b_id, int b_rent) {
		System.out.println("b_id : " +b_id);
		System.out.println("b_stat : " +b_stat);
		userboardDAO.updateStat(b_stat,b_id,b_rent);
		
	}

}
