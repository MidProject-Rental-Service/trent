<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>마이페이지MY PAGE</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
    
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
	
	<%-- nav bar --%>
	<div class="nav-item">
			<div class="container">
				<div class="nav-depart">
					<div class="depart-btn">
						<i class="ti-menu"></i> <span>All departments</span>
						<ul class="depart-hover">
							<li class="active"><a href="./shop_search.do?searchCondition=total&searchKeyword=공기청정기">공기청정기</a></li>
							<li><a href="./shop_search.do?searchCondition=total&searchKeyword=가습기">가습기</a></li>
							<li><a href="./shop_search.do?searchCondition=total&searchKeyword=제습기">제습기</a></li>
						</ul>
					</div>
				</div>
				<nav class="nav-menu mobile-menu">
					<ul>
						<li><a href="./main.do">Home</a></li>
						<li><a href="./shop.do">전체렌탈상품</a></li>
						<li><a href="./shop_best.do">BEST 상품</a>
						<li><a href="./discountCard.do">할인카드</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<c:if test="<%= loggedInUser != null %>">
								    <li><a href="./mypage.do">마이페이지</a></li>
									<li><a href="./shopping_cart.do">장바구니</a></li>
									<li><a href="./rental.do">렌탈신청</a></li>
								</c:if>
								<c:if test="<%= loggedInUser == null %>">
								    <li><a href="./join.do">회원가입</a></li>
									<li><a href="./login.do">로그인</a></li>
								</c:if>
							</ul>
						</li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="./main.do"><i class="fa fa-home"></i> Home</a>
                        <span>마이페이지</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

   <!-- Mypage Section Begin -->
    <section class="mypage spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="mypage-table">
                        <h2>마이페이지</h2>        
                        <div class="mypage-menu">
                            <a href="./applicationList.do"><i class="fa fa-file-text"></i>
                                <p>신청목록</p>
                            </a>
                            <a href="./reviewManagement.do"><i class="fa fa-star"></i>
                                <p>리뷰관리</p>
                            </a>
                            <a href="./inquiryList.do"><i class="fa fa-commenting"></i> 
                                <p>1:1문의</p>
                            </a>
                            <a href="./edit_info.do"><i class="fa fa-pencil-square"></i> 
                                <p>회원정보수정</p>
                            </a>
                        </div>
                        <div class="mypage_order_info">
                            <div class="mypage_zone_tit">
                                <h3>진행 중인 신청
                                    <span>최근 30일 내에 진행중인 신청정보입니다.</span>
                                </h3>
                            </div>
                            <div class="mypage_order_info_cont">
                                <ol>
                                    <li>
                                        <b>렌탈신청</b>
                                        <strong>0</strong>
                                    </li>
                                    <li>
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                    <li>
                                        <b>해피콜진행</b>
                                        <strong>0</strong>
                                    </li>
                                    <li>
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                    <li>
                                        <b>주문확정</b>
                                        <strong>0</strong>
                                    </li>
                                    <li>
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                    <li>
                                        <b>배송/설치중</b>
                                        <strong>0</strong>
                                    </li>
                                    <li>
                                        <i class="fa fa-arrow-right"></i>
                                    </li>
                                    <li>
                                        <b>설치완료</b>
                                        <strong>0</strong>
                                    </li>
                                </ol>
                            </div>
                        </div>
                        <div class="mypage_order_info">
                            <div class="mypage_zone_tit">
                                <h3>최근 신청 정보
                                    <span></span>
                                </h3>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>렌탈신청일</th>
                                            <th>상품명</th>
                                            <th>진행상태</th>
                                            <th>렌탈비용</th>
                                        </tr>
                                    </thead>
                                    <tbody> </tbody>
                                </table>
                            </div>
                        </div>
                        
                        
                    </div>
                   
                </div>
            </div>
        </div>
    </section>
    <!-- mypage Section End -->

    
    <jsp:include page="./footer.jsp"/>

    </body>

</html>
