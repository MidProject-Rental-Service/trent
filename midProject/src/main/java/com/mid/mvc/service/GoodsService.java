package com.mid.mvc.service;

import java.util.List;

import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

public interface GoodsService {
	
	void productRegister(GoodsVO vo);
	
	List<GoodsVO> getGoodsList(GoodsVO vo);

	// 관리자 
	GoodsVO getGoodsById(GoodsVO vo);
	
	void updateGoods(GoodsVO vo);

	void deleteGoods(GoodsVO vo);
	
	List<PriceVO> getPriceList(PriceVO vo);
	
	PriceVO getPriceById(PriceVO vo);
	
	void insertPrice(PriceVO vo);
	
	void updatePrice(PriceVO vo);
	
	void deletePrice(PriceVO vo);
	
	List<CardVO> getCardList(CardVO vo);
	
	CardVO getCardById(CardVO vo);
	
	void insertCard(CardVO vo);
	
	void updateCard(CardVO vo);
	
	void deleteCard(CardVO vo);
	
	
	List<GoodsVO> getCategoryGoodsList(String c_name, List<String> selectedBrands, Integer minPrice, Integer maxPrice);


}
