<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>discountCard 할인카드</title>
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
<link rel="stylesheet" href="../css/rent-discountCard-style.css"
	type="text/css">


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

	<div id="containe">
		<div class="main-contents">
			<div class="main-banner-img">
				<img src="../img/bannerCard.png">
			</div>
			<div class="card-containe">
				<div class="sponsor_card_box">
				
					<form action="">
						<article class="sponsor_card" data-scmcode="bs-rental">
							<div class="rental_title">
								<img src="../img/arrow-alt-circle-down.png" class=""
									style="width: 30px">
								<h2>BS렌탈</h2>
								<p>
									"월 렌탈료 " <span>10,000원 - 25,000원 할인</span> " 혜택"
								</p>
								<hr />
							</div>
							<ul class="card_box" style="display: none;">
								<li><img src="../img/card-1.png"></li>
								<li><img src="../img/card-2.png"></li>
								<li><img src="../img/card-3.png"></li>
							</ul>
						</article>
					</form>

				</div>
			</div>
		</div>
	</div>


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
	<script src="../js/discountCard.js"></script>
	<jsp:include page="./footer.jsp" />
</body>

</html>