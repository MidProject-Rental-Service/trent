<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.mid.mvc.domain.UserVO"%>

<% 
  UserVO user = (UserVO) session.getAttribute("loggedInUser");
%>
	
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>할인카드 등록</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<link rel="stylesheet" href="../src/assets/css/styles.min.css" />
</head>

<body>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">
		
		<jsp:include page="./supplier_header.jsp"/>
		
		<!--  Main wrapper -->
		<div class="body-wrapper">
			<!--  Header Start -->
			<header class="app-header">
				<nav class="navbar navbar-expand-lg navbar-light">
					<ul class="navbar-nav">
						<li class="nav-item d-block d-xl-none"><a
							class="nav-link sidebartoggler nav-icon-hover"
							id="headerCollapse" href="javascript:void(0)">
							<i	class="ti ti-menu-2"></i>
						</a></li>
						<li class="nav-item"></li>
					</ul>
					<div class="navbar-collapse justify-content-end px-0"
						id="navbarNav"></div>
				</nav>
			</header>

		<!--  메인 페이지 -->
		<div class="container">
			<main>
				<div class="py-5 text-left">
					<h1>할인카드 등록</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form action="updateCard.do" method='post' enctype="multipart/form-data">
						<input name="id" type="hidden" value="<%= user.getId() %>" />
						<input name="c_num" type="hidden" value="${card.c_num}" />
							<div class="row g-3">

								<div class="row">
									<div class="col-sm-4">
										<label for="cardImg1" class="form-label">할인카드1</label>
										<div class="input-group">
											<input type="file" class="form-control" name="cardImg1" readonly>
										</div>
										<div>기존 등록 파일 : ${card.c_img1}</div>
									</div>
								</div>

								<div class="row text-right">
									<div class="col-sm-4">
										<input class="btn btn-primary" type="submit" value="수정하기" />
										<a class="btn btn-secondary mx-2" href="cardmange.do?id=${card.id}">취소하기</a>
										<a class="btn btn-danger mx-2" href="deleteCard.do?c_num=${card.c_num}&id=${card.id}">삭제하기</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</main>

		</div>

	</div>

	</div>
	<!-- div 끝  -->
	<script
		src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../src/assets/js/sidebarmenu.js"></script>
	<script src="../src/assets/js/app.min.js"></script>
	<script
		src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script
		src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="../src/assets/js/dashboard.js"></script>
</body>
</html>