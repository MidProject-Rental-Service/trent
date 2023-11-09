package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.ShoppingCartVO;
import com.mid.mvc.domain.UserVO;

public interface UserDAO {

	public void insertUser(UserVO vo);

	public int idCheck(String id);
	
	public UserVO loginCheck(UserVO vo);
	
	public void updateUser(UserVO vo);

	public List<UserVO> getUserList(UserVO vo, Criteria cri);	
	
	public List<UserVO> getSupplyList(HashMap map);	
	
	public void insertSupply(UserVO vo);
	
	public UserVO userDetail(UserVO vo);
	
	public void userUpdate(UserVO vo);
	
	public int getTotal();

	public List<ShoppingCartVO> getCartList(HashMap map);
	  
	int cartDelete(ShoppingCartVO vo);
}
