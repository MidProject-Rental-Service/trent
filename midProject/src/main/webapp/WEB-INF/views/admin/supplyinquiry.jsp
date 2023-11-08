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
						<h1>공급사 문의</h1>
						<p class="lead"></p>
					</div>
				</div>
			</div>

			<section id="container">
				<form role="form" method="get">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>번호</th>
								<th>문의유형</th>
								<th>문의제목</th>
								<th>회사명</th>
								<th>등록일</th>
								<th>문의답변하기</th>
							</tr>
						</thead>

						<c:forEach items="${admingetSupplierBoardList}" var="list">
							<tr>
								<td><c:out value="${list.sb_id}" /></td>
								<td><c:out value="${list.sb_head}" /></td>
								<td><c:out value="${list.sb_title}" /></td> 
								<td><c:out value="${list.name}" /></td>
								<c:set var="formattedDate" value="${list.sb_regdate}" />
								<fmt:formatDate pattern="yyyy-MM-dd" value="${formattedDate}"
									var="formattedDateString" />
								<td>${formattedDateString}</td>  
								<!-- 만약 ub_answer가 null이 아니면 "답변 완료" 버튼을, 그렇지 않으면 "답변하기" 버튼을 표시 -->
								<c:choose>
									<c:when test="${not empty list.sb_answer}">
										<td><a class="btn btn-secondary" href="supplyinquiryanswerend.do?sb_id=${list.sb_id}" style="color: white; ">답변 완료</a></td>
									</c:when>
									<c:otherwise>
										<td><a class="btn btn-primary"
											href="supplyinquiryanswer.do?sb_id=${list.sb_id}">답변하기</a></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>

					</table>
					<div class="search row">
						<div class="col-xs-2 col-sm-2">
							<select name="searchType" class="form-control">
								<option value="n"
									<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
								<option value="t"
									<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>문의제목</option>
								<option value="c"
									<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>아이디</option>
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
				</form>
			</section>
		</div>




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