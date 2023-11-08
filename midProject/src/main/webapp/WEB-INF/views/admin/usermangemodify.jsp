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
					<h1>사용자 정보 수정</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form action="usermangemodifing.do" method='post' novalidate>
							<!-- hidden 으로 값주기 -->
							<input type="hidden" name="id" value="${user.id}">
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="id" class="form-label">아이디</label> 
										<input type="text" class="form-control" readonly value="${user.id }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label  class="pwd">비밀번호</label> 
										<input type="text" class="form-control" name="pwd" value="${user.pwd }" >
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="name" class="form-label">이름</label> 
										<input type="text" class="form-control" name="name" value="${user.name }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="phone" class="form-label">전화번호</label> 
										<input type="text" class="form-control" name="phone" value="${user.phone }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="addr" class="form-label">주소</label> 
										<input type="text" class="form-control" name="addr" value="${user.addr }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="email" class="form-label">이메일</label> 
										<input type="text" class="form-control" name="email" value="${user.email }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row text-center">
									<div class="col-sm-12">
										<button type="submit" class="btn btn-primary" >수정하기</button>
										<a class="btn btn-danger mx-2" href="usermange.do">뒤로가기</a>
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