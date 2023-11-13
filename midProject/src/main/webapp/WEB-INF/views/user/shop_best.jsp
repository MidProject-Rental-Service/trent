<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page import="java.util.List"%>
<%@ page import="com.mid.mvc.domain.GoodsVO"%>

<%
	List<GoodsVO> goodsList = (List<GoodsVO>) request.getAttribute("goodsList");
%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Trent | 트렌디한 가전 렌탈</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="../css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../css/style.css" type="text/css">

</head>

<body>

	<%-- 세션에서 로그인 정보 가져오기 --%>
	<%
		UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
	%>

	<%-- 로그인 상태에 따라 다른 헤더 포함 --%>
	<c:if test="<%=loggedInUser != null%>">
		<%@ include file="header_after.jsp"%>
	</c:if>
	<c:if test="<%=loggedInUser == null%>">
		<%@ include file="header_before.jsp"%>
	</c:if>
	
	<!-- Scroll to Top Script -->
  <script>
    // 스크롤이 일정 부분 이상 내려갔을 때 버튼을 보이게 하기
    window.onscroll = function () {
      scrollFunction();
    };

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("scrollTopBtn").style.display = "block";
      } else {
        document.getElementById("scrollTopBtn").style.display = "none";
      }
    }

    // 최상단으로 스크롤하는 함수
    function scrollToTop() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
  </script>
	
	<%-- nav bar --%>
	<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>All departments</span>
						<ul class="depart-hover">
							<li class="active"><a href="./shop_search.do?searchCondition=total&searchKeyword=공기청정기">공기청정기</a></li>
							<li><a href="./shop_search.do?searchCondition=total&searchKeyword=가습기">가습기</a></li>
							<li><a href="./shop_search.do?searchCondition=total&searchKeyword=제습기">제습기</a></li>
						</ul>
					</div>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						<li><a href="./main.do">Home</a></li>
						<li><a href="./shop.do">전체렌탈제품</a></li>
						<li class="active"><a href="./shop_best.do">BEST 제품</a>
						<li><a href="./discountCard.do">할인카드</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<c:if test="<%= loggedInUser != null %>">
								    <li><a href="./mypage.do">마이페이지</a></li>
									<li><a href="./shopping_cart.do">장바구니</a></li>
									<li><a href="./cart-rental.do">렌탈신청</a></li>
								</c:if>
								<c:if test="<%= loggedInUser == null %>">
								    <li><a href="./join.do">회원가입</a></li>
									<li><a href="./login.do">로그인</a></li>
								</c:if>
							</ul>
						</li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>

	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<a href="./main.do"><i class="fa fa-home"></i> Home</a> <span>BEST 제품</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->

	<!-- Product Shop Section Begin -->
	<section class="product-shop spad">
		<div class="container">
			<div class="filter-widget">
				<h6 class="search" style="visibility: hidden">"OOO" 검색결과 ${cnt} 개의 
					제품이 있습니다</h6>
			</div>
			<div class="row">
				<div
					class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
					<div class="filter-widget">
						<h4 class="fw-title">Categories</h4>
						<ul class="filter-catagories">
							<li><a href="#" onclick="searchCategory('공기청정기')">공기청정기</a></li>
							<li><a href="#" onclick="searchCategory('가습기')">가습기</a></li>
							<li><a href="#" onclick="searchCategory('제습기')">제습기</a></li>
						</ul>
					</div>
					<div class="filter-widget">
						<h4 class="fw-title">Brand</h4>
						<div class="fw-brand-check">
							<div class="bc-item">
								<label for="엘지"> LG <input type="checkbox"
									id="엘지"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="bc-item">
								<label for="삼성"> SAMSUNG <input type="checkbox"
									id="삼성"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="bc-item">
								<label for="샤오미"> XIOMI <input type="checkbox"
									id="샤오미"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="bc-item">
								<label for="다이슨"> DYSON <input type="checkbox"
									id="다이슨"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="bc-item">
								<label for="위닉스"> WINIX <input type="checkbox"
									id="위닉스"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="bc-item">
								<label for="에어메이드"> 에어메이드 <input type="checkbox"
									id="에어메이드"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="bc-item">
								<label for="듀플렉스"> DUPLEX <input type="checkbox"
									id="듀플렉스"> <span class="checkmark"></span>
								</label>
							</div>
						</div>
					</div>
					<div class="filter-widget">
						<h4 class="fw-title">Price</h4>
						<div class="filter-range-wrap">
							<div class="range-slider">
								<div class="price-input">
									<input type="text" id="minamount"> <input type="text"
										id="maxamount">
								</div>
							</div>
							<div
								class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
								data-min="5000" data-max="100000">
								<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
								<span tabindex="1000"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
								<span tabindex="1000"
									class="ui-slider-handle ui-corner-all ui-state-default"></span>
							</div>
						</div>
						<a href="#" class="filter-btn">검색</a>
					</div>

				</div>
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="product-show-option">
						<div class="row">
							<div class="col-lg-7 col-md-7">
							</div>
							<div class="col-lg-5 col-md-5 text-right">
								<p>Show 1- ${cnt} Of ${cnt} Product</p>
							</div>
						</div>
					</div>
					<div class="product-list">
						<div class="row">

							<c:forEach items="${bestList}" var="list">
								<div class="col-lg-4 col-sm-6">
									<div class="product-item">
										<div class="pi-pic">
											<a href="product.do?g_id=${list.g_id }">
											<img src="../img/products/${list.g_rimg1}" alt="">
												<div class="sale pp-sale">BEST</div>
											</a>
										</div>
										<div class="pi-text">
											<a href="product.do?g_id=${list.g_id }">
												<h5>${list.g_name}</h5>
											</a>
											<div class="product-price">
												<span>최저렌탈가</span> 월
												<fmt:formatNumber type="number" pattern="#,##0" value="${list.MIN_PRICE}" /> 원
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							
							<c:forEach items="${goodsList}" var="list2">
								<div class="col-lg-4 col-sm-6">
									<div class="product-item">
										<div class="pi-pic">
											<a href="product.do?g_id=${list2.g_id }">
											<img src="../img/products/${list2.g_rimg1}" alt="">
											</a>
										</div>
										<div class="pi-text">
											<a href="product.do?g_id=${list2.g_id }">
												<h5>${list2.g_name}</h5>
											</a>
											<div class="product-price">
												<span>최저렌탈가</span> 월
												<fmt:formatNumber type="number" pattern="#,##0" value="${list2.MIN_PRICE}" /> 원
											</div>
										</div>
									</div>
								</div>
							</c:forEach>

						</div>
					</div>
				</div>
	</section>
	<!-- Product Shop Section End -->
	
	<button id="scrollTopBtn" onclick="scrollToTop()" title="Go to top">
    	<i class="fa fa-arrow-up"></i>
  	</button>
	

	<!-- Js Plugins -->
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery-ui.min.js"></script>
	<script src="../js/jquery.countdown.min.js"></script>
	<script src="../js/jquery.nice-select.min.js"></script>
	<script src="../js/jquery.zoom.min.js"></script>
	<script src="../js/jquery.dd.min.js"></script>
	<script src="../js/jquery.slicknav.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/main.js"></script>
	<script src="../js/shopSearch.js"></script>


	<jsp:include page="./footer.jsp" />

</body>

</html>
