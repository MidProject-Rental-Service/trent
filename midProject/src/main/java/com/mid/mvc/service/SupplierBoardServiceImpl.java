package com.mid.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.SupplierBoardDAO;
import com.mid.mvc.domain.SupplierBoardVO;
import com.mid.mvc.domain.UserBoardVO;

@Service
public class SupplierBoardServiceImpl implements SupplierBoardService{

	@Autowired
	private SupplierBoardDAO supplierboardDAO;


	@Override
	public List<SupplierBoardVO> dashboardSupplierBoardList(SupplierBoardVO vo) {
		return supplierboardDAO.dashboardSupplierBoardList(vo);
	}
	


}
