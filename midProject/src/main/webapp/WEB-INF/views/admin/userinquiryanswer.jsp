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

		<form id="answerForm">
			<div class="container">
				<header>
					<h1>사용자 문의 답변 남기기</h1>
				</header>
				<hr />

				<div class="row">
					<a class="ub-name">사용자명 : ${user.name }</a>
				</div>

				<div class="row">
					<a class="ub-phone">전화번호 : ${user.phone }</a>
				</div>

				<div class="row">
					<a class="ub-email">이메일 : ${user.email } </a>
				</div>


				<div class="row">
					<a class="ub-title">문의제목 : ${userBoard.title }</a>
				</div>

				<div class="row">
					<a class="ub-content">${userBoard.content }</a>
				</div>

				<div class="row">
					<textarea id="ub-answer" class="ub-answer"></textarea>
				</div>

				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-2"></div>
					<div class="col-md-2 ub-answerbtn user-info text-center">
						<button type="submit" class="btn btn-primary">답변하기</button>
					</div>
					<div class="col-md-2 ub-canclebtn user-info text-center">
						<a href="http://localhost:8080/midProject/userinquiry.jsp"
							class="btn btn-danger">취소하기</a>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</form>
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