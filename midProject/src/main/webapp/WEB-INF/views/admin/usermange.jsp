<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>사용자 관리 usermanage</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<link rel="stylesheet" href="../src/assets/css/styles.min.css" />
</head>

<body>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">


		<jsp:include page="./admin_header.jsp" />

		<!-- 	<!--  Main wrapper -->
		<div class="body-wrapper">
			-->

			<!-- 메인 페이지  -->
			<div class="container">

				<div class="row">
					<div class="col-sm-12">
						<div class="py-5 text-start">
							<h1>사용자 관리</h1>
							<p class="lead"></p>
						</div>
					</div>
				</div>

				<section id="container">
					<form role="form" method="get" id="listForm">
						
						<input type="hidden" name="pageNum"
							value="${pageMaker.cri.pageNum }"> <input type="hidden"
							name="amount" value="${pageMaker.cri.amount }">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>이름</th>
									<th>휴대폰번호</th>
									<th>아이디</th>
									<th>주소(*)</th>
									<th>이메일</th>
									<th>수정하기</th>
								</tr>
							</thead>

							<c:forEach items="${userList }" var="list">
								<tr>
									<td><c:out value="${list.name}" /></td>
									<td><c:out value="${list.phone}" /></td>
									<td><c:out value="${list.id}" /></td>
									<td><c:out value="${list.addr}" /></td>
									<td><c:out value="${list.email}" /></td>
									<td><a class="btn btn-primary"
										href="usermangemodify.do?id=${list.id}">수정하기</a></td>

									<td><a></a></td>
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
							</select> <input type="text" name="searchKeyword" class="search_Keyword"> <input
								type="submit" class="btn btn-primary search-btn search-btn " value="검색">
        
						</div>
					</form>

					<!-- 검색 폼 끝 -->
				</section>
			</div>
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