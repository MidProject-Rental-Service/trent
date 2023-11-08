<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8" />
<meta name="description" content="Fashi Template" />
<meta name="keywords" content="Fashi, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>리뷰 관리</title>

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
<link rel="stylesheet" href="../css/rent-reviewManage-style.css"
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
	function reviewWrite(r_id) {
	
		window.location.href = 'reviewWrite.do?r_id=' + r_id;
		
	}

	function toggleCheckbox(checkbox) {
	    checkbox.checked = !checkbox.checked;
	}
	function reviewUserDelete() {
		  var selectedReviews = $('input[type="checkbox"]:checked').map(function() {
		    return $(this).val();
		  }).get();

		  if (selectedReviews.length > 0) {
		    $.ajax({
		      type: "POST",
		      url: "reviewUserDelete.do",
		      data: { reviewIds: selectedReviews },
		      success: function(response) {
		        // 서버로부터 성공적인 응답을 처리합니다. (필요한 경우)
		        console.log("리뷰가 성공적으로 삭제되었습니다.");
		        location.reload();
		      },
		      error: function() {
		        // 서버로부터 에러 응답을 처리합니다. (필요한 경우)
		        console.error("리뷰 삭제 중 오류가 발생했습니다.");
		      }
		    });
		  }
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
						<a href="#"><i class="fa fa-home"></i> Home</a> <span>My
							Page</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section End -->

	<!-- Product Shop Section Begin -->
	<section class="review-management-spad">
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
						<h4>리뷰관리</h4>
					</div>
					<div class="review-list">
						<form class="review-form" action="reviewUserDelete.do">
							<table class="review-list">
								<tr>
									<th></th>
									<th>모델번호</th>
									<th>제조사/제품명</th>
									<th>구매확정일자</th>
									<th>상태</th>
								</tr>

								<c:forEach items="${reviewList }" var="review">
									<tr>
										<td><input type="checkbox" value="${review.r_id }">${review.r_id }</td>
										<td>${review.g_id }</td>
										<td style="font-size: 12px">${review.m_name}/
											${review.g_name}</td>
										<c:set var="formattedDate" value="${review.r_regdate}" />
										<fmt:formatDate pattern="yyyy-MM-dd" value="${formattedDate}"
											var="formattedDateString" />
										<td>${formattedDateString}</td>
										<td><c:choose>
												<c:when test="${not empty review.r_content}">
													<input type="button" class="btn btn-warning correct-btn"
														value="수정"
														onclick="reviewWrite('${review.r_id}')">
												</c:when>
												<c:otherwise>
													<input type="button" class="btn btn-warning correct-btn"
														value="작성하기"
														onclick="reviewWrite('${review.r_id}')">
												</c:otherwise>
											</c:choose></td>
									</tr>

								</c:forEach>
							</table>
							<div class="delete-div">
								<br /> <input type="button" class="btn btn-warning delete-btn "
									value="삭제" onclick="reviewUserDelete()">
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Shop Section End -->

	<jsp:include page="./footer.jsp" />


</body>
</html>
