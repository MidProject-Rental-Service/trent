package com.mid.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.GoodsDAOImpl;
import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsDAOImpl goodsDAO;
	
	
	// 제품 목록 띄우기
	public List<GoodsVO> getGoodsList(GoodsVO vo) {
		return goodsDAO.getGoodsList(vo);
	}
	
	// 제품 상세보기
	public GoodsVO getGoodsById(GoodsVO vo) {
		return goodsDAO.getGoodsById(vo);
	}

	// 제품 등록
	public void productRegister(GoodsVO vo){
		goodsDAO.productRegister(vo);
	}
	
	// 제품 수정
	public void updateGoods(GoodsVO vo) {
		goodsDAO.updateGoods(vo);
	}

	// 제품 삭제
	public void deleteGoods(GoodsVO vo) {
		goodsDAO.deleteGoods(vo);
		
	}
	
<<<<<<< HEAD
=======
	// 가격 목록 띄우기
	public List<PriceVO> getPriceList(PriceVO vo) {
		return goodsDAO.getPriceList(vo);
	}
	
	// 가격 등록
	public void insertPrice(PriceVO vo){
		goodsDAO.insertPrice(vo);
	}
	
	// 가격 상세보기
	public PriceVO getPriceById(PriceVO vo) {
		return goodsDAO.getPriceById(vo);
	}
	
	// 가격 수정
	public void updatePrice(PriceVO vo){
		goodsDAO.updatePrice(vo);
	}
	
	// 제품 삭제
	public void deletePrice(PriceVO vo) {
		goodsDAO.deletePrice(vo);
		
	}
	
	// 카드 목록 띄우기
	public List<CardVO> getCardList(CardVO vo) {
		return goodsDAO.getCardList(vo);
	}

	// 카드 등록
	public void insertCard(CardVO vo){
		goodsDAO.insertCard(vo);
	}
	
	// 카드 상세보기
	public CardVO getCardById(CardVO vo) {
		return goodsDAO.getCardById(vo);
	}
	
	// 카드 수정
	public void updateCard(CardVO vo){
		goodsDAO.updateCard(vo);
	}
	
	// 제품 삭제
	public void deleteCard(CardVO vo) {
		goodsDAO.deleteCard(vo);
	}

	public List<GoodsVO> getCategoryGoodsList(String c_name, List<String> selectedBrands, Integer minPrice, Integer maxPrice) {
		return goodsDAO.getCategoryGoodsList(c_name,selectedBrands,minPrice,maxPrice);
	}

	
	// 사용자 제품 상세 페이지 
	public GoodsVO getProductDetail(String g_id) {
		return goodsDAO.getProductDetail(g_id);
	}

	public List<PriceVO> getProductPrice(String g_id) {
		return goodsDAO.getProductPrice(g_id);
	}

	public PriceVO getMinPrice(String g_id) {
		return goodsDAO.getMinPrice(g_id);
	}






}
