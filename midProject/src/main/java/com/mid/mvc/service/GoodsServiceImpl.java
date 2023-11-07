package com.mid.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.GoodsDAOImpl;
import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsDAOImpl goodsDAO;
	
	public void productRegister(GoodsVO vo){
		goodsDAO.productRegister(vo);
	}
	
	public List<GoodsVO> getGoodsList(GoodsVO vo) {
		return goodsDAO.getGoodsList(vo);
	}

	public GoodsVO getGoodsById(String gId) {
		return goodsDAO.getGoodsById(gId);
	}
	
	public void insertPrice(PriceVO vo){
		goodsDAO.insertPrice(vo);
	}
	
	public void modifyPrice(PriceVO vo){
		goodsDAO.modifyPrice(vo);
	}
	
	public List<PriceVO> getPriceList(PriceVO vo) {
		return goodsDAO.getPriceList(vo);
	}


}
