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

		<jsp:include page="./admin_header.jsp" />

		<!--  메인페이지 -->

		<div class="container">

			<div class="row">
				<div class="col-sm-12">
					<div class="py-5 text-start">
						<h1>사용자 문의</h1>
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
								<th>번호</th>
								<th>문의유형</th>
								<th>문의제목</th>
								<th>아이디</th>
								<th>등록일</th>
								<th>문의답변하기</th>
							</tr>
						</thead>

						<c:forEach items="${userBoardList}" var="list">
							<tr>
								<td><c:out value="${list.ub_id}" /></td>
								<td><c:out value="${list.ub_head}" /></td>
								<td><c:out value="${list.ub_title}" /></td>
								<td><c:out value="${list.id}" /></td>
								<c:set var="formattedDate" value="${list.ub_regdate}" />
								<fmt:formatDate pattern="yyyy-MM-dd" value="${formattedDate}"
									var="formattedDateString" />
								<td>${formattedDateString}</td>
								<!-- 만약 ub_answer가 null이 아니면 "답변 완료" 버튼을, 그렇지 않으면 "답변하기" 버튼을 표시 -->
								<c:choose>
									<c:when test="${not empty list.ub_answer}">
										<td><a class="btn btn-secondary"
											href="userinquiryanswerend.do?ub_id=${list.ub_id}"
											style="color: white;">답변 완료</a></td>
									</c:when>
									<c:otherwise>
										<td><a class="btn btn-primary"
											href="userinquiryanswer.do?ub_id=${list.ub_id}">답변하기</a></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>

					</table>
				</form>
				<!-- page 이전 1 2 3 4 5 다음  -->
				<form action = "userinquiry.do" name = "pageForm" method="post">
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
					
					  <input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
					  <input type="hidden" name="amount" value="${pageVO.cri.amount }">
					  <input type="hidden" name="searchCondition" value="${pageVO.cri.searchCondition }">
					  <input type="hidden" name="searchKeyword" value="${pageVO.cri.searchKeyword }">
					
					
				</form>
				
				

				<!-- 검색폼 시작 (name값이랑 value값은 변경금지!!) -->
				<form action="userinquiry.do" method="post">
				    <div class="search-wrap" style="display: flex; align-items: center;"> <!-- 인라인 스타일 추가 -->
				        <select class="form-control search-select" name="searchCondition"  > <!-- 인라인 스타일 추가 -->
				            <option value="ub_title" ${pageVO.cri.searchCondition eq 'ub_title' ? 'selected' : '' }>문의제목</option>
				            <option value="id" ${pageVO.cri.searchCondition eq 'id' ? 'selected' : '' }>아이디</option>
				            <option value="ub_regdate" ${pageVO.cri.searchCondition eq 'ub_regdate' ? 'selected' : '' }>등록일</option>
				        </select>
				        <input type="text" class="form-control search-input" name="searchKeyword" value=${pageVO.cri.searchKeyword} > <!-- 인라인 스타일 추가 -->
				        <button type="submit" class="btn btn-primary search-btn">검색</button>
				    </div>
				
				    <input type="hidden" name="pageNum" value="1">
				    <input type="hidden" name="amount" value="5">
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