package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

public interface GoodsDAO {
	
	public void productRegister(GoodsVO vo);
	
	public List<GoodsVO> getGoodsList(GoodsVO vo);	

	public GoodsVO getGoodsById(GoodsVO vo);
	
	public GoodsVO getProductDetail(String g_id);

	public List<PriceVO> getPriceList(PriceVO vo);
	
	public PriceVO getPriceById(PriceVO vo);
	
	public void insertPrice(PriceVO vo);
	
	public void updatePrice(PriceVO vo);
	
	public void deletePrice(PriceVO vo);
	
	public List<CardVO> getCardList(CardVO vo);
	
	public PriceVO getCardById(CardVO vo);
	
	public void insertCard(CardVO vo);
	
	public void updateCard(CardVO vo);
	
	public void deleteCard(CardVO vo);
	
	 List<GoodsVO> getCategoryGoodsList(String c_name, List<String> selectedBrands, Integer minPrice, Integer maxPrice);
	 
	 public List<GoodsVO>getSearchGoodsList(HashMap map);
	 
	 
}
