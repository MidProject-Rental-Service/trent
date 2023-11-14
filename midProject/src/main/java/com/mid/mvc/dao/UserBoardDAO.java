package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

public interface UserBoardDAO {
	public void insertUserBoard(UserBoardVO vo);
	
	//사용자 페이지에서 문의리스트
	public List<UserBoardVO> getUserBoardList(HashMap map) ;
	
	//관리자 페이지에서 문의리스트
	public List<UserBoardVO> admingetUserBoardList(Criteria cri) ;
	
	public int getTotalUserinquiry(Criteria cri);
	
	public UserBoardVO getUserBoard(UserBoardVO vo);

	public List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo) ;

	public List<UserRentalVO> getUserRentalList(HashMap map) ;

	public void insertAnswer(UserBoardVO vo);
	
	public int getTotal();
	
	public List<UserRentalVO> rentalList(Criteria cri);
	
	public int getTotalRental(Criteria cri);

	public List<UserRentalVO> getUserRecentList(HashMap map);
	
	public void updateStat(int b_stat, String b_id, int b_rent);
}
