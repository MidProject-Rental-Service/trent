package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.ShoppingCartVO;
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

	public List<UserVO> getUserList(HashMap map){
		System.out.println("Map : " + map);
		System.out.println("====> Mybatis로 getBoardList() 기능 처리");
		return sqlSession.selectList("UserMapper.getUserList", map);
	}
	
	public List<UserVO> getSupplyList(HashMap map){
		System.out.println("===> sqlSession getSupplyList");
		System.out.println("===> " + map.get("searchCondition") +" / " +map.get("searchKeyword"));
		return sqlSession.selectList("UserMapper.getSupplyList", map);
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

	public int getTotal() {
	    int result = sqlSession.selectOne("UserMapper.getTotal");
	    return result;
	}

	// 장바구니 
	public List<ShoppingCartVO> getCartList(HashMap map) {
		System.out.println("===> sqlSession getCartList() 호출");
		System.out.println("===> " + map);
		return sqlSession.selectList("UserMapper.getCartList",map);
	}
	
	public int cartDelete(ShoppingCartVO vo) {
		System.out.println("===> sqlSession cartDelete() 호출");
		System.out.println("===> " + vo);
		int result = sqlSession.delete("UserMapper.cartDelete",vo);
		return result;
	}


}
