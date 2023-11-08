package com.mid.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void insertUser(UserVO vo) {
		sqlSession.insert("UserMapper.insertUser", vo);
	}
	
	@Override
	public int idCheck(String id) {
		int result = sqlSession.selectOne("UserMapper.idCheck", id);
		return result;
	}
	
	@Override
	public UserVO loginCheck(UserVO vo) {
		UserVO  user = sqlSession.selectOne("UserMapper.loginCheck", vo);

		// 사용자 정보가 맞는 경우 UserVO 객체에 설정한 뒤 반환
	    if (user != null) {
	        vo.setId(user.getId());
	        vo.setPwd(user.getPwd());
	        vo.setRole(user.getRole());
	    }
		
		return user;
	}
	
	@Override
	public void updateUser(UserVO vo) {
		sqlSession.update("UserMapper.updateUser", vo);
		
	}
	
	public List<UserVO> getUserList(UserVO vo){
		System.out.println("UserDAOImpl");
		return sqlSession.selectList("UserMapper.getUserList", vo);
	}
	
	public List<UserVO> getSupplyList(UserVO vo){
		System.out.println("UserDAOImpl");
		return sqlSession.selectList("UserMapper.getSupplyList", vo);
	}
	
	public void insertSupply(UserVO vo) {
		System.out.println("UserDAOImpl 실행");
		sqlSession.insert("UserMapper.insertSupply",vo);
	}

	public UserVO userDetail(UserVO vo) {
		return sqlSession.selectOne("UserMapper.userDetail", vo);
	}

	public void userUpdate(UserVO vo) {
		int result = sqlSession.update("UserMapper.userModify", vo);
		System.out.println("1나오면 성공 : " + result);
	}
}
