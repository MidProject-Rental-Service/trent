package com.mid.mvc.service;

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

	List<GoodsVO> getCategoryGoodsList(String c_name, List<String> selectedBrands, Integer minPrice, Integer maxPrice);
}
