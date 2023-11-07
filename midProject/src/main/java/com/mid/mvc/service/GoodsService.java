package com.mid.mvc.service;

import java.util.List;

import com.mid.mvc.domain.GoodsVO;

public interface GoodsService {
	
	void productRegister(GoodsVO vo);
	
	List<GoodsVO> getGoodsList(GoodsVO vo);

	GoodsVO getGoodsById(GoodsVO vo);

	void updateGoods(GoodsVO vo);

	void deleteGoods(GoodsVO vo);


}
