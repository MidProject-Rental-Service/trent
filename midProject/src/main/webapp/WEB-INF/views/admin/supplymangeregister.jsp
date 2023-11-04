<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<!-- Sidebar Start -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div>
				<div
					class="brand-logo d-flex align-items-center justify-content-between">
					<a href="./admin_index.do"
						class="text-nowrap logo-img"> <img
						src="../src/assets/images/logos/dark-logo.svg"
						width="180" alt="" />
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
							href="admin_index.do" aria-expanded="false" style="font-size: 25px;">
								<span> <i class="ti ti-layout-dashboard"></i>
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
							href="statistics.do" aria-expanded="false" style="font-size: 25px;">
								<span> <i class="ti ti-presentation"></i>
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

		</div>

		<!-- 메인 페이지 -->

		<div class="container">
			<main>
				<div class="py-5 text-center">
					<h1>공급사 등록</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form action="insertSupply.do"  class="needs-validation" novalidate >
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="id" class="form-label">아이디</label> <input
											type="text" class="form-control" name="id" >
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="pwd" class="form-label">비밀번호</label> <input
											type="text" class="form-control" name="pwd">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="name" class="form-label">회사명</label> <input
											type="text" class="form-control" name="name">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="phone" class="form-label">회사번호</label> <input
											type="text" class="form-control" name="phone">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="addr" class="form-label">회사주소</label> <input
											type="text" class="form-control" name="addr">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="email" class="form-label">이메일</label> <input
											type="text" class="form-control" name="email">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row text-center">
									<div class="col-sm-12">
										<input class="btn btn-primary" type="submit" value="등록하기"  /> <a
											class="btn btn-danger mx-2" href="supplymange.do">취소하기</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</main>

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