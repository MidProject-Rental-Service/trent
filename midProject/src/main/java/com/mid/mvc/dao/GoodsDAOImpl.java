package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.Criteria;
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
	public List<GoodsVO> getGoodsList(Criteria cri){
		return SqlSession.selectList("GoodsMapper.getGoodsList", cri);
	}
	
	public int getTotal(Criteria cri) {
		return SqlSession.selectOne("GoodsMapper.getTotal", cri);
	}
	
	// shop에서 보여지는 가격 정보 리스트
	public List<GoodsVO> getMinPriceList(GoodsVO vo) {
		return SqlSession.selectList("GoodsMapper.getMinPriceList", vo);
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
	
	// 상품 전체 검색
	public List<PriceVO> getPriceList(Criteria cri){
		return SqlSession.selectList("GoodsMapper.getPriceList", cri);
	}
	
	public int getPriceTotal(Criteria cri) {
		return SqlSession.selectOne("GoodsMapper.getPriceTotal", cri);
	}
	
	
	public PriceVO getPriceById(PriceVO vo) {
		System.out.println("====> getPriceById 호출");
		System.out.println(vo.toString());
		return SqlSession.selectOne("GoodsMapper.getPriceById", vo);
	}

	public void insertPrice(PriceVO vo) {
		SqlSession.insert("GoodsMapper.insertPrice" , vo);
	}
	
	public void updatePrice(PriceVO vo) {
		System.out.println("====> updatePrice 호출");
		System.out.println(vo.toString());
		SqlSession.insert("GoodsMapper.updatePrice" , vo);
	}
	
	public void deletePrice(PriceVO vo) {
		System.out.println("====> deletePrice 호출");
		System.out.println(vo.toString());
		SqlSession.delete("GoodsMapper.deletePrice", vo);		
	}
	
	// 카드 전체 검색
	public List<CardVO> getCardList(CardVO vo){
		System.out.println(vo.toString());
		return SqlSession.selectList("GoodsMapper.getCardList", vo);
	}
	
	public CardVO getCardById(CardVO vo) {
		return SqlSession.selectOne("GoodsMapper.getCardById", vo);
	}
	
	public void insertCard(CardVO vo) {
		SqlSession.insert("GoodsMapper.insertCard" , vo);
	}
	
	public void updateCard(CardVO vo) {
		SqlSession.insert("GoodsMapper.updateCard" , vo);
	}
	
	public void deleteCard(CardVO vo) {
		SqlSession.delete("GoodsMapper.deleteCard", vo);		
	}

	// 제품 상세검색 (좌측)
	public List<GoodsVO> getCategoryGoodsList(String c_name, List<String> selectedBrands, Integer minPrice, Integer maxPrice) {
        HashMap<String, Object> map = new HashMap<>();
        System.out.println("===> SqlSession getCategoryGoodsList() 호출" );
        map.put("c_name", c_name);
        System.out.println("===>"+ c_name);
        map.put("selectedBrands", selectedBrands);
        System.out.println("===>"+ selectedBrands);
        map.put("minPrice", minPrice);
        System.out.println("===>"+ minPrice);
        map.put("maxPrice", maxPrice);
        System.out.println("===>"+ maxPrice);
        return SqlSession.selectList("GoodsMapper.getCategoryGoodsList", map);
    }

	public GoodsVO getProductDetail(String g_id) {
		//System.out.println("=====> getProductDetail() 호출");
		return SqlSession.selectOne("GoodsMapper.getProductDetail", g_id);
	}

	public List<PriceVO> getProductPrice(String g_id) {
		System.out.println("=====> getProductPrice() 호출");
		return SqlSession.selectList("GoodsMapper.getProductPrice", g_id);
	}

	public PriceVO getMinPrice(String g_id) {
		System.out.println("=====> getMinPrice() 호출");
		return SqlSession.selectOne("GoodsMapper.getMinPrice", g_id);
	}
	
	// 제품 검색 (헤더)
	public List<GoodsVO> getSearchGoodsList(HashMap map) {
		   System.out.println("===> SqlSession getSearchGoodsList() 호출" );
		   System.out.println("===> " + map );
		return SqlSession.selectList("GoodsMapper.getSearchGoodsList", map);
	}

	// 공급사 제품 가격 정보 
	public List<PriceVO> getPriceInfo(String g_id, int selectedMonths) {
		System.out.println("=====> getPriceInfo() 호출");
		System.out.println("======> g_id: "+ g_id +"// p_rent: "+ selectedMonths);
		HashMap map = new HashMap();
		map.put("g_id", g_id);
		map.put("selectedMonths", selectedMonths);
		
		return SqlSession.selectList("GoodsMapper.getPriceInfo", map);
	}
	
	public List<PriceVO> getSupplierInfo(String g_id) {
		return SqlSession.selectList("GoodsMapper.getSupplierInfo", g_id);
	}

	// 렌탈 정보
	public PriceVO getRentalInfo(String g_id, int p_rent, String s_name) {
		System.out.println("=====> getRentalInfo() 호출");
		System.out.println("======> "+g_id+", " +p_rent+", " +s_name);
		
		HashMap map = new HashMap();
		map.put("g_id", g_id);
		map.put("p_rent", p_rent);
		map.put("s_name", s_name);
		
		return SqlSession.selectOne("GoodsMapper.getRentalInfo", map);
	}

	
	
}

