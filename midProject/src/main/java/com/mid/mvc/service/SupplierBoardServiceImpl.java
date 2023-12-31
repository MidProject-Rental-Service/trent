package com.mid.mvc.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.SupplierBoardDAO;
import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.SupplierBoardVO;
import com.mid.mvc.domain.UserBoardVO;

@Service
public class SupplierBoardServiceImpl implements SupplierBoardService{

	@Autowired
	private SupplierBoardDAO supplierboardDAO;


	public List<SupplierBoardVO> dashboardSupplierBoardList(SupplierBoardVO vo) {
		return supplierboardDAO.dashboardSupplierBoardList(vo);
	}

	public List<SupplierBoardVO> admingetSupplierBoardList(Criteria cri) {
		return supplierboardDAO.admingetSupplierBoardList(cri);
	}

	//유저문의 개시글 count
	public int getTotalSupplyinquiry(Criteria cri) {
		return supplierboardDAO.getTotalSupplyinquiry(cri);
	}	

	public SupplierBoardVO getSupplierBoard(SupplierBoardVO vo) {
		return supplierboardDAO.getSupplierBoard(vo);
	}

	//공급사 문의 답변
	public void insertAnswer(SupplierBoardVO vo) {
		supplierboardDAO.insertAnswer(vo);
		
	}

	@Override
	public void inquiryreigster(SupplierBoardVO vo) {
		 supplierboardDAO.inquiryreigster(vo);
		
	}

	@Override
	public List<SupplierBoardVO> inquiryList(Criteria cri) {
		return supplierboardDAO.inquiryList(cri);
	}
	
	public int getTotalinquiry(Criteria cri) {
		return supplierboardDAO.getTotalinquiry(cri);
	}	
	



}
