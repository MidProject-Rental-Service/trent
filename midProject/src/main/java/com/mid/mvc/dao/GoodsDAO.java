package com.mid.mvc.dao;

import java.util.List;

import com.mid.mvc.domain.GoodsVO;

public interface GoodsDAO {
	
	public void productRegister(GoodsVO vo);
	
	public List<GoodsVO> getGoodsList(GoodsVO vo);	

}
