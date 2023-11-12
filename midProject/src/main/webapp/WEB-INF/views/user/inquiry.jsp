<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8" />
<meta name="description" content="Fashi Template" />
<meta name="keywords" content="Fashi, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>1:1문의</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="../css/themify-icons.css" type="text/css" />
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css" />
<link rel="stylesheet" href="../css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="../css/nice-select.css" type="text/css" />
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/rent-inquiry-style.css"
	type="text/css" />
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
						<li><a href="./shop.do">전체렌탈상품</a></li>
						<li><a href="./shop_best.do">BEST 상품</a>
						<li><a href="./discountCard.do">할인카드</a></li>
						<li  class="active"><a href="#">Pages</a>
							<ul class="dropdown">
								<c:if test="<%= loggedInUser != null %>">
								    <li><a href="./mypage.do">마이페이지</a></li>
									<li><a href="./shopping_cart.do">장바구니</a></li>
									<li><a href="./rental.do">렌탈신청</a></li>
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
						<a href="#"><i class="fa fa-home"></i> Home</a> <span>My
							Page</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<!--inquiry  Section Begin -->
	<section class="review-write-spad">
		<div class="container">
			<div class="row">
				<!-- 좌측 메뉴 -->
				<div
					class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
					<div class="mypage-menu-tab">
						<table class="mypage-tab">
							<tr>
								<th>마이페이지</th>
							</tr>
							<tr>
								<td><a href="./applicationList.do">신청목록</a></td>
							</tr>
							<tr>
								<td><a href="./reviewManagement.do">리뷰관리</a></td>
							</tr>
							<tr>
								<td><a href="./inquiryList.do">1:1문의</a></td>
							</tr>
							<tr>
								<td><a href="./edit_info.do">회원정보수정</a></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 좌측 메뉴 끝-->

				<!--inquiryWrite  Section Begin -->
				<input name="ub_id" type="hidden" value="${userBoard.ub_id}" />
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="menu-title">
						<h4>나의 문의내역</h4>
					</div>
					<div class="user-title">
						<h4>${userBoard.ub_title }</h4>
					</div>
					<div class="inquiry">
						<form class="inquiry-form" action="inquiryList.do" method="post">
							<div id="form-group" class="form-group row">
								<div class="col-md-6">
									<div class="form-group">
										<label for="ub_head">말머리목록</label> <input id="ub_head"
											name="ub_head" class="form-control" type="text"
											value="${userBoard.ub_head }" disabled>
									</div>
									<div class="form-group">
										<label for="id">아이디</label> <input id="id" name="id"
											class="form-control" type="text" value="${userBoard.id }"
											disabled>
									</div>
									<div class="form-group">
										<label for="name">이름</label> <input id="name" name="name"
											class="form-control" type="text" value="${userBoard.name }"
											disabled>
									</div>

								</div>
							</div>
							<div id="answer" class="form-group">
								<label for="answer-content">답변</label>
								<textarea id="answer-content" name="ub_answer"
									class="form-control" rows="4" cols="50" readonly="true">${userBoard.ub_answer }</textarea>
							</div>
							<div class="form-group">

								<textarea id="content" name="ub_content" class="form-control"
									rows="4" cols="50" readonly="true" style="background-color:#FFF">${userBoard.ub_content }</textarea>
							</div>
							<div class="form-group row">
								<div class="col-md-6 text-left">
									<button type="submit" class="btn btn-primary complete-btn">파일</button>
								</div>
								<div class="col-md-6 text-right">
									<button type="submit" class="btn btn-primary complete-btn">뒤로가기</button>
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
	</section>
	<!-- inquiryWrite  Section End -->

	<jsp:include page="./footer.jsp" />

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

	<jsp:include page="./footer.jsp" />

</body>
</html>
