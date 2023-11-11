<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8" />
<meta name="description" content="Fashi Template" />
<meta name="keywords" content="Fashi, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>review Write 리뷰 작성</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../css/font-awesome.min.css"
	type="text/css" />
<link rel="stylesheet" href="../css/themify-icons.css" type="text/css" />
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css" />
<link rel="stylesheet" href="../css/owl.carousel.min.css"
	type="text/css" />
<link rel="stylesheet" href="../css/nice-select.css" type="text/css" />
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/rent-reviewWrite-style.css"
	type="text/css" />
	
	<!-- Js Plugins -->
	<script src="../js/jquery-3.3.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery-ui.min.js"></script>
	<script src="../js/jquery.countdown.min.js"></script>
	<script src="../js/jquery.nice-select.min.js"></script>
	<script src="../js/jquery.zoom.min.js"></script>
	<script src="../js/jquery.dd.min.js"></script>
	<script src="../js/jquery.slicknav.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/main.js"></script>
	<script type="text/javascript">
	function backToList() {
		window.location.href = 'reviewManagement.do';
	}
	
	function saveReview() {
		window.location.href = 'reviewManagement.do';
	}

	</script>
	
</head>

<body>
	<%-- 세션에서 로그인 정보 가져오기 --%>
	<%
		UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
		
	%>

	<%-- 로그인 상태에 따라 다른 헤더 포함 --%>
	<c:if test="<%=loggedInUser != null%>">
		<%@ include file="header_after.jsp"%>
	</c:if>
	<c:if test="<%=loggedInUser == null%>">
		<%@ include file="header_before.jsp"%>
	</c:if>

	<!-- Breadcrumb Section Begin -->
	<div class="breacrumb-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb-text">
						<a href="./main.do"><i class="fa fa-home"></i> Home</a> <span>My
							Page</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<!-- Product Shop Section Begin -->
	<section class="review-write-spad">
		<div class="container">
			<div class="row">
				<!-- 좌측 메뉴 -->
				<div
					class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
					<div class="mypage-menu-tab">
						<table class="mypage-tab">
							<tr>
								<th>마이페이지</th>
							</tr>
							<tr>
								<td><a href="./applicationList.do">신청목록</a></td>
							</tr>
							<tr>
								<td><a href="./reviewManagement.do">리뷰관리</a></td>
							</tr>
							<tr>
								<td><a href="./inquiryList.do">1:1문의</a></td>
							</tr>
							<tr>
								<td><a href="./edit_info.do">회원정보수정</a></td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 좌측 메뉴 끝-->

				<!--리뷰 목록 -->
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="menu-title">
						<h4>리뷰작성</h4>
					</div>
					<div class="review-write">
						<form class="review-write-form" action="saveUserReview.do" method="post" enctype="multipart/form-data" >
						<input name="r_id" type="hidden" value="${userReview.r_id}" />
							<div id="form-group" class="form-group row">
								<div class="col-md-3">
									<img class="review-img" src="../img/products/${userReview.g_rimg1}" alt="">
								</div>
								<div class="col-md-3">
									<select name="r_point" id="r_point" class="form-control">
										<option value="">평점선택</option>
										<option value="5" ${userReview.r_point == 5 ? 'selected' : ''}>5</option>
									    <option value="4" ${userReview.r_point == 4 ? 'selected' : ''}>4</option>
									    <option value="3" ${userReview.r_point == 3 ? 'selected' : ''}>3</option>
									    <option value="2" ${userReview.r_point == 2 ? 'selected' : ''}>2</option>
									    <option value="1" ${userReview.r_point == 1 ? 'selected' : ''}>1</option>
									</select>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input class="form-control" name="id" type="text" value="<%= ((UserVO) session.getAttribute("loggedInUser")).getId() %>" 
											disabled>
									</div>
									<div class="form-group">
										<input class="form-control" name="m_name" type="text" value="${userReview.m_name} / ${userReview.g_name}"
											disabled>
									</div>
									<div class="form-group">
										<input class="form-control" name="p_name" type="text" value="${userReview.s_name }" disabled>
									</div>
								</div>
							</div>

							<div class="form-group">
								<textarea class="form-control" name="r_content" rows="4" cols="50" >${userReview.r_content }</textarea>
							</div>
							
							<div class="form-group row">
								<div class="col-md-6 text-left">
									<input type="file" name="file1" id="file1"
										accept=".img,.jpg,.png">
								</div>
								
								<div class="col-md-6 text-right">
									<button type="button" class="btn btn-primary cancle-btn" onclick="backToList()">뒤로가기</button>
									<button type="submit" class="btn btn-primary complete-btn" >완료</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
	</section>
	<!-- Product Shop Section End -->

	<jsp:include page="./footer.jsp" />

</body>
</html>
