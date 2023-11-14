package com.mid.mvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mid.mvc.domain.Criteria;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;

@Repository
public class UserBoardDAOImpl implements UserBoardDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;	
	
	public void insertUserBoard(UserBoardVO vo) {
		System.out.println("===> sqlSession insertUserBoard() 호출");
		System.out.println("=>" + vo.toString());
		int result = sqlSession.insert("UserBoardMapper.insertUserBoard", vo); 
		System.out.println("입력결과 : " + result);
	}
	
	
	public UserBoardVO getUserBoard(UserBoardVO vo) {
		System.out.println("===> sqlSession getUserBoard() 호출");
		System.out.println("===> " + vo.toString());
		return sqlSession.selectOne("UserBoardMapper.getUserBoard", vo);
		
	}
	
	//사용자 페이지에서 문의리스트
	public List<UserBoardVO> getUserBoardList(HashMap map) {
		System.out.println("===> sqlSession getUserBoardList() 호출");
		System.out.println("===> " + map.get("searchCondition") +" / " +map.get("searchKeyword"));
		System.out.println("===> " + map.get("startDate") +" / " +map.get("endDate"));
		System.out.println("===> " + map.get("id"));
		return sqlSession.selectList("UserBoardMapper.getUserBoardList",map);
	}
	
	//관리자 페이지에서 사용자 문의리스트
	public List<UserBoardVO> admingetUserBoardList(Criteria cri) {
		return sqlSession.selectList("UserBoardMapper.admingetUserBoardList", cri);
	}
	
	@Override
	public int getTotalUserinquiry(Criteria cri) {
		return sqlSession.selectOne("UserBoardMapper.getTotalUserinquiry", cri);
	}
	
	public List<UserBoardVO> dashboardUserBoardList(UserBoardVO vo) {
		return sqlSession.selectList("UserBoardMapper.dashboardUserBoardList", vo);
	}

	public List<UserRentalVO> getUserRentalList(HashMap map) {
		System.out.println("===> sqlSession getUserRentalList() 호출");
		System.out.println("===> " + map.get("searchCondition") +" / " +map.get("searchKeyword"));
		System.out.println("===> " + map.get("startDate") +" / " +map.get("endDate"));
		return sqlSession.selectList("UserBoardMapper.getUserRentalList",map);
	}

	@Override
	public void insertAnswer(UserBoardVO vo) {
		int result = sqlSession.update("UserBoardMapper.insertAnswer", vo);
		System.out.println("입력결과 : " + result);
	}


	@Override
	public int getTotal() {
	    int result = sqlSession.selectOne("UserBoardMapper.getTotal");
	    return result;
	}


	public List<UserRentalVO> rentalList(Criteria cri) {
		return sqlSession.selectList("UserBoardMapper.rentalList", cri);
	}
	

	public int getTotalRental(Criteria cri) {
		return sqlSession.selectOne("UserBoardMapper.getTotalRental", cri);
	}
	

	public List<UserRentalVO> getUserRecentList(HashMap map) {
		System.out.println("===> sqlSession getUserRecentList() 호출");
		return sqlSession.selectList("UserBoardMapper.getUserRecentList",map);
	}


	@Override
	public void updateStat(int b_stat, String b_id, int b_rent) {
		Map<String, Object> map = new HashMap<>();
		map.put("b_stat", b_stat);
		map.put("b_id", b_id);
		map.put("b_rent", b_rent);
		sqlSession.update("UserBoardMapper.updateStat", map);
		
		
		
	}






	
}
