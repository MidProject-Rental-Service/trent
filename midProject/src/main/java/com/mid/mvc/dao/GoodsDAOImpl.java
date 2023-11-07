package com.mid.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.GoodsVO;

@Repository("goodsDAO")
public class GoodsDAOImpl {
	@Autowired
	private SqlSessionTemplate SqlSession;
	
	public void productRegister(GoodsVO vo) {
		System.out.println("GoodsDAOImpl 호출");
		SqlSession.insert("GoodsMapper.productRegister1" , vo);
	}

	// 상품 전체 검색
	public List<GoodsVO> getGoodsList(GoodsVO vo){
		System.out.println("===> Mybatis getBoardList() 호출");
		System.out.println(vo.toString());
		return SqlSession.selectList("GoodsMapper.getGoodsList", vo);
	}

	public GoodsVO getGoodsById(String gId) {
		return SqlSession.selectOne("GoodsMapper.getGoodsById", gId);
	}


}
