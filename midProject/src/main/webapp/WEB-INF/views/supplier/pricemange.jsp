<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>가격정보관리</title>

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

		<!--  메인페이지 -->

		<div class="container">

			<div class="row">
				<div class="col-sm-12">
					<div class="py-5 text-start">
						<h1>가격정보관리</h1>
						<p class="lead"></p>
					</div>
				</div>
			</div>

			<section id="container">
				<form role="form" method="get">

					<table class="table table-hover">
						<thead>
							<tr>
								<th style="vertical-align: middle">제품사진</th>
								<th style="vertical-align: middle">모델명</th>
								<th style="vertical-align: middle">약정기간</th>
								<th style="vertical-align: middle">렌탈비용</th>
								<th style="vertical-align: middle">카드할인가(최대)</th>
								<th style="vertical-align: middle">사은품혜택</th>
								<th style="vertical-align: middle">가입조건</th>
							</tr>
						</thead>

						<c:forEach items="${priceList}" var="list">
							<tr>
								<td><img src="<c:url value='../resources/img/products/${list.g_rimg1}' />" width="100" /></td>
								<td style="vertical-align: middle"><c:out
										value="${list.g_id}" /></td>
								<td style="vertical-align: middle"><a
									href="<c:url value='/supplier/pricemodify.do?p_id=${list.p_id}'/>"><c:out
											value="${list.p_rent}개월" /></a></td>
								<td style="vertical-align: middle"><c:out
										value="${list.p_price}원" /></td>
								<td style="vertical-align: middle"><c:out
										value="${list.p_card}원" /></td>
								<td style="vertical-align: middle"><c:out
										value="${list.p_gift}원" /></td>
								<td style="vertical-align: middle"><c:out
										value="${list.p_text}" /></td>
							</tr>
						</c:forEach>

					</table>

				</form>
				<!-- page 이전 1 2 3 4 5 다음  -->
				<form action = "pricemange.do" name = "pageForm" method="get">
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
				<form action="pricemange.do" method="post">
				<input type="hidden" name="id" value="${pageVO.cri.id }">
				    <div class="search-wrap" style="display: flex; align-items: center;"> <!-- 인라인 스타일 추가 -->
				        <select class="form-control search-select" name="searchCondition"  > <!-- 인라인 스타일 추가 -->
				            <option value="g_id" ${pageVO.cri.searchCondition eq 'g_id' ? 'selected' : '' }>모델명</option>
				            <option value="p_rent" ${pageVO.cri.searchCondition eq 'p_rent' ? 'selected' : '' }>약정기간</option>
				            <option value="p_price" ${pageVO.cri.searchCondition eq 'p_price' ? 'selected' : '' }>렌탈비용</option>
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