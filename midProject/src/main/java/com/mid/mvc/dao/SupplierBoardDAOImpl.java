package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.SupplierBoardVO;
import com.mid.mvc.domain.UserBoardVO;

@Repository
public class SupplierBoardDAOImpl implements SupplierBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<SupplierBoardVO> dashboardSupplierBoardList(SupplierBoardVO vo) {
		return sqlSession.selectList("SupplierBoardMapper.dashboardSupplierBoardList" , vo);
	}
	
	//관리자 페이지에서 문의리스트
	public List<SupplierBoardVO> admingetSupplierBoardList(HashMap map) {
		return sqlSession.selectList("SupplierBoardMapper.admingetSupplierBoardList",map);
	}	
	
	public SupplierBoardVO getSupplierBoard(SupplierBoardVO vo) {
		return sqlSession.selectOne("SupplierBoardMapper.getSupplierBoard", vo);
	}

	public void insertAnswer(SupplierBoardVO vo) {
		int result = sqlSession.update("SupplierBoardMapper.insertAnswer", vo);
		System.out.println("result 1이면 업데이트 성공 : " + result);
	}
	


}
