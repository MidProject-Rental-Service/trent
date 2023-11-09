package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

public interface UserBoardService {
	
	//사용자문의 상세보기
	UserBoardVO getUserBoard(UserBoardVO vo);
	
	//사용자 페이지에서  문의 리스트
	List<UserBoardVO> getUserBoardList(HashMap map);
	
	//관리자 페이지에서  사용자 문의 리스트
	List<UserBoardVO> admingetUserBoardList(HashMap map, Criteria cri);
	
	void insertUserBoard(UserBoardVO vo);
	
	//대시보드에서 보이는 사용자 문의 리스트
	List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo);
	
	
	List<UserRentalVO> getUserRentalList(HashMap map);

	//사용자 문의 답변하기
	void insertAnswer(UserBoardVO vo);
	
	//사용자 문의 개시글 수
	public int getTotal();
}
