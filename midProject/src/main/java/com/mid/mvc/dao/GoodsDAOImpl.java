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

	public GoodsVO getGoodsById(GoodsVO vo) {
		System.out.println("====> getGoodsById 호출");
		return SqlSession.selectOne("GoodsMapper.getGoodsById", vo);
	}

	public void updateGoods(GoodsVO vo) {
		System.out.println("======> updateGoods() 호출 (Mapper 직전)");
		SqlSession.update("GoodsMapper.updateGoods", vo);
		
	}

	public void deleteGoods(GoodsVO vo) {
		System.out.println("======> deleteGoods() 호출 (Mapper 직전)");
		SqlSession.delete("GoodsMapper.deleteGoods", vo);
		
	}

	public List<GoodsVO> getCategoryGoodsList(String c_name) {
		System.out.println("===> SqlSession getCategoryGoodsList() 호출");
		System.out.println("===>"+ c_name);
		return SqlSession.selectList("GoodsMapper.getCategoryGoodsList", c_name);
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
