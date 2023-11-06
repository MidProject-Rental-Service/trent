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
<title>1:1문의 목록</title>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet" />

<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="../css/themify-icons.css" type="text/css" />
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css" />
<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css" />
<link rel="stylesheet" href="../css/nice-select.css" type="text/css" />
<link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css" />
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css" />
<link rel="stylesheet" href="../css/style.css" type="text/css" />
<link rel="stylesheet" href="../css/datepicker.css" type="text/css" />
<link rel="stylesheet" href="../css/rent-inquiryList-style.css"
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
<script>
	function InquiryWrite() {
		window.location.href = 'inquiryWrite.do';
	}
	
	 $(function() {
	       //input을 datepicker로 선언
	       $("#datepicker1,#datepicker2").datepicker({
	           dateFormat: 'yy-mm-dd' //달력 날짜 형태
	           ,prevText: '이전 달'
	           ,nextText: '다음 달'
	            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	           ,changeYear: true //option값 년 선택 가능
	           ,changeMonth: true //option값  월 선택 가능                
	           /*       ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
	           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
	           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
	           ,buttonText: "선택" //버튼 호버 텍스트             */  
	           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
	           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
	           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
	           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
	           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
	           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
	           ,minDate: "-1Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	           ,maxDate: "+0D" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
	       });                    
	       
	       //초기값을 오늘 날짜로 설정해줘야 합니다.
	       $('#datepicker1').datepicker('setDate', '-1D');
	       $('#datepicker2').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
	   });
</script>

</head>

<body>
	<%-- 세션에서 로그인 정보 가져오기 --%>
	<% UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser"); %>
	
	<%-- 로그인 상태에 따라 다른 헤더 포함 --%>
	<c:if test="<%= loggedInUser != null %>">
	    <%@ include file="header_after.jsp" %>
	</c:if>
	<c:if test="<%= loggedInUser == null %>">
	    <%@ include file="header_before.jsp" %>
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

	<!-- inquiry  Section Begin -->
	<section class="inquiry-management-spad">
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
						<h4>1:1문의</h4>
					</div>
					<div class="flex-container">
						<form action="inquiryList.do" >
						<div class="search-date-form">
							<div class="search-date" id="text">조회기간</div>
							<div class="search-date">
								<input type="text" name="datepicker1"  id="datepicker1">
							</div>
							<div class="search-date">
								<input type="text" name="datepicker2"  id="datepicker2">
							</div>
							<div class="search-date-bar">
								 <select name="searchCondition"	id="searchCondition" class="search-date-bar">
									<option value="ub_title">제목</option>
									<option value="ub_content">내용</option>
									<option value="ub_head">말머리</option>
								</select>
								<input type="text" name="searchKeyword" >
								 <input  type="submit" class="btn btn-warning search-btn " value="검색">
							</div>
							</div>
							</form>
						</div>


						<div class="inquiry-list">
							<form class="inquiry-form" action="inquiry.do">
								<table class="inquiry-list">
									<tr>
										<th>문의날짜</th>
										<th>말머리</th>
										<th>제목</th>
										<th>문의상태</th>
									</tr>
									<c:forEach items="${userBoardList }" var="userboard">
										<tr>
											<c:set var="formattedDate" value="${userboard.ub_regdate}" />
											<fmt:formatDate pattern="yyyy-MM-dd" value="${formattedDate}"
												var="formattedDateString" />
											<td>${formatt
											edDateString}</td>
											<td>${userboard.ub_head }</td>
											<td><a href="inquiry.do?ub_id=${userboard.ub_id }">${userboard.ub_title }</a></td>
											<td class="status">답변대기</td>
										</tr>
									</c:forEach>

								</table>
								<div class="write-div">
									<br /> <input type="button" class="btn btn-warning write-btn "
										value="문의작성" onclick="InquiryWrite()">
								</div>

							</form>

						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- inquiry  Section End -->

	<jsp:include page="./footer.jsp"/>


</body>
</html>
