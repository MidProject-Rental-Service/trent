<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Modernize Free</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="../src/assets/css/styles.min.css" />
</head>

<body>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">
		<!-- Sidebar Start -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div>
				<div
					class="brand-logo d-flex align-items-center justify-content-between">
					<a href="http://localhost:8080/midProject/index.jsp"
						class="text-nowrap logo-img"> <img
						src="../src/assets/images/logos/dark-logo.svg" width="180" alt="" />
					</a>
					<div
						class="close-btn d-xl-none d-block sidebartoggler cursor-pointer"
						id="sidebarCollapse">
						<i class="ti ti-x fs-8"></i>
					</div>
				</div>
				<!-- 사이드바 네비게이션-->
				<nav class="sidebar-nav scroll-sidebar" data-simplebar="">
					<ul id="sidebarnav">


						<li class="sidebar-item"><a class="sidebar-link"
							href="admin_index.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i
									class="ti ti-layout-dashboard"></i>
							</span> <span class="hide-menu">대시보드</span>
						</a></li>


						<li class="sidebar-item"><a class="sidebar-link"
							href="usermange.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i class="ti ti-user"></i>
							</span> <span class="hide-menu">사용자관리</span>
						</a></li>
						<li class="sidebar-item"><a class="sidebar-link"
							href="supplymange.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i
									class="ti ti-file-description"></i>
							</span> <span class="hide-menu">공급사관리</span>
						</a></li>

						<li class="sidebar-item"><a class="sidebar-link"
							href="productmange.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i
									class="ti ti-package"></i>
							</span> <span class="hide-menu">제품관리</span>
						</a></li>

						<li class="sidebar-item"><a class="sidebar-link"
							href="statistics.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i
									class="ti ti-presentation"></i>
							</span> <span class="hide-menu">통계</span>
						</a></li>






						<li class="sidebar-item"></li>
					</ul>

				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!--  Sidebar End -->
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
			<!--  Header End -->
			<div class="container-fluid">
				<!--  Row 1 -->
				<div class="row">
					<div class="col-lg-8 d-flex align-items-strech">
						<div class="card w-100">
							<div class="card-body">
								<div
									class="d-sm-flex d-block align-items-center justify-content-between mb-9">
									<div class="mb-3 mb-sm-0">
										<h5 class="card-title fw-semibold">Sales Overview</h5>
									</div>
									<div>
										<select class="form-select">
											<option value="1">March 2023</option>
											<option value="2">April 2023</option>
											<option value="3">May 2023</option>
											<option value="4">June 2023</option>
										</select>
									</div>
								</div>
								<div id="chart"></div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="row">
							<div class="col-lg-12">
								<!-- Yearly Breakup -->
								<div class="card overflow-hidden">
									<!-- 오른쪽 하단 공급사 문의  -->
									<div class="card-body p-4">
										<h5 class="card-title mb-9 fw-semibold">Yearly Breakup</h5>
										<div class="row align-items-center">
											<div class="col-8">
												<h4 class="fw-semibold mb-3">$36,358</h4>
												<div class="d-flex align-items-center mb-3">
													<span
														class="me-1 rounded-circle bg-light-success round-20 d-flex align-items-center justify-content-center">
														<i class="ti ti-arrow-up-left text-success"></i>
													</span>
													<p class="text-dark me-1 fs-3 mb-0">+9%</p>
													<p class="fs-3 mb-0">last year</p>
												</div>
												<div class="d-flex align-items-center">
													<div class="me-4">
														<span
															class="round-8 bg-primary rounded-circle me-2 d-inline-block"></span>
														<span class="fs-2">2023</span>
													</div>
													<div>
														<span
															class="round-8 bg-light-primary rounded-circle me-2 d-inline-block"></span>
														<span class="fs-2">2023</span>
													</div>
												</div>
											</div>
											<div class="col-4">
												<div class="d-flex justify-content-center">
													<div id="breakup"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<!-- Monthly Earnings -->
								<div class="card">
									<div class="card-body">
										<div class="row alig n-items-start">
											<div class="col-8">
												<h5 class="card-title mb-9 fw-semibold">Monthly
													Earnings</h5>
												<h4 class="fw-semibold mb-3">$6,820</h4>
												<div class="d-flex align-items-center pb-1">
													<span
														class="me-2 rounded-circle bg-light-danger round-20 d-flex align-items-center justify-content-center">
														<i class="ti ti-arrow-down-right text-danger"></i>
													</span>
													<p class="text-dark me-1 fs-3 mb-0">+9%</p>
													<p class="fs-3 mb-0">last year</p>
												</div>
											</div>
											<div class="col-4">
												<div class="d-flex justify-content-end">
													<div
														class="text-white bg-secondary rounded-circle p-6 d-flex align-items-center justify-content-center">
														<i class="ti ti-currency-dollar fs-6"></i>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div id="earning"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 왼쪽 하단 사용자 문의 -->
				<div class="row">
					<div class="col-lg-4 d-flex align-items-stretch">
						<div class="card w-100">
							<div class="card-body p-4">
								<div class="mb-4">
									<h5 class="card-title fw-semibold">사용자 문의</h5>
								</div>
								<table class="table">
									<thead>
										<tr>
											<th scope="col">No</th>
											<th scope="col">문의 제목</th>
											<th scope="col">사용자</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${userBoardList }" var="list">
											<tr>
												<td><c:out value="${list.ub_id}" /></td>
												<td><c:out value="${list.ub_title}" /></td>
												<td><c:out value="${list.id}" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class="text-right">
									<a class="btn btn-primary" href="userinquiry.do">더보기</a>
								</div>
							</div>
						</div>
					</div>
					<!-- 오른쪽 하단 공급사 문의 -->
					<div class="col-lg-8 d-flex align-items-stretch">
						<div class="card w-100">
							<div class="card-body p-4">

								<h5 class="card-title fw-semibold mb-4">공급사 문의</h5>
								<table class="table">
									<thead>
										<tr>
											<th scope="col">No</th>
											<th scope="col">문의 제목</th>
											<th scope="col">공급사</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${supplierBoardList }" var="list">
											<tr>
												<td><c:out value="${list.sb_id}" /></td>
												<td><c:out value="${list.sb_title}" /></td>
												<td><c:out value="${list.id}" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class="text-right">
									<a class="btn btn-primary" href="supplyinquiry.do">더보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="py-6 px-6 text-center"></div>
			</div>
		</div>
	</div>
	<script src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../src/assets/js/sidebarmenu.js"></script>
	<script src="../src/assets/js/app.min.js"></script>
	<script src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="../src/assets/js/dashboard.js"></script>
</body>

</html>