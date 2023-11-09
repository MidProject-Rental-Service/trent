package com.mid.mvc.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PageVO;
import com.mid.mvc.domain.SupplierBoardVO;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserVO;
import com.mid.mvc.service.GoodsService;
import com.mid.mvc.service.SupplierBoardService;
import com.mid.mvc.service.UserBoardService;
import com.mid.mvc.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private static final Logger log = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private UserService userService;

	@Autowired
	private GoodsService goodsService;

	@Autowired
	private UserBoardService userBoardService;
	
	@Autowired
	private SupplierBoardService supplierBoardServcie;

	@Autowired
	private UserService userServiceImpl;	

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		System.out.println("Admin_controller호출");
		return  "admin/" + step;
	}

	//공급사 등록
	@RequestMapping("/insertSupply.do")
	public String insertBoard(UserVO vo) throws IOException {
		System.out.println(vo.toString());
		userService.insertSupply(vo);
		return "redirect:supplymange.do";
	}	
	
	//공급사 등록에서 아이디중복확인
	@RequestMapping("/idCheck.do") // id 중복체크
	@ResponseBody
	public String idCheck(String id) {
		int result = userServiceImpl.idCheck(id);
		return "" + result;
	}
	
	//사용자 전체 검색
	@RequestMapping("/usermange.do")
	public void userList(UserVO vo, Model model, Criteria cri) {
		List<UserVO> result = userService.getUserList(vo, cri);
		
		
		int total = userService.getTotal();
		
		model.addAttribute("userList",result);
		model.addAttribute("pageMaker", new PageVO(cri, total));
		System.out.println("Amount : " + cri.getAmount());
		System.out.println("StartNum : " + cri.getStartNum());
		System.out.println("PageNum : " + cri.getPageNum());
		
	}


	//공급사 전체 검색
	@RequestMapping("/supplymange.do")
	public void supplyList(UserVO vo, Model model) {
		System.out.println("supply호출");
		List<UserVO> result = userService.getSupplyList(vo);
		model.addAttribute("supplyList",result);
	}

	//상품등록
	@RequestMapping("/productregister.do")
	public String productRegister(GoodsVO vo) throws IOException{
		/* System.out.println(vo.toString()); */
		goodsService.productRegister(vo);
		return "redirect:productmange.do";
	}

	//상품 전체 검색
	@RequestMapping("/productmange.do")
	public void GoodsList(GoodsVO vo, Model model) { 
		System.out.println("GoodsList-controller호출"); 
		List<GoodsVO> result = goodsService.getGoodsList(vo); 
		model.addAttribute("goodsList",result); 
//		System.out.println("result :" + result);
	}	
	
	//상품 상세페이지 (내용 띄우기)
	@RequestMapping("/productmangemodify.do")
	public void getGoodsById(GoodsVO vo, Model model) {
	    // gId를 사용하여 해당 제품의 정보를 가져옴
	    GoodsVO product = goodsService.getGoodsById(vo);

	    model.addAttribute("product", product);
	}
	
	// 상품 수정하기
	@RequestMapping("/productModify.do")
	public String updateGoods(GoodsVO vo, Model model) {
		System.out.println("=====> productModify.do 요청");
		System.out.println(vo.toString());
		goodsService.updateGoods(vo);
		
		return "redirect:productmangemodify.do?g_id="+vo.getG_id();
	}
	
	// 상품 삭제하기
	@RequestMapping("/productDelete.do")
	public String deleteGoods(GoodsVO vo, Model m) {
		goodsService.deleteGoods(vo);
		
		return "redirect:productmange.do";
	}
	
    @RequestMapping("/logout.do")
    public String logout(HttpSession session) {
        // 세션을 제거하여 로그아웃 처리
        session.invalidate();
        
        // 로그아웃 후 리다이렉트
        return "redirect:/user/main.do";
    }
	
	
	  //관리자 페이지 대시보드 사용자 공급사 문의 5개만 검색
	  @RequestMapping("/admin_index.do") 
	  public void boardList(UserBoardVO vo, SupplierBoardVO vo2, Model model) { 
	  List<UserBoardVO>result = userBoardService.dashboardUserBoardList(vo);
	  List<SupplierBoardVO>result2 = supplierBoardServcie.dashboardSupplierBoardList(vo2);
	  System.out.println(result);
	  System.out.println(result2);
	  model.addAttribute("userBoardList",result);
	  model.addAttribute("supplierBoardList",result2); }
	 
	  //관리자 페이지에서 더보기 누르면 사용자 공급사 문의 전체 검색
	  @RequestMapping("/userinquiry.do")
	  public void adminUserBoardList(Model m) {
		  HashMap map = new HashMap();
	      List<UserBoardVO>result = userBoardService.admingetUserBoardList(map);
	      System.out.println(result);
	      m.addAttribute("userBoardList",result);		  		  
	  }
	  

	  //관리자 페이지에서 공급사문의 더보기 누르면 공급사
	  @RequestMapping("/supplyinquiry.do")
	  public void admingetSupplierBoardList(Model m) {
		  HashMap map = new HashMap();
	      List<SupplierBoardVO>result = supplierBoardServcie.admingetSupplierBoardList(map);
	      System.out.println("admingetSupplierBoardList: " + result);
	      m.addAttribute("admingetSupplierBoardList",result);		  		  
	  }	  

	  //사용자 문의 상세보기
	  @RequestMapping("/userinquiryanswer.do")
	  public void getUserBoard(UserBoardVO vo, Model m) {
		  UserBoardVO result = userBoardService.getUserBoard(vo);
		  m.addAttribute("userBoard", result);
		  System.out.println(m.toString());

	  }	  
	  
	  //공급사 문의 상세보기
	  @RequestMapping("/supplyinquiryanswer.do")
	  public void getSupplyBoard(SupplierBoardVO vo, Model m) {
		  SupplierBoardVO result = supplierBoardServcie.getSupplierBoard(vo);
		  m.addAttribute("supplierBoard", result);
		  System.out.println("supplyinquiryanswer호출");
		  System.out.println(m.toString());
	  }	  
	  
	  //사용자 문의 답변하기 Insert
	  @RequestMapping("/userinquiryanswering.do")
	  public String insertAnswer(UserBoardVO vo, Model m) {
		  userBoardService.insertAnswer(vo);
		  System.out.println("ub_answer : " + vo.getUb_answer());
		  System.out.println("ub_id : "+ vo.getUb_id() );
		  return "redirect:userinquiry.do";
		  
	  }	 	
	  
	  //공급사 문의 답변하기 Insert
	  @RequestMapping("/supplyinquiryanswering.do")
	  public String insertAnswerSupplier(SupplierBoardVO vo, Model m) {
		  supplierBoardServcie.insertAnswer(vo);;
		  return "redirect:supplyinquiry.do";
		  
	  }	 	

	  //사용자 문의완료 후 상세보기
	  @RequestMapping("/userinquiryanswerend.do")
	  public void getUseranswerend(UserBoardVO vo, Model m) {
		  UserBoardVO result = userBoardService.getUserBoard(vo);
		  m.addAttribute("userBoard", result);

	  }		  

	  //공급사 문의완료 후 상세보기
	  @RequestMapping("/supplyinquiryanswerend.do")
	  public void getSupplyanswerend(SupplierBoardVO vo, Model m) {
		  SupplierBoardVO result = supplierBoardServcie.getSupplierBoard(vo);
		  m.addAttribute("supplierBoard", result);
	  }	  	  
	  
	  //사용자 정보 상세보기
	  @RequestMapping("/usermangemodify.do")
	  public void userMangeDetail(UserVO vo, Model m) {
		  UserVO result = userService.userDetail(vo);
		  m.addAttribute("user", result);
	  }
	  
	  //사용자 정보 수정하기
	  @RequestMapping("/usermangemodifing.do")
	  public String userMangeModify(UserVO vo, Model m) {
		  System.out.println("id : " + vo.getId());
		  userService.userModify(vo);
		  System.out.println(vo.toString());
		  return "redirect:usermangemodify.do?id=" + vo.getId();
	  }
	
	  //공급사 정보 상세보기
	  @RequestMapping("/supplymangemodify.do")
	  public void supplyMangeDetail(UserVO vo, Model m) {
		  UserVO result = userService.userDetail(vo);
		  m.addAttribute("supply", result);
	  }
	  
	  //공급사 정보 수정하기
	  @RequestMapping("/supplymangemodifing.do")
	  public String supplyMangeModify(UserVO vo, Model m) {
		  userService.userModify(vo);
		  System.out.println(vo.toString());
		  return "redirect:supplymangemodify.do?id=" + vo.getId();
	  }	
	  
}
