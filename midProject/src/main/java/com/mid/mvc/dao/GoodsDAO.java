package com.mid.mvc.dao;

import java.util.List;

import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

public interface GoodsDAO {
	
	public void productRegister(GoodsVO vo);
	
	public List<GoodsVO> getGoodsList(GoodsVO vo);	

	public GoodsVO getGoodsById(GoodsVO vo);
	
	public void insertPrice(PriceVO vo);
	
	public void modifyPrice(PriceVO vo);
	
	public List<PriceVO> getPriceList(PriceVO vo);
	
}
