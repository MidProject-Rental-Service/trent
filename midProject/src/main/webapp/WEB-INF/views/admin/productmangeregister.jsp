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
		<div class="container">
			<main>
				<div class="py-5 text-left">
					<h1>제품 등록</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form action="productregister.do" method='post'
							enctype="multipart/form-data">
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-4">
										<label for="g_id" class="form-label">모델명</label> <input
											type="text" class="form-control" name="g_id">
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="g_name" class="form-label">제품명</label> <input
											type="text" class="form-control" name="g_name">
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="file1" class="form-label">메인썸네일</label>
										<div class="input-group">
											<input type="file" class="form-control" name="file1" readonly>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="file2" class="form-label">리스트썸네일</label>
										<div class="input-group">
											<input type="file" class="form-control" name="file2" readonly>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="file3" class="form-label">대표사진</label>
										<div class="input-group">
											<input type="file" class="form-control" name="file3" readonly>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="file4" class="form-label">상세설명사진</label>
										<div class="input-group">
											<input type="file" class="form-control" name="file4" readonly>
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-sm-3">
										<label for="c_id" class="form-label">제품분류</label> <select
											class="form-select" name="c_id">
											<option value="">제조사선택</option>
											<option value="1">공기청정기</option>
											<option value="2">가습기</option>
											<option value="3">제습기</option>
										</select>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-3">
										<label for="m_id" class="form-label">제조사</label> <select
											class="form-select" name="m_id">
											<option value="">제조사선택</option>
											<option value="1">엘지전자</option>
											<option value="2">삼성전자</option>
											<option value="3">다이슨</option>
											<option value="4">위닉스</option>
											<option value="5">듀플렉스</option>
											<option value="6">에어메이드</option>
										</select>
									</div>
								</div>



								<div class="row">
									<div class="col-sm-9">
										<label for="g_content" class="form-label">제품특징</label>
										<textarea class="form-control" name="g_content" rows="5"></textarea>
									</div>
								</div>



								<div class="row text-left">
									<div class="col-sm-12">
										<input class="btn btn-primary" type="submit" value="등록하기" />
										<a class="btn btn-danger mx-2" href="productmange.do">취소하기</a>
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