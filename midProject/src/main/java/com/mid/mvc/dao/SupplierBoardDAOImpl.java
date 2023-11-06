package com.mid.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.SupplierBoardVO;

@Repository
public class SupplierBoardDAOImpl implements SupplierBoardDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<SupplierBoardVO> dashboardSupplierBoardList(SupplierBoardVO vo) {
		return sqlSession.selectList("SupplierBoardDAO.dashboardSupplierBoardList" , vo);
	}
	
	

}
