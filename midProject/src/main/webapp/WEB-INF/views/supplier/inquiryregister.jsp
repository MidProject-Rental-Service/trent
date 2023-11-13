<%@page import="com.mid.mvc.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	UserVO user = (UserVO) session.getAttribute("loggedInUser");
%>
	
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공급사 관리자 문의 </title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<link rel="stylesheet" href="../src/assets/css/styles.min.css" />
</head>

<body>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">

		<jsp:include page="./supplier_header.jsp" />

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
		<!--  메인 페이지 -->

		<div class="container">
			<main>
				<div class="py-5 text-left">
					<h1>문의 작성</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form action="inquiryreigster.do" onsubmit="return validate()">
							<input type="hidden" name ="id" value=<%=user.getId() %>>					
							<div class="row g-3">




								<div class="row">
									<div class="col-sm-2">
										<label for="sb_head" class="form-label">말머리</label> <select
											class="form-select" name="sb_head" id="header-list">
											<option value="">말머리</option>
											<option value="상품수정문의">상품수정문의</option>
											<option value="배송문의">배송문의</option>
											<option value="사용자문의">사용자문의</option>
											<option value="기타문의">기타문의</option>
										</select>
									</div>
								</div>
	
								
								<div class="row">
									<div class="col-sm-1">
										<label for="name" class="form-label">업체명</label> <input
											type="text" class="form-control" name="name" value=<%=user.getName()%>  readonly>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-1">
										<label for="sb_title" class="form-label">제목</label> <input
											type="text" class="form-control" name="sb_title">
									</div>
								</div>



								<div class="row">
									<div class="col-sm-5">
										<label for="sb_content" class="form-label">내용</label>
										<textarea class="form-control  custom-textarea" name="sb_content" rows="7"></textarea>
									</div>
								</div>

								<hr>
								<hr>
								
								<div class="row text-left">
									<div class="col-sm-12">
										<input class="btn btn-primary" type="submit" value="등록하기" id="inquiryregister"/>
										 <a class="btn btn-danger mx-2" href="inquirymange.do">뒤로가기</a>
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
	<script src="../src/assets/libs/jquery/dist/jquery.max.js"></script>
	<script src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../src/assets/js/sidebarmenu.js"></script>
	<script src="../src/assets/js/app.min.js"></script>
	<script src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="../src/assets/js/dashboard.js"></script>
	<script type="text/javascript">
	function validate() {
	    var selectedValue = document.getElementById("header-list").value;
	    if (selectedValue === "") {
	        alert("말머리를 선택해주세요.");
	        return false; // 폼이 제출되지 않도록 함
	    }
	    return true; // 폼이 정상적으로 제출되도록 함
	}
	</script>
</body>
</html>