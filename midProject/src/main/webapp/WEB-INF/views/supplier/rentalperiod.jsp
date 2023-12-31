<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Modernize Free</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<link rel="stylesheet"
	href="../src/assets/css/styles.min.css" />
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

		</div>

		<!--  사이드바 끝 -->

		<!--  메인페이지 -->
		
		<div class="container">

			<div class="row">
				<div class="col-sm-12">
					<div class="py-5 text-start">
						<h1>제품관리</h1>
						<p class="lead"></p>
					</div>
					<a href="productpriceregister.do" class="btn btn-primary float-end">등록하기</a>
				</div>
			</div>

			<section id="container">
				<form role="form" method="get">

					<table class="table table-hover">
						<thead>
							<tr>
								<th>약정기간</th>
								<th>월렌탈요금</th>
								<th>카드할인가</th>
							</tr>
						</thead>

						<c:forEach items="${goodsList}" var="list">
							<tr>
								<td><c:out value="${list.g_img}" /></td>
								<td><a href="productmangemodify.do?g_id=${list.g_id}"><c:out value="${list.g_name}" /></a></td>		
								<td><a href="productmangemodify.do?g_id=${list.g_id}"><c:out value="${list.g_id}" /></a></td>	
								<!--  제품 분류라는데 몬지 모르겠음 -->
								<!-- 답변을 추가하면 btn 생성하게 하는법?? -->
									</tr>
						</c:forEach>

					</table>
					
				</form>
			</section>
		</div>
	</div>
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