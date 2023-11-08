package com.mid.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.UserDAO;
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
	
	public List<UserVO> getUserList(UserVO vo){
		System.out.println("UserServiceImpl");
		return userDAOImpl.getUserList(vo);
	}
	
	public List<UserVO> getSupplyList(UserVO vo){
		System.out.println("UserServiceImpl");
		return userDAOImpl.getSupplyList(vo);
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

	
	
}
