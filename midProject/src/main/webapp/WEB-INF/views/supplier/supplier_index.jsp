<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공급사 페이지</title>

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
			<!--  Header End -->
			<div class="container-fluid">
				<!--  Row 1 -->
				<div class="row">
					<div class="col-lg-12 d-flex align-items-strech">
						<div class="card w-100">
							<div class="card-body">
								<div
									class="d-sm-flex d-block align-items-center justify-content-between mb-9">
									<div class="mb-3 mb-sm-0">
										<h5 class="card-title fw-semibold">연간 렌탈 신청 통계</h5>
									</div>
									<div>
										<select class="form-select">
											<option value="1">2023</option>										
											<option value="2">2022</option>

										</select>
									</div>
								</div>
								<div id="chart"></div>
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
									<h5 class="card-title mb-9 fw-semibold">월별 주문통계</h5>
									<h4 class="fw-semibold mb-3">8,387,820₩</h4>
									<div class="d-flex align-items-center pb-1">
										<span
											class="me-2 rounded-circle bg-light-danger round-20 d-flex align-items-center justify-content-center">
											<i class="ti ti-arrow-down-right text-danger"></i>
										</span>
										<p class="text-dark me-1 fs-3 mb-0">+9%</p>
										<p class="fs-3 mb-0">전월 대비</p>
									</div>
								</div>
								<div class="col-4">
									<div class="d-flex justify-content-end">

									</div>
								</div>
							</div>
						</div>
						<div id="earning"></div>
					</div>
				</div>
			</div>




			<div class="py-6 px-6 text-center"></div>
		</div>
	</div>
	<script	src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
	<script	src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../src/assets/js/sidebarmenu.js"></script>
	<script src="../src/assets/js/app.min.js"></script>
	<script	src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script	src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="../src/assets/js/dashboard.js"></script>
</body>

</html>