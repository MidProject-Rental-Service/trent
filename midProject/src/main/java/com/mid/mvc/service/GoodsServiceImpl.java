package com.mid.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mid.mvc.dao.GoodsDAOImpl;
import com.mid.mvc.domain.GoodsVO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private GoodsDAOImpl goodsDAO;
	
	public void productRegister(GoodsVO vo){
		goodsDAO.productRegister(vo);
	}
}
