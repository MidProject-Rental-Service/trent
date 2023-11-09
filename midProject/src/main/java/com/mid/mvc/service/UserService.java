package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.ShoppingCartVO;
import com.mid.mvc.domain.UserVO;

public interface UserService {
	
	public void insertUser(UserVO vo);

	public int idCheck(String id);
	
	public UserVO loginCheck(UserVO vo);
	
	public void updateUser(UserVO vo);

	List<UserVO> getUserList(UserVO vo , Criteria cri);

	List<UserVO> getSupplyList(HashMap map);
	
	void insertSupply(UserVO vo);
	
	public UserVO userDetail(UserVO vo);
	
	void userModify(UserVO vo);
	
	public int getTotal();
	
	List<ShoppingCartVO> getCartList(HashMap map);
	
	int cartDelete(ShoppingCartVO vo);
		 		
	
	
}
