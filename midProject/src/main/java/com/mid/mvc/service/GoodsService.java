package com.mid.mvc.service;

import java.util.List;

import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

public interface GoodsService {
	
	void productRegister(GoodsVO vo);
	
	List<GoodsVO> getGoodsList(GoodsVO vo);

	GoodsVO getGoodsById(String gId);
	
	void insertPrice(PriceVO vo);
	
	void modifyPrice(PriceVO vo);
	
	List<PriceVO> getPriceList(PriceVO vo);

}
