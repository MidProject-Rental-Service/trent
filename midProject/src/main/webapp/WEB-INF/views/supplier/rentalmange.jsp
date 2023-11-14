<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Modernize Free</title>

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

		<!--  메인페이지 -->

		<div class="container">

			<div class="row">
				<div class="col-sm-12">
					<div class="py-5 text-start">
						<h1>렌탈상태관리</h1>
						<p class="lead"></p>
					</div>

				</div>
			</div>

			<section id="container">
				<form role="form" action="rentalmanging.do" method="post">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>No</th>
								<th>렌탈 신청일</th>
								<th>제품 코드</th>
								<th>제품명</th>
								<th>신청자명</th>
								<th>휴대폰번호</th>
								<th>약정 개월</th>
								<th>배송상태</th>
								<th>렌탈 시작일</th>
								<th>렌탈 만료일</th>
							</tr>
						</thead>

						<c:forEach items="${rentList}" var="list">
							<tr>
								<td><c:out value="${list.b_id}" /></td>
								<input type="hidden" name="b_id" value="${list.b_id}" />
								<c:set var="formattedDate" value="${list.b_signdate}" />
								<fmt:formatDate pattern="yyyy-MM-dd" value="${formattedDate}"
									var="b_signdate" />
								<td>${b_signdate}</td>
								<td><c:out value="${list.g_id}" /></td>
								<td id="listName"><c:out value="${list.g_name}" /></td>
								<td><c:out value="${list.name}" /></td>
								<td><c:out value="${list.phone}" /></td>
								<td><c:out value="${list.b_rent}" /></td>
								<input type="hidden" name="b_rent" value="${list.b_rent}" />

								<td>
								    
								            <select name="b_stat">
								                <option value="0" <c:if test="${list.b_stat eq '0'}">selected</c:if>>취소</option>
								                <option value="1" <c:if test="${list.b_stat eq '1'}">selected</c:if>>렌탈신청</option>
								                <option value="2" <c:if test="${list.b_stat eq '2'}">selected</c:if>>해피콜진행</option>
								                <option value="3" <c:if test="${list.b_stat eq '3'}">selected</c:if>>주문확정</option>
								                <option value="4" <c:if test="${list.b_stat eq '4'}">selected</c:if>>배송/설치중</option>
								                <option value="5" <c:if test="${list.b_stat eq '5'}">selected</c:if>>설치완료</option>
								                <option value="6" <c:if test="${list.b_stat eq '6'}" >selected</c:if>>구매확정</option>
								            </select>

								</td>			
								<c:set var="formattedDate" value="${list.b_startdate}" />
								<fmt:formatDate pattern="yyyy-MM-dd" value="${formattedDate}"
									var="b_startdate" />
								<td>${b_startdate}</td>
								<c:set var="formattedDate" value="${list.b_enddate}" />
								<fmt:formatDate pattern="yyyy-MM-dd" value="${formattedDate}"
									var="b_enddate" />
								<td>${b_enddate}</td>

							</tr>
						</c:forEach>

					</table>
					<div class="button-container">
						<input class="btn btn-primary" type="submit" value="등록하기"
							id="rentalmanging.do" />
					</div>
					  <input type="hidden" name="id" value="${pageVO.cri.id }">
					  <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
					  <input type="hidden" name="amount" value="${pageVO.cri.amount }">	
					  <input type="hidden" name="searchCondition" value="${pageVO.cri.searchCondition }">
					  <input type="hidden" name="searchKeyword" value="${pageVO.cri.searchKeyword }">					  		  
				</form>


				<!-- page 이전 1 2 3 4 5 다음  -->
				<form action = "rentalmange.do" name = "pageForm" method="get">
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
				<form action="rentalmange.do" method="post">
				    <div class="search-wrap" style="display: flex; align-items: center;"> <!-- 인라인 스타일 추가 -->
				        <select class="form-control search-select" name="searchCondition"  > <!-- 인라인 스타일 추가 -->
				            <option value="g_id" ${pageVO.cri.searchCondition eq 'g_id' ? 'selected' : '' }>제품코드</option>
				            <option value="g_name" ${pageVO.cri.searchCondition eq 'p_rent' ? 'selected' : '' }>제품명</option>
				            <option value="phone" ${pageVO.cri.searchCondition eq 'p_price' ? 'selected' : '' }>휴대폰번호</option>
				            <option value="name" ${pageVO.cri.searchCondition eq 'p_price' ? 'selected' : '' }>신청자명</option>
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
	<script src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../src/assets/js/sidebarmenu.js"></script>
	<script src="../src/assets/js/app.min.js"></script>
	<script src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="../src/assets/js/dashboard.js"></script>
</body>
</html>