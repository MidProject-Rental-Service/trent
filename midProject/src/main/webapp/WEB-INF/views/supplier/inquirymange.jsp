<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>





<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>1:1문의</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<link rel="stylesheet" href="../src/assets/css/styles.min.css" />
<script src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
<script
	src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../src/assets/js/sidebarmenu.js"></script>
<script src="../src/assets/js/app.min.js"></script>
<script src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
<script src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
<script src="../src/assets/js/dashboard.js"></script>




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

		<!--  메인페이지 -->

		<div class="container">

			<div class="row">
				<div class="col-sm-12">
					<div class="py-5 text-start">
						<h1>1:1문의</h1>
						<p class="lead"></p>
					</div>
					<button onclick="window.location.href='inquiryregister.do'"
						class="btn btn-primary float-end">등록하기</button>

				</div>
			</div>

			<section id="container">
					<table class="table table-hover">
						<thead>
							<tr>

								<th>말머리</th>
								<th>제목</th>
								<th>문의작성일</th>
								<th>문의상태</th>
							</tr>
						</thead>

						<c:forEach items="${inquiryList }" var="list">
							<tr>
								<td>${list.sb_head }</td>
								<td><a href="inquiryend.do?sb_id=${list.sb_id }">${list.sb_title }</a></td>
															
								<c:set var="formattedDate" value="${list.sb_regdate}" />
								<fmt:formatDate pattern="yyyy-MM-dd" value="${formattedDate}"
									var="formattedDateString" />
								<td>${formattedDateString}</td>

								<c:choose>
									<c:when test="${not empty list.sb_answer}">
										<td id="answerStat" class="status">답변완료</td>
									</c:when>
									<c:otherwise>
										<td id="answerStat" class="status">답변대기</td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>

					</table>
				</form>
				<!-- page 이전 1 2 3 4 5 다음 만드세요  -->
				<div name="paging">
					<ul class="pagination">
						<c:if test="${pageMaker.prev }">
							<li class="pagination_button"><a
								href="${pageMaker.startPage - 1 }">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }">
							<li class="pagination_button"><a href="${num }">${num }</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next }">
							<li class="pagination_button"><a
								href="${pageMaker.endPage + 1 }">Next</a></li>
						</c:if>
					</ul>
				</div>


				<!-- 검색폼 시작 (name값이랑 value값은 변경금지!!) -->
				<form action="usermange.do" id="searchForm">
					<div class="search row">
						<select name="searchCondition" id="searchCondition"
							class="search-date-bar">
							<option class="u" value="name">이름</option>
							<option class="u" value="phone">휴대폰번호</option>
							<option class="u" value="id">아이디</option>
							<option class="u" value="addr">주소</option>
							<option class="u" value="email">이메일</option>
						</select> <input type="text" name="searchKeyword" class="search_Keyword">
						<input type="submit"
							class="btn btn-primary search-btn search-btn " value="검색">

					</div>
				</form>
			</section>
		</div>
	</div>

</body>
</html>