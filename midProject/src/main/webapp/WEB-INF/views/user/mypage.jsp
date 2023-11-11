<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>마이페이지MY PAGE</title>

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
<style type="text/css">
tbody.recent-table tr td {
	text-align: center;
}
</style>
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
						<a href="./main.do"><i class="fa fa-home"></i> Home</a> <span>마이페이지</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Form Section Begin -->

	<!-- Mypage Section Begin -->
	<section class="mypage spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="mypage-table">
						<h2>마이페이지</h2>
						<div class="mypage-menu">
							<a href="./applicationList.do"><i class="fa fa-file-text"></i>
								<p>신청목록</p> </a> <a href="./reviewManagement.do"><i
								class="fa fa-star"></i>
								<p>리뷰관리</p> </a> <a href="./inquiryList.do"><i
								class="fa fa-commenting"></i>
								<p>1:1문의</p> </a> <a href="./edit_info.do"><i
								class="fa fa-pencil-square"></i>
								<p>회원정보수정</p> </a>
						</div>
						<div class="mypage_order_info">
							<div class="mypage_zone_tit">
								<h3>
									진행 중인 신청 <span>최근 30일 내에 진행중인 신청정보입니다.</span>
								</h3>
							</div>
							<div class="mypage_order_info_cont">
								<ol>
									<li><b>렌탈신청</b> <strong>${cnt1}</strong></li>
									<li><i class="fa fa-arrow-right"></i></li>
									<li><b>해피콜진행</b> <strong>${cnt2}</strong></li>
									<li><i class="fa fa-arrow-right"></i></li>
									<li><b>주문확정</b> <strong>${cnt3}</strong></li>
									<li><i class="fa fa-arrow-right"></i></li>
									<li><b>배송/설치중</b> <strong>${cnt4}</strong></li>
									<li><i class="fa fa-arrow-right"></i></li>
									<li><b>설치완료</b> <strong>${cnt5}</strong></li>
								</ol>
							</div>
						</div>
						<div class="mypage_order_info">
							<div class="mypage_zone_tit">
								<h3>
									최근 신청 정보 <span></span>
								</h3>
							</div>
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>렌탈신청일</th>
											<th>상품명</th>
											<th>진행상태</th>
											<th>렌탈비용</th>
										</tr>
									</thead>
									<tbody class="recent-table">
										<c:forEach items="${userRecentList}" var="userRecent"
											varStatus="loop">
											<c:if test="${loop.index < 7}">
												<tr>
													<c:set var="formattedDate" value="${userRecent.b_signdate}" />
													<fmt:formatDate pattern="yyyy-MM-dd"
														value="${formattedDate}" var="formattedDateString" />
													<td>${formattedDateString}</td>
													<td>${userRecent.g_name}</td>
													<c:choose>
														<c:when test="${userRecent.b_stat == 0}">
															<td>취소</td>
														</c:when>
														<c:when test="${userRecent.b_stat == 1}">
															<td>렌탈신청</td>
														</c:when>
														<c:when test="${userRecent.b_stat == 2}">
															<td>해피콜진행</td>
														</c:when>
														<c:when test="${userRecent.b_stat == 3}">
															<td>주문확정</td>
														</c:when>
														<c:when test="${userRecent.b_stat == 4}">
															<td>배송/설치중</td>
														</c:when>
														<c:when test="${userRecent.b_stat == 5}">
															<td>설치완료</td>
														</c:when>
														<c:when test="${userRecent.b_stat == 6}">
															<td>구매확정완료</td>
														</c:when>
													</c:choose>
													<td>${userRecent.b_price}</td>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>


					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- mypage Section End -->


	<jsp:include page="./footer.jsp" />

</body>

</html>
