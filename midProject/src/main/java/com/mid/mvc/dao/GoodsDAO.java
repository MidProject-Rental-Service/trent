package com.mid.mvc.dao;

import java.util.HashMap;
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
	
	 List<GoodsVO> getCategoryGoodsList(String c_name, List<String> selectedBrands, Integer minPrice, Integer maxPrice);
	 
	 public List<GoodsVO>getSearchGoodsList(HashMap map);
}
