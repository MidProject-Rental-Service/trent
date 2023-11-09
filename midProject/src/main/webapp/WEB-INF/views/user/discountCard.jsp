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

	<div id="container">
		<div class="main-contents">
			<div class="main-banner-img">
				<img src="../img/bannerCard.png">
			</div>
			
			<div class="card-containe">
				<div class="sponsor_card_box">
					<form action="">
						<article class="sponsor_card" data-scmcode="LG-Hellovision">
							<div class="rental_title">
								<img src="../img/arrow-alt-circle-down.png" class=""
									style="width: 30px">
								<h2>LG헬로비전</h2>
								<hr />
							</div>
							<ul class="card_box" style="display: none;">
								<li><img src="../img/cards/6989c7c7-d978-446c-9a3b-b57a4a9228f2_kb.jpg"></li><hr/>
								<li><img src="../img/cards/4bdff3d9-6366-4eb6-aa33-feb9dcf4b68d_lotte.jpg"></li><hr/>
								<li><img src="../img/cards/8d266048-1cef-407c-8b42-fb29d29879f7_lotte_SE.jpg"></li><hr/>
								<li><img src="../img/cards/e82d0d90-d0ff-4c40-b60a-37330ee8ed04_shinhan.jpg"></li><hr/>
								<li><img src="../img/cards/26cc0386-6742-4799-8a52-58e065715469_hana.jpg"></li>
							</ul>
						</article>
					</form>
				</div>
			</div>
			
			<div class="card-containe">
				<div class="sponsor_card_box">
					<form action="">
						<article class="sponsor_card" data-scmcode="SK-maigic">
							<div class="rental_title">
								<img src="../img/arrow-alt-circle-down.png" class=""
									style="width: 30px">
								<h2>SK매직</h2>
								<hr />
							</div>
							<ul class="card_box" style="display: none;">
								<li><img src="../img/cards/395d558a-758e-4697-83db-ecf59eb9ab91_kj.jpg"></li><hr/>
								<li><img src="../img/cards/5890805b-0a55-4b74-9019-5f4ad96dbf50_kb.jpg"></li><hr/>
								<li><img src="../img/cards/3ba800c1-a84b-4079-9dee-44d3dd26f7d3_lotte_SE.jpg"></li><hr/>
								<li><img src="../img/cards/21ea664f-f6ae-43cc-8e6f-19924c3ea2ef_lotte.jpg"></li><hr/>
								<li><img src="../img/cards/91cbeca7-dd79-4a9a-b551-2e06ac6dcd99_woori.jpg"></li><hr/>
								<li><img src="../img/cards/58de1f76-0e98-468b-a986-2bde79f9fe81_samsung.jpg"></li><hr/>
								<li><img src="../img/cards/ac4ad219-2a99-4fe9-9ff6-58c2ddddc2cc_hana.jpg"></li><hr/>
								<li><img src="../img/cards/a77af796-d6e4-415d-b7db-308c6ce7b828_hd.jpg"></li>
						</article>
					</form>
				</div>
			</div>
			
			<div class="card-containe">
				<div class="sponsor_card_box">
					<form action="">
						<article class="sponsor_card" data-scmcode="bs-rental">
							<div class="rental_title">
								<img src="../img/arrow-alt-circle-down.png" class=""
									style="width: 30px">
								<h2>BS렌탈</h2>
								<hr />
							</div>
							<ul class="card_box" style="display: none;">
								<li><img src="../img/cards/58ba25b6-f58e-47e1-a787-215c33fc53f6_lotte.jpg"></li><hr/>
								<li><img src="../img/cards/60cf3f6c-b873-4e13-ac6d-d6df08404f80_woori.jpg"></li><hr/>
								<li><img src="../img/cards/ebfd63e0-2384-4c44-ab85-9a5ee330a764_hana.jpg"></li>
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