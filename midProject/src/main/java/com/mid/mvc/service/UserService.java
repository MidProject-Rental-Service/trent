package com.mid.mvc.service;

import java.util.List;

import com.mid.mvc.domain.UserVO;

public interface UserService {
	
	public void insertUser(UserVO vo);

	public int idCheck(String id);
	
	public UserVO loginCheck(UserVO vo);
	
	public void updateUser(UserVO vo);
	
	List<UserVO> getUserList(UserVO vo);
	
	List<UserVO> getSupplyList(UserVO vo);
	
	void insertSupply(UserVO vo);
	
	public UserVO userDetail(UserVO vo);
	
	void userModify(UserVO vo);
	
	public int getTotal();
}
