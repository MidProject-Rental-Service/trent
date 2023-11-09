package com.mid.mvc.dao;

import java.util.List;

import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.UserVO;

public interface UserDAO {

	public void insertUser(UserVO vo);

	public int idCheck(String id);
	
	public UserVO loginCheck(UserVO vo);
	
	public void updateUser(UserVO vo);
	
	public List<UserVO> getUserList(UserVO vo, Criteria cri);	
	
	public List<UserVO> getSupplyList(UserVO vo);	
	
	public void insertSupply(UserVO vo);
	
	public UserVO userDetail(UserVO vo);
	
	public void userUpdate(UserVO vo);
	
	public int getTotal();
	  

}
