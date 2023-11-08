package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.SupplierBoardVO;

public interface SupplierBoardDAO {

	public List<SupplierBoardVO> dashboardSupplierBoardList(SupplierBoardVO vo);

	//관리자 페이지에서 문의리스트
	public List<SupplierBoardVO> admingetSupplierBoardList(HashMap map) ;
	
	public SupplierBoardVO getSupplierBoard(SupplierBoardVO vo);
	
	public void insertAnswer(SupplierBoardVO vo);
}
