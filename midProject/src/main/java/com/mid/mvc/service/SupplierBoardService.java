package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.SupplierBoardVO;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

public interface SupplierBoardService {
	
	//대시보드에서 공급사문의
	List<SupplierBoardVO> dashboardSupplierBoardList(SupplierBoardVO vo);
	
	//공급사문의 리스트
	List<SupplierBoardVO> admingetSupplierBoardList(Criteria cri);

	//관리자 페이지에서  공급사 문의 리스트
	public int getTotalSupplyinquiry(Criteria cri);
	
	//공급사문의 상세보기
	SupplierBoardVO getSupplierBoard(SupplierBoardVO vo);
	
	//공급사문의 답변하기
	void insertAnswer(SupplierBoardVO vo);
	
	//공급사에서 문의하기
	void inquiryreigster(SupplierBoardVO vo);
	
	//공급사페이지에서 자기 문의만 보이기
	List<SupplierBoardVO> inquiryList(HashMap map);
	

}
