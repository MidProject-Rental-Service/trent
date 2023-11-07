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
					<a href="./admin_index.do" class="text-nowrap logo-img"> <img
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

		<!--  Sidebar End -->
		<!--  Main wrapper -->

		<div class="container">
			<main>
				<div class="py-5 text-left">
					<h1>사용자 문의 답변남기기</h1>
					<p class="lead"></p>
				</div>
				
				
				<div class="row g-5">
					<div class="col-md-12">
						<form action="userinquiryanswering.do" method='post'
							enctype="multipart/form-data">
							<!-- hidden 으로 값주기 -->
							<input type="hidden" name="ub_id" value="${userBoard.ub_id}">
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-2">
										<label  class="form-label">사용자명</label> <input
											type="text" class="form-control"  value="${userBoard.name }"
											readonly>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label  class="form-label">연락처</label> <input
											type="text" class="form-control" value="${userBoard.phone }"
											readonly>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label  class="form-label">문의유형</label> <input
											type="text" class="form-control" name="g_name" value="${userBoard.ub_head }"
											readonly>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label for="g_name" class="form-label">문의제목</label> <input
											type="text" class="form-control"  value="${userBoard.ub_title }" readonly>
									</div>
								</div>



								<div class="row">
								    <div class="col-sm-9">
								        <label  class="form-label">문의내용</label>
								        <textarea class="form-control" rows="8" readonly>${userBoard.ub_content}</textarea>
								    </div>
								</div>


								<div class="row">
									<div class="col-sm-9">
										<label for="ub_answer" class="form-label">답변내용</label>
										<textarea class="form-control" name="ub_answer" rows="8" ></textarea>
									</div>
								</div>



								<div class="row">
									<div class="col-md-2"></div>
									<div class="col-md-2"></div>
									<div class="col-md-2 ub-answerbtn user-info text-center">
										<button type="submit" class="btn btn-primary" >답변하기</button>
									</div>
									<div class="col-md-2 ub-canclebtn user-info text-center">
										<a href="userinquiry.do"
											class="btn btn-danger">취소하기</a>
									</div>
									<div class="col-md-2"></div>
									<div class="col-md-2"></div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</main>

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