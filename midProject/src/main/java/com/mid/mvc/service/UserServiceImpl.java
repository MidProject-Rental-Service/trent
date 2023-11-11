package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.UserDAO;
import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.ShoppingCartVO;
import com.mid.mvc.domain.UserRentalVO;
import com.mid.mvc.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAOImpl;
	
	@Override
	public void insertUser(UserVO vo) {
		userDAOImpl.insertUser(vo);
	}

	@Override
	public int idCheck(String id) {
		int result = userDAOImpl.idCheck(id);
		return result;
	}

	@Override
	public UserVO loginCheck(UserVO vo) {
		return userDAOImpl.loginCheck(vo);
	}
	
	@Override
	public void updateUser(UserVO vo) {
		userDAOImpl.updateUser(vo);
	}
	
	public List<UserVO> getUserList(HashMap map){
		return userDAOImpl.getUserList(map);
	}
	
	public List<UserVO> getSupplyList(HashMap map){
		System.out.println("UserServiceImpl");
		return userDAOImpl.getSupplyList(map);
	}
	
	public void insertSupply(UserVO vo) {
		System.out.println("UserService_insertSupply 호출");
		userDAOImpl.insertSupply(vo);
	}

	public UserVO userDetail(UserVO vo) {
		return userDAOImpl.userDetail(vo);
	}

	@Override
	public void userModify(UserVO vo) {
		userDAOImpl.userUpdate(vo);
	}

	@Override
	public int getTotal() {
		return userDAOImpl.getTotal();
	}

	// 장바구니 
	public List<ShoppingCartVO> getCartList(HashMap map) {
		 return userDAOImpl.getCartList(map);
	}
	
	// 장바구니 삭제
	public int cartDelete(ShoppingCartVO vo) {
		return userDAOImpl.cartDelete(vo);
	}

	// 렌탈 신청
	public int applicationRental(UserRentalVO vo) {
		return userDAOImpl.applicationRental(vo);
	}

	// 장바구니 담기
	public void insertCart(HashMap map) {
		userDAOImpl.insertCart(map);
	}

}
