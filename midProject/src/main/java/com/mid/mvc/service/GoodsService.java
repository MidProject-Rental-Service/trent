package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

public interface GoodsService {
	
	void productRegister(GoodsVO vo);
	
	List<GoodsVO> getGoodsList(Criteria cri);
	
	//goods 총갯수 구하기
	public int getTotal(Criteria cri);

	// 관리자 
	GoodsVO getGoodsById(GoodsVO vo);
	
	void updateGoods(GoodsVO vo);

	void deleteGoods(GoodsVO vo);
	
	List<PriceVO> getPriceList(Criteria cri);
	
	public int getPriceTotal(Criteria cri);
	
	PriceVO getPriceById(PriceVO vo);
	
	void insertPrice(PriceVO vo);
	
	void updatePrice(PriceVO vo);
	
	void deletePrice(PriceVO vo);
	
	List<CardVO> getCardList(CardVO vo);
	
	CardVO getCardById(CardVO vo);
	
	void insertCard(CardVO vo);
	
	void updateCard(CardVO vo);
	
	void deleteCard(CardVO vo);
	
	// 상세검색 
	List<GoodsVO> getCategoryGoodsList(String c_name, List<String> selectedBrands, Integer minPrice, Integer maxPrice);

	// 사용자 제품 상세 페이지
	GoodsVO getProductDetail(String g_id);

	List<PriceVO> getProductPrice(String g_id);

	PriceVO getMinPrice(String g_id);

	// 제품검색 헤더 
	List<GoodsVO>getSearchGoodsList(HashMap map);

	List<PriceVO> getPriceInfo(String g_id, int selectedMonths);

	List<PriceVO> getSupplierInfo(String g_id);

	List<GoodsVO> getMinPriceList(GoodsVO vo);

	// 렌탈정보
	PriceVO getRentalInfo(String g_id, int p_rent, String s_name);



}