<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<a href="./main.do"><i class="fa fa-home"></i> Home</a> <span>전체렌탈상품</span>
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
				<h5 class="search" >"${searchKeyword }" 검색결과 ${cnt} 개의 
					제품이 있습니다</h5>
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
								<div class="select-option">
									<select class="sorting">
										<option value="">정렬</option>
									</select> <select class="p-show">
										<option value="">모아보기:</option>
									</select>
								</div>
							</div>
							<div class="col-lg-5 col-md-5 text-right">
								<p>Show 01- 09 Of 36 Product</p>
							</div>
						</div>
					</div>
					<div class="product-list">
						<div class="row">

							<c:forEach items="${goodsList}" var="list">
								<div class="col-lg-4 col-sm-6">
									<div class="product-item">
										<div class="pi-pic">
											<a href="product.do?b_id=${list.g_id }">
											<img src="../img/products/${list.g_rimg1}" alt="">
												<div class="sale pp-sale">Sale</div>
												<div class="icon">
													<i class="icon_heart_alt"></i>
												</div>
											</a>
											<ul>
												<li class="w-icon active"><a href="#"><i
														class="icon_bag_alt"></i></a></li>
												<li class="quick-view"><a href="#">+ Quick View</a></li>
												<li class="w-icon"><a href="#"><i
														class="fa fa-random"></i></a></li>
											</ul>
										</div>
										<div class="pi-text">
											<a href="#">
												<h5>${list.g_name}</h5>
											</a>
											<div class="product-price">
												<span>$35.00</span> $14.00

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
