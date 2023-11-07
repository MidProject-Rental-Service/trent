package com.mid.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.GoodsDAOImpl;
import com.mid.mvc.domain.GoodsVO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsDAOImpl goodsDAO;
	
	// 제품 등록
	public void productRegister(GoodsVO vo){
		goodsDAO.productRegister(vo);
	}
	
	// 제품 목록 띄우기
	public List<GoodsVO> getGoodsList(GoodsVO vo) {
		return goodsDAO.getGoodsList(vo);
	}

	// 제품 상세보기
	public GoodsVO getGoodsById(GoodsVO vo) {
		return goodsDAO.getGoodsById(vo);
	}

	// 제품 수정
	public void updateGoods(GoodsVO vo) {
		goodsDAO.updateGoods(vo);
	}

	// 제품 삭제
	public void deleteGoods(GoodsVO vo) {
		goodsDAO.deleteGoods(vo);
		
	}




	public List<GoodsVO> getCategoryGoodsList(String c_name) {
		return goodsDAO.getCategoryGoodsList(c_name);
	}



}
