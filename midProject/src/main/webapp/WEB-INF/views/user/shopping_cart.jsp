<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <script type="text/javascript">
    
    </script>
    
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
										<td class="cart-title">	<h5>${cart.g_name}</h5></td>
										<td class="p-price">${cart.p_rent}</td>
										<td class="total-price">${cart.p_price}</td>
										<td class="close-td"><i class="ti-close" onclick="cartDelete(${cart.sh_id})"></i></td>
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
										<li class="cart-total">월 청구요금 <span>${totalPrice}</span></li>
									</ul>
									<a href="rental.do" class="proceed-btn">렌탈신청하기</a>
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



</body>
</html>
