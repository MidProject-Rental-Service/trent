<%@page import="com.mid.mvc.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
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
							<li class="login-icon"><a href="join.do" class="login-panel"><i
									class="fa fa-file-text"></i> Join</a></li>
	
							<li class="login-icon"><a href="login.do" class="login-panel"><i
									class="fa fa-user"></i> Login</a></li>
	
							<li class="cart-icon"><a href="./shopping_cart.do"> <i
									class="icon_bag_alt"></i> <span>3</span>
							</a>
								<div class="cart-hover">
									<div class="select-items">
										<table>
											<tbody>
												<tr>
													<td class="si-pic"><img
														src="../img/select-product-1.jpg" alt="" /></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$60.00 x 1</p>
															<h6>Kabino Bedside Table</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
												<tr>
													<td class="si-pic"><img
														src="../img/select-product-2.jpg" alt="" /></td>
													<td class="si-text">
														<div class="product-selected">
															<p>$60.00 x 1</p>
															<h6>Kabino Bedside Table</h6>
														</div>
													</td>
													<td class="si-close"><i class="ti-close"></i></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="select-total">
										<span>total:</span>
										<h5>$120.00</h5>
									</div>
									<div class="select-button">
										<a href="./shopping_cart.do" class="primary-btn view-card">View
											Cart</a> <a href="./rental.do" class="primary-btn checkout-btn">Rental</a>
									</div>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
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
						<li class="active"><a href="./main.do">Home</a></li>
						<li><a href="./shop.do">전체렌탈상품</a></li>
						<li><a href="./shop_best.do">BEST 상품</a>
						<li><a href="./discountCard.do">할인카드</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<li><a href="./join.do">회원가입</a></li>
								<li><a href="./login.do">로그인</a></li>
							</ul></li>
					</ul>
				</nav>
				<div id="mobile-menu-wrap"></div>
			</div>
		</div>
	</header>
	<!-- Header End -->

