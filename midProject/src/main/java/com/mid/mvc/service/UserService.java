package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.ShoppingCartVO;
import com.mid.mvc.domain.UserRentalVO;
import com.mid.mvc.domain.UserVO;

public interface UserService {
	
	public void insertUser(UserVO vo);

	public int idCheck(String id);
	
	public UserVO loginCheck(UserVO vo);
	
	public void updateUser(UserVO vo);

	List<UserVO> getUserList(HashMap map);

	List<UserVO> getSupplyList(HashMap map);
	
	void insertSupply(UserVO vo);
	
	public UserVO userDetail(UserVO vo);
	
	void userModify(UserVO vo);
	
	public int getTotal();
	
	List<ShoppingCartVO> getCartList(HashMap map);
	
	int cartDelete(ShoppingCartVO vo);

	public int applicationRental(UserRentalVO vo);

	public void insertCart(HashMap map);


}
