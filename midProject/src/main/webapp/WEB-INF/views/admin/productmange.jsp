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

<link rel="stylesheet"
	href="../src/assets/css/styles.min.css" />
</head>

<body>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">
		
		<jsp:include page="./admin_header.jsp"/>

		<!--  메인페이지 -->
		
		<div class="container">

			<div class="row">
				<div class="col-sm-12">
					<div class="py-5 text-start">
						<h1>제품관리</h1>
						<p class="lead"></p>
					</div>
					<a href="productmangeregister.do" class="btn btn-primary float-end">등록하기</a>
				</div>
			</div>

			<section id="container">
				<form role="form" method="get">

					<table class="table table-hover">
						<thead>
							<tr>
								<th>제품사진</th>
								<th>제품명</th>
								<th>모델명</th>
								<th>분류</th>
								<th>제품 특징</th>
							</tr>
						</thead>

						<c:forEach items="${goodsList}" var="list">
							<tr>
								<td><c:out value="${list.g_img}" /></td>
								<td><a href="productmangemodify.do?g_id=${list.g_id}"><c:out value="${list.g_name}" /></a></td>		
								<td><a href="productmangemodify.do?g_id=${list.g_id}"><c:out value="${list.g_id}" /></a></td>	
								<!--  제품 분류라는데 몬지 모르겠음 -->
								<td><c:out value="${list.c_id}" /></td>
								<td><c:out value="${list.g_content}" /></td>
								<!-- 답변을 추가하면 btn 생성하게 하는법?? -->
									</tr>
						</c:forEach>

					</table>
					<div class="search row">
						<div class="col-xs-2 col-sm-2">
							<select name="searchType" class="form-control">
								<option value="n"
									<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"
									<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제품명</option>
								<option value="c"
									<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>모델명</option>
							</select>
						</div>

						<div class="col-xs-10 col-sm-10">
							<div class="input-group">
								<input type="text" name="keyword" id="keywordInput"
									value="${scri.keyword}" class="form-control" /> <span
									class="input-group-btn">
									<button id="searchBtn" type="button" class="btn btn-default">검색</button>
								</span>
							</div>
						</div>
						<!-- 검색버튼 누르면 js  -->
						<script>
							$(function() {
								$('#searchBtn')
										.click(
												function() {
													self.location = "list"
															+ '${pageMaker.makeQuery(1)}'
															+ "&searchType="
															+ $(
																	"select option:selected")
																	.val()
															+ "&keyword="
															+ encodeURIComponent($(
																	'#keywordInput')
																	.val());
												});
							});
						</script>
					</div>
					<!-- page 이전 1 2 3 4 5 다음  -->
					<div class="col-md-offset-3">
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
									<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
							</c:if>
						</ul>
					</div>
					<!-- page 이전 1 2 3 4 5 다음 끝 -->
				</form>
			</section>
		</div>
	</div>
	<script	src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
	<script	src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../src/assets/js/sidebarmenu.js"></script>
	<script src="../src/assets/js/app.min.js"></script>
	<script	src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script	src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="../src/assets/js/dashboard.js"></script>
</body>
</html>