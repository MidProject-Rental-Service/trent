package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

public interface GoodsService {
	
	void productRegister(GoodsVO vo);
	
	List<GoodsVO> getGoodsList(GoodsVO vo);

	// 관리자 
	GoodsVO getGoodsById(GoodsVO vo);
	
	void insertPrice(PriceVO vo);
	
	void modifyPrice(PriceVO vo);
	
	List<PriceVO> getPriceList(PriceVO vo);

	void updateGoods(GoodsVO vo);

	void deleteGoods(GoodsVO vo);
	// 상세검색 
	List<GoodsVO> getCategoryGoodsList(String c_name, List<String> selectedBrands, Integer minPrice, Integer maxPrice);
	// 제품검색 헤더 
	List<GoodsVO>getSearchGoodsList(HashMap map);
	
}
