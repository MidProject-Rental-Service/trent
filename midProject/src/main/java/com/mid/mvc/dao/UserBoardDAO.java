package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

public interface UserBoardDAO {
	public void insertUserBoard(UserBoardVO vo);
	public List<UserBoardVO> getUserBoardList(HashMap map) ;
	public UserBoardVO getUserBoard(UserBoardVO vo);
<<<<<<< HEAD
	public List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo) ;
=======
	public List<UserRentalVO> getUserRentalList(HashMap map) ;
>>>>>>> branch 'SungQ' of https://github.com/MidProject-Rental-Service/trent.git
}
