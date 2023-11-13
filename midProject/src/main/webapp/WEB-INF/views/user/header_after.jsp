<%@page import="com.mid.mvc.domain.UserVO"%>
<%@page import="com.mid.mvc.domain.ShoppingCartVO"%>
<%@ page import="java.text.DecimalFormat" %>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.text.DecimalFormat" %>
<%
	UserVO user = (UserVO) session.getAttribute("loggedInUser");
	List<ShoppingCartVO> result = (List) session.getAttribute("cartList");
	Integer totalCnt = (Integer) session.getAttribute("totalCnt");
	Integer totalPrice = (Integer) session.getAttribute("totalPrice");
%>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
	<header class="header-section">
		<div class="header-top">
			<div class="container">
				<div class="ht-left">
					<div class="mail-service">
						<i class="fa fa-envelope"></i> webmaster@trent.com
					</div>
					<div class="phone-service">
						<i class="fa fa-phone"></i> 02.739.7235
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="inner-header">
				<div class="row align-items-center justify-content-between">
					<div class="col-lg-2 col-md-2">
						<div class="logo">
							<a href="./main.do"> <img src="../img/logo.png" alt="" />
							</a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="advanced-search">

							<form action="shop_search.do">
								<select id="searchCondition" name="searchCondition"
									class="category-btn">
									<option value="total">모두</option>
									<option value="c_name">카테고리</option>
									<option value="g_name">제품명</option>
									<option value="m_name">제조사</option>
									<option value="s_name">공급사</option>
								</select>
								<div class="input-group">
									<input type="text" id="searchKeyword" name="searchKeyword"
										placeholder="검색어를 입력해주세요" />
									<button type="submit" name="search-btn">
										<i class="ti-search"></i>
									</button>
								</div>
							</form>


						</div>
					</div>

					<div class="col-lg-3 text-right col-sm">
						<ul class="nav-right">
							<li class="login-icon"><a href="mypage.do"
								class="login-panel"><i
									class="fa fa-user"></i> <%=user.getName()%>님</a></li>
							<li class="login-icon"><a href="logout.do"
								class="logout-panel"><i
									class="fa fa-sign-out custom-icon"></i></a></li>


						<!-- 장바구니 영역 -->			
							<li class="cart-icon"><a href="./shopping_cart.do"> <i
									class="icon_bag_alt"></i> <span id="totalCnt"><%= totalCnt %></span>
							</a>
								<div id="cart-container" class="cart-hover">
									<div class="select-items">
										<table>
											<tbody>
											
											<c:forEach items="${headerCartList }" var="cart">
												<tr id="hproduct_${cart.sh_id}">
													<td class="si-pic"><img	src="../img/products/${cart.g_rimg1}" alt="" /></td>
													<td class="si-text">
														<div class="product-selected">
															<p>월<script>
															        var price = ${cart.p_price};
															        var formattedPrice = new Intl.NumberFormat('ko-KR').format(price);
															        document.write(formattedPrice);
															    </script>원
															 </p>
															<h6>${cart.g_name}</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close" onclick="cartDelete(${cart.sh_id},${cart.p_price})"></i></td>
												</tr>
												</c:forEach>		
	
												
											</tbody>
										</table>
									</div>
									
									<div class="select-total">
										<span>total:</span>
										<h5>월<script>
									            var totalPrice = <%= totalPrice %>
									            var formattedTotalPrice = new Intl.NumberFormat('ko-KR').format(totalPrice);
									            document.write(formattedTotalPrice);
									        </script>원</h5>
									</div>
									
									<div class="select-button">
										<a href="./shopping_cart.do" class="primary-btn view-card">View
											Cart</a> <a href="./cart-rental.do" class="primary-btn checkout-btn" onclick="return checkAndSubmit()">Rental</a>
									</div>
									
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</header>
	<!-- Header End -->
</body>

<script src="../js/headerShoppingCart.js"></script>
<script>
function checkAndSubmit() {
    // 장바구니에 물건이 있는지 확인
    var totalCnt = ${totalCnt}; // 장바구니에 있는 총 상품 수량
    if (totalCnt > 0) {
        // 장바구니가 비어있지 않으면 렌탈 신청 페이지로 이동
        window.location.href = "cart-rental.do";
        return true;
    } else {
        // 장바구니가 비어있으면 알림창 띄우기
        alert("장바구니가 비어있습니다.");
        return false;
    }
}

</script>
