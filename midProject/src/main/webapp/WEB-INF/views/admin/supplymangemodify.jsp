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

		<!-- 메인 페이지 -->

		<div class="container">
			<main>
				<div class="py-5 text-center">
					<h1>공급사 정보 수정</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form class="needs-validation" novalidate>
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="Name" class="form-label">아이디</label> <input
											type="text" class="form-control" id="User_id" readonly
											value="${list.id }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="Name" class="form-label">비밀번호</label> <input
											type="text" class="form-control" id="User_pwd"
											value="${list.pwd }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="Name" class="form-label">회사명</label> <input
											type="text" class="form-control" id="User_name"
											value="${list.name }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="Name" class="form-label">회사번호</label> <input
											type="text" class="form-control" id="User_phone"
											value="${list.phone }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="Name" class="form-label">회사주소</label> <input
											type="text" class="form-control" id="User_addr"
											value="${list.addr }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="Name" class="form-label">이메일</label> <input
											type="text" class="form-control" id="User_email"
											value="${list.email }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row text-center">
									<div class="col-sm-12">
										<a class="btn btn-primary mx-2" type="submit">등록하기</a> <a
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