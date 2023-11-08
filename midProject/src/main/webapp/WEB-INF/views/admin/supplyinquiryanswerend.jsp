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

	<jsp:include page="./admin_header.jsp"/>

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

		<div class="container">
			<main>
				<div class="py-5 text-left">
					<h1>공급사 문의 답변남기기</h1>
					<p class="lead"></p>
				</div>
				
				
				<div class="row g-5">
					<div class="col-md-12">			 
						<form action="supplyinquiryanswering.do" method='post'
							enctype="multipart/form-data">
							<!-- hidden 으로 값주기 -->
							<input type="hidden" name="sb_id" value="${supplierBoard.sb_id}">
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-2">
										<label  class="form-label">회사명</label> <input
											type="text" class="form-control"  value="${supplierBoard.name }"
											readonly>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label  class="form-label">연락처</label> <input
											type="text" class="form-control" value="${supplierBoard.phone }"
											readonly>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label  class="form-label">문의유형</label> <input
											type="text" class="form-control" name="g_name" value="${supplierBoard.sb_head }"
											readonly>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-2">
										<label for="g_name" class="form-label">문의제목</label> <input
											type="text" class="form-control"  value="${supplierBoard.sb_title }" readonly>
									</div>
								</div>



								<div class="row">
								    <div class="col-sm-9">
								        <label  class="form-label">문의내용</label>
								        <textarea class="form-control" rows="8" readonly>${supplierBoard.sb_content}</textarea>
								    </div>
								</div>


								<div class="row">
									<div class="col-sm-9">
										<label  class="form-label">답변내용</label>
										<textarea class="form-control"  rows="8" readonly>${supplierBoard.sb_answer}</textarea>
									</div>
								</div>

								
								<div class="row text-center">
									<div class="col-sm-12">
										<a href="supplyinquiry.do" class="btn btn-danger">뒤로가기</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</main>

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