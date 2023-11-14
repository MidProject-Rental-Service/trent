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
				<!-- page 이전 1 2 3 4 5 다음  -->
				<form action = "inquirymange.do" name = "pageForm" method="post">
					<ul class="pagination pagination-sm">
						<c:if test="${pageVO.prev }">
							<li><a href="#" data-pagenum='${pageVO.startPage-1}'>이전</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
							<li class="${pageVO.pageNum eq num ? 'active' : ''}">
								<a href="#" data-pagenum='${num }'>${num }</a>
							</li>
						</c:forEach>

						<c:if test="${pageVO.next }">
							<li><a href="#" data-pagenum='${pageVO.endPage +1}'>다음</a></li>
						</c:if>
					</ul>

				 	  <input type="hidden" name="id" value="${pageVO.cri.id }">
					  <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
					  <input type="hidden" name="amount" value="${pageVO.cri.amount }">
					  <input type="hidden" name="searchCondition" value="${pageVO.cri.searchCondition }">
					  <input type="hidden" name="searchKeyword" value="${pageVO.cri.searchKeyword }">
					
					
				</form>
				
				

				<!-- 검색폼 시작 (name값이랑 value값은 변경금지!!) -->
				<form action="inquirymange.do" method="post">
				    <div class="search-wrap" style="display: flex; align-items: center;"> <!-- 인라인 스타일 추가 -->
				        <select class="form-control search-select" name="searchCondition"  > <!-- 인라인 스타일 추가 -->
				            <option value="sb_title" ${pageVO.cri.searchCondition eq 'sb_title' ? 'selected' : '' }>문의제목</option>
				            <option value="sb_head" ${pageVO.cri.searchCondition eq 'id' ? 'selected' : '' }>말머리</option>
				            <option value="sb_regdate" ${pageVO.cri.searchCondition eq 'sb_regdate' ? 'selected' : '' }>등록일</option>
				        </select>
				        <input type="text" class="form-control search-input" name="searchKeyword" value=${pageVO.cri.searchKeyword} > <!-- 인라인 스타일 추가 -->
				        <button type="submit" class="btn btn-primary search-btn">검색</button>
				    </div>
					
					  <input type="hidden" name="pageNum" value="1">
					  <input type="hidden" name="amount" value="5">				
					  <input type="hidden" name="id" value="${pageVO.cri.id }">
				</form>
				<!-- 검색 폼 끝 -->

			</section>
		</div>
	</div>
<script src="../src/assets/libs/jquery/dist/jquery.max.js"></script>
</body>
</html>