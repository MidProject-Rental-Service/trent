package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.SupplierBoardVO;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

public interface SupplierBoardService {
	
	//대시보드에서 공급사문의
	List<SupplierBoardVO> dashboardSupplierBoardList(SupplierBoardVO vo);
	
	//공급사문의 리스트
	List<SupplierBoardVO> admingetSupplierBoardList(HashMap map);
	
	//공급사문의 상세보기
	SupplierBoardVO getSupplierBoard(SupplierBoardVO vo);
	
	//공급사문의 답변하기
	void insertAnswer(SupplierBoardVO vo);
}
