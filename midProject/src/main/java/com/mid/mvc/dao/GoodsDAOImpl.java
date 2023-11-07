package com.mid.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

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
		return SqlSession.selectList("GoodsMapper.getGoodsList", vo);
	}

	public GoodsVO getGoodsById(String gId) {
		return SqlSession.selectOne("GoodsMapper.getGoodsById", gId);
	}
	
	public void insertPrice(PriceVO vo) {
		System.out.println("GoodsDAOImpl 호출");
		SqlSession.insert("GoodsMapper.insertPrice" , vo);
	}
	
	public void modifyPrice(PriceVO vo) {
		System.out.println("GoodsDAOImpl 호출");
		SqlSession.insert("GoodsMapper.modifyPrice" , vo);
	}
	
	// 상품 전체 검색
	public List<PriceVO> getPriceList(PriceVO vo){
		System.out.println("===> Mybatis getPriceList() 호출");
		System.out.println(vo.toString());
		return SqlSession.selectList("GoodsMapper.getPriceList", vo);
	}


}
