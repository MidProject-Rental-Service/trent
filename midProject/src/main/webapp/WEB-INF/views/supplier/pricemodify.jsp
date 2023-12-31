<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.mid.mvc.domain.UserVO"%>

<% 
  UserVO user = (UserVO) session.getAttribute("loggedInUser");
%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>가격정보 등록</title>

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
							id="headerCollapse" href="javascript:void(0)"> <i
								class="ti ti-menu-2"></i>
						</a></li>
						<li class="nav-item"></li>
					</ul>
					<div class="navbar-collapse justify-content-end px-0"
						id="navbarNav"></div>
				</nav>
			</header>
			
		<!--  메인 페이지 -->
		
		
		<div class="container-fluid">
			<main>
				<div class="py-5 text-left">
					<h1>가격수정</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form action="updatePrice.do" method='post' enctype="multipart/form-data">
							<input name="p_id" type="hidden" value="${price.p_id}" />	
							<input name="s_name" type="hidden" value="<%= user.getName() %>" />
							<input name="id" type="hidden" value="<%= user.getId() %>" />
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-2">
										<label for="contractperiod" class="form-label">약정기간</label>
									    <select class="form-select" id="contractperiod" name="p_rent" disabled>
									        <option value="">약정기간 선택</option>
									        <option value="12" ${price.p_rent == '12' ? 'selected' : ''}>12개월</option>
									        <option value="24" ${price.p_rent == '24' ? 'selected' : ''}>24개월</option>
									        <option value="36" ${price.p_rent == '36' ? 'selected' : ''}>36개월</option>
									        <option value="48" ${price.p_rent == '48' ? 'selected' : ''}>48개월</option>
									        <option value="60" ${price.p_rent == '60' ? 'selected' : ''}>60개월</option>
									        <option value="72" ${price.p_rent == '72' ? 'selected' : ''}>72개월</option>
									    </select>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label for="g_id" class="form-label">월렌탈요금</label>
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="g_id" name="p_price" value="${price.p_price}">
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label for="g_id" class="form-label">카드할인가</label>
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="g_id" name="p_card" value="${price.p_card}">
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label for="g_id" class="form-label">사은품혜택</label>
									</div>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="g_id" name="p_gift" value="${price.p_gift}">
									</div>
								</div>

								<div class="row">
									<div class="col-sm-7">
										<label for="g_id" class="form-label">가입조건입력</label>
										<textarea class="form-control" id="g_id" name="p_text" rows="6">${price.p_text}</textarea>
									</div>
								</div>

								<hr>

								<div class="row text-center">
									<div class="col-sm-10">
										<input class="btn btn-primary mx-2" type="submit" value="수정하기" />
										<a class="btn btn-secondary mx-2"	 href="pricemange.do?id=${price.id}">취소 및 뒤로가기</a>
										<a class="btn btn-danger mx-2" href="<c:url value='/supplier/deletePrice.do?p_id=${price.p_id}&id=${price.id}'/>">삭제하기</a>
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
	<script	src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
	<script	src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../src/assets/js/sidebarmenu.js"></script>
	<script src="../src/assets/js/app.min.js"></script>
	<script	src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script	src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="../src/assets/js/dashboard.js"></script>
</body>
</html>