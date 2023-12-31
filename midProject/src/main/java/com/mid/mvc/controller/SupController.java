package com.mid.mvc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mid.mvc.domain.CardVO;
import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PageVO;
import com.mid.mvc.domain.PriceVO;
import com.mid.mvc.domain.SupplierBoardVO;
import com.mid.mvc.domain.UserRentalVO;
import com.mid.mvc.domain.UserVO;
import com.mid.mvc.service.GoodsService;
import com.mid.mvc.service.SupplierBoardService;
import com.mid.mvc.service.UserBoardService;
import com.mid.mvc.service.UserService;

@Controller
@RequestMapping("/supplier")
public class SupController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private SupplierBoardService supplierBoardService;
	
	@Autowired
	private UserBoardService userBoardService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		System.out.println("Super_controller호출");
		return "supplier/" + step;
	}
	
	//상품 전체 검색
	@RequestMapping("/productmange.do")
	public void GoodsList(Criteria cri, Model model) { 
		System.out.println("controlltostring :" + cri.getSearchCondition());
		System.out.println("controlltostring :" + cri.getSearchKeyword());
		PageVO pageVO = new PageVO(cri, goodsService.getTotal(cri));
		List<GoodsVO> result = goodsService.getGoodsList(cri);
		
		model.addAttribute("pageVO", pageVO); 
		model.addAttribute("goodsList",result); 
	}
	
/*
     #############
	#   가격 관련 컨트롤러    #
	#############
*/	
	   
	//가격정보 전체 검색
	@RequestMapping("/pricemange.do")
	public void getPriceList(Criteria cri, Model model) { 		
		PageVO pageVO = new PageVO(cri, goodsService.getPriceTotal(cri));
		List<PriceVO> result = goodsService.getPriceList(cri); 
		model.addAttribute("pageVO", pageVO); 
		model.addAttribute("priceList",result);
	}
	
	//가격 정보 등록 (페이지 띄우기)
	@RequestMapping("/priceregister.do")
	public void priceregister(GoodsVO vo, Model m) { 
		 GoodsVO result = goodsService.getGoodsById(vo);
		 m.addAttribute("product", result);
	}
	
	//가격정보 등록
	@RequestMapping("/insertPrice.do")
	public String insertPrice(PriceVO vo, Model m) {
		goodsService.insertPrice(vo);
		return "redirect:/supplier/productmange.do";
	}
	
	//가격 정보 수정 (페이지 띄우기)
		@RequestMapping("/pricemodify.do")
		public void priceModifyMange(PriceVO vo, Model m) { 
			PriceVO result = goodsService.getPriceById(vo);
			m.addAttribute("price", result);
		}
	
	//가격정보 수정
	@RequestMapping("/updatePrice.do")
	public String updateprice(PriceVO vo, Model m) {
		goodsService.updatePrice(vo);
		return "redirect:pricemodify.do?p_id="+vo.getP_id();
	}
	
	//가격정보 삭제하기
	@RequestMapping("/deletePrice.do")
	public String deleteprice(PriceVO vo, Model m) {
		goodsService.deletePrice(vo);
		return "redirect:pricemange.do?id="+vo.getId();
	}

/*
    #############
	#   카드 관련 컨트롤러    #
	#############
*/	
	
	//카드 목록 검색
	@RequestMapping("/cardmange.do")
	public void getCardList(CardVO vo, Model model) { 
		List<CardVO> result = goodsService.getCardList(vo); 
		model.addAttribute("cardList",result);
	}
		
	//카드 등록
	@RequestMapping("/insertCard.do")
	public String insertCard(CardVO vo) throws IOException{
		goodsService.insertCard(vo);
		return "redirect:cardmange.do?id="+vo.getId();
	}
	
	//카드 정보 수정 (페이지 띄우기)
	@RequestMapping("/cardmodify.do")
	public void cardmodify(CardVO vo, Model m) { 
		CardVO result = goodsService.getCardById(vo);
		m.addAttribute("card", result);
	}

	
	//카드 수정
	@RequestMapping("/updateCard.do")
	public String updateCard(CardVO vo, Model m) {
		goodsService.updateCard(vo);		
		return "redirect:cardmange.do?id="+vo.getId();
	}
	
	//카드 삭제하기
	@RequestMapping("/deleteCard.do")
	public String deleteCard(CardVO vo, Model m) {
		goodsService.deleteCard(vo);
		
		return "redirect:cardmange.do?id="+vo.getId();
	}
	  
	
    @RequestMapping("/logout.do")
    public String logout(HttpSession session) {
        // 세션을 제거하여 로그아웃 처리
        session.invalidate();
        
        // 로그아웃 후 리다이렉트
        return "redirect:/user/main.do";
    }
    
    @RequestMapping("/inquiryreigster.do")
    public String inquiryreigster(SupplierBoardVO vo, Criteria cri, RedirectAttributes redirectAttributes) {
    	supplierBoardService.inquiryreigster(vo);
    	redirectAttributes.addAttribute("id", cri.getId());
    	System.out.println("inquiryreigster.do.Criteria :" + cri.getId());
    	return "redirect:inquirymange.do";
    }
    
    //공급사 페이지에서 렌탈리스트뽑기
    @RequestMapping("/rentalmange.do")
    public void rentalList(@ModelAttribute("cri") Criteria cri, Model model) {
    	
    	int total = userBoardService.getTotalRental(cri);

    	PageVO pageVO = new PageVO(cri, total );
	
    	List<UserRentalVO> result = userBoardService.rentalList(cri);

    	model.addAttribute("pageVO", pageVO); 
    	model.addAttribute("rentList",result);
 	
    }
    
	  @RequestMapping("/rentalmanging.do")
	  public String rentalmanging(@RequestParam List<String> b_id, @RequestParam List<Integer> b_stat, @RequestParam List<Integer> b_rent, Criteria cri, RedirectAttributes redirectAttributes) {
		  	
	        for (int i = 0; i < b_id.size(); i++) {
	        	userBoardService.updateStat(b_stat.get(i), b_id.get(i), b_rent.get(i));
	        }

	    	
	    	redirectAttributes.addAttribute("searchCondition", cri.getSearchCondition());
	    	redirectAttributes.addAttribute("searchKeyword", cri.getSearchKeyword());
	        redirectAttributes.addAttribute("pageNum", cri.getPageNum());
	        redirectAttributes.addAttribute("amount", cri.getAmount());
	        redirectAttributes.addAttribute("id", cri.getId());
	        
		  return "redirect:rentalmange.do";
	  }	     
    
    
    
    
	    @RequestMapping("/inquirymange.do")
	    public void inquiryList(@ModelAttribute("cri") Criteria cri , Model model) {
	    	
	    	System.out.println("inquirymange.do.cri.getID :" + cri.getId());
	    	PageVO pageVO = new PageVO(cri, supplierBoardService.getTotalinquiry(cri));
	    	List<SupplierBoardVO> result = supplierBoardService.inquiryList(cri);
	    	model.addAttribute("pageVO", pageVO); 
	    	model.addAttribute("inquiryList",result);
	    	

	    }

	  @RequestMapping("/inquiryend.do")
	  public void getSupplyanswerend(SupplierBoardVO vo, Model m) {
		  SupplierBoardVO result = supplierBoardService.getSupplierBoard(vo);
		  m.addAttribute("supplierBoard", result);
	  }	 	
 

	
	  
}