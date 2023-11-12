<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.text.DecimalFormat" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8" />
<meta name="description" content="Fashi Template" />
<meta name="keywords" content="Fashi, unica, creative, html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Shopping-cart</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet" />

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
    



  </head>

<body>

	<%-- 세션에서 로그인 정보 가져오기 --%>
	<%
		UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
	%>

	<%-- 로그인 상태에 따라 다른 헤더 포함 --%>
	<c:if test="<%=loggedInUser != null%>">
		<%@ include file="header_after.jsp"%>
	</c:if>
	<c:if test="<%=loggedInUser == null%>">
		<%@ include file="header_before.jsp"%>
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
					<div class="breadcrumb-text product-more">
						<a href="./main.do"><i class="fa fa-home"></i> Home</a> <a
							href="./shop.do">Shop</a> <span>Shopping Cart</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Section Begin -->

	<!-- Shopping Cart Section Begin -->
	<section class="shopping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
				<!-- Form Start -->
					<form action="rental.do" method="get">
						<div class="cart-table">
							<table>
							
								<thead>
									<tr>
										<th>제품 사진</th>
										<th class="p-name">제품명/공급사</th>
										<th>약정기간</th>

										<th>렌탈 요금</th>
										<th><i class="ti-close"></i></th>
									</tr>
								</thead>
															
								<tbody>	
									<c:forEach items="${cartList }" var="cart">				
									<tr id="product_${cart.sh_id}">
										<td class="cart-pic"><img	class="cart-img" src="../img/products/${cart.g_rimg1}" alt="" /></td>
										<td class="cart-title" style="text-align:center;">	<h5>${cart.g_name}</h5><br/><span style="color: #848282;">${cart.s_name }</span></td>
										<td class="p-price">${cart.p_rent}개월</td>
										<td class="total-price">
									    월 <script>
									        var price = ${cart.p_price};
									        var formattedPrice = new Intl.NumberFormat('ko-KR').format(price);
									        document.write(formattedPrice);
									    </script>원
									</td>
										<td class="close-td"><i class="ti-close" onclick="cartDelete(${cart.sh_id},${cart.p_price})"></i></td>
									</tr>
									</c:forEach>					
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-lg-4">
								<div class="cart-buttons">
									<a href="#" id="back-btn" class="primary-btn up-cart"
										onclick="goBack(event)">뒤로가기</a>
								</div>
								<div class="discount-coupon"></div>
							</div>
							<div class="col-lg-4 offset-lg-4">
								<div class="proceed-checkout">
									<ul>
										<li class="subtotal">수량 <span>${totalCnt}</span></li>
										<li class="cart-total">월 청구요금 
									    <span>월
									        <script>
									            var totalPrice = ${totalPrice};
									            var formattedTotalPrice = new Intl.NumberFormat('ko-KR').format(totalPrice);
									            document.write(formattedTotalPrice);
									        </script>원
									    </span>
									</li>

									</ul>
									<a href="#" class="proceed-btn" onclick="checkAndSubmit()">렌탈신청하기</a>
								</div>
							</div>
						</div>
					</form>
					<!-- Form End -->
				</div>
			</div>
		</div>
	</section>
	<!-- Shopping Cart Section End -->

	<jsp:include page="./footer.jsp" />

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
	<script src="../js/shoppingCart.js"></script>
	<script>
    function checkAndSubmit() {
        // 장바구니에 물건이 있는지 확인
        var totalCnt = ${totalCnt}; // 장바구니에 있는 총 상품 수량
        if (totalCnt > 0) {
            // 장바구니가 비어있지 않으면 렌탈 신청 페이지로 이동
            window.location.href = "cart-rental.do";
        } else {
            // 장바구니가 비어있으면 알림창 띄우기
            alert("장바구니가 비어있습니다.");
        }
    }
</script>

</body>
</html>
