package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

public interface GoodsDAO {
	
	public void productRegister(GoodsVO vo);
	
	public List<GoodsVO> getGoodsList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public int getPriceTotal(Criteria cri);
	
	public List<GoodsVO> getBest3List(GoodsVO vo);
	
	public List<GoodsVO> getBestList(GoodsVO vo);
	
	public List<GoodsVO> getMinPriceList(GoodsVO vo);

	public GoodsVO getGoodsById(GoodsVO vo);
	
	public GoodsVO getProductDetail(String g_id);

	public List<PriceVO> getPriceList(Criteria cri);
	
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
