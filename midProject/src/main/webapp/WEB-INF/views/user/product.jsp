<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>제품 상세 페이지</title>

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
                    <div class="breadcrumb-text product-more">
                        <a href="./main.do"><i class="fa fa-home"></i> Home</a>
                        <a href="./shop.do">Shop</a>
                        <span>Detail</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details">
        <div class="container">
        	<div class="filter-widget">
                <h6 class="search" style="visibility: hidden">"OOO" 검색결과 00개의 제품이 있습니다</h6>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="filter-widget">
                        <h4 class="fw-title">Categories</h4>
                        <ul class="filter-catagories">
                            <li><a href="#">공기청정기</a></li>
                            <li><a href="#">가습기</a></li>
                            <li><a href="#">제습기</a></li>
                        </ul>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Brand</h4>
                        <div class="fw-brand-check">
                            <div class="bc-item">
                                <label for="bc-calvin">
                                    LG
                                    <input type="checkbox" id="bc-calvin">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-diesel">
                                    SAMSUNG
                                    <input type="checkbox" id="bc-diesel">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-polo">
                                    XIOMI
                                    <input type="checkbox" id="bc-polo">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="bc-item">
                                <label for="bc-tommy">
                                    DYSON
                                    <input type="checkbox" id="bc-tommy">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="filter-widget">
                        <h4 class="fw-title">Price</h4>
                        <div class="filter-range-wrap">
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="5000" data-max="100000">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="1000" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="1000" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                        </div>
                        <a href="#" class="filter-btn">검색</a>
                    </div>
                    
                </div>
                <!-- 제품 상세 시작 -->
                <div class="col-lg-9">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-pic-zoom">
                                <img class="product-big-img" src="/midProject/resources/img/products/7d791a1d-f1ae-434f-a2b9-57f6e3fa76a3_lg-air-3.jpg" alt="">
                                <div class="zoom-icon">
                                    <i class="fa fa-search-plus"></i>
                                </div>
                            </div>
                            <div class="product-thumbs">
                                <div class="product-thumbs-track ps-slider owl-carousel">
                                    <div class="pt active" data-imgbigurl="../img/product-single/product-1.jpg"><img
                                            src="/midProject/resources/img/products/8f058b4b-4aed-4a11-854d-891db638f4ce_lg-air-1.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="../img/product-single/product-2.jpg"><img
                                            src="/midProject/resources/img/products/8f058b4b-4aed-4a11-854d-891db638f4ce_lg-air-1.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="../img/product-single/product-3.jpg"><img
                                            src="/midProject/resources/img/products/8f058b4b-4aed-4a11-854d-891db638f4ce_lg-air-1.jpg" alt=""></div>
                                    <div class="pt" data-imgbigurl="../img/product-single/product-3.jpg"><img
                                            src="/midProject/resources/img/products/8f058b4b-4aed-4a11-854d-891db638f4ce_lg-air-1.jpg" alt=""></div>
                                </div>
                            </div>
                        </div>
                        <!-- 제품 상세 기술 -->
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <h4>LG 공기청정기 15평 (퓨리케어 / 360˚ / UP가전2.0 / 히트 / 화이트&다크그레이)</h4>
                                </div>
                             	<div class="rental-info-details"> <!-- 렌탈정보 상세 -->
                                <div class="pd-desc">
									<dl>
										<dt>모델명</dt>
										<dd>AS153HWFS1_LG</dd>
									</dl>
									<dl>
										<dt>특징</dt>
										<dd>LG전자 / 스마트폰제어 / 탈취기능 / 공기질표시 / 미세먼지 집진필터 / HEPA / 탈취필터 / 2등급 / 케어서비스(12개월)</dd>
									</dl>
									<dl>
										<dt>공급사</dt>
										<dd>LG케어솔루션</dd>
									</dl>
									<dl>
										<dt>혜택</dt>
										<dd>케어</dd>
									</dl>
                                </div>
                            </div>
                        	<!-- 렌탈 정보 상세 끝 -->
                        	<!-- 디테일2 시작 -->
                        	<div class="rental-info-details2">
                        		<table class="pd-desc2">
                        			<tr>
                        				<td class="min_sub">최저공급사<a>LG케어솔루션</a></td>
                        				<td class="min_price">최저렌탈가<a>월<span>14,900</span>원</a></td>
                        				<td class="max_discount">카드할인가<a>월<span>20,000</span>원</a></td>
                        			</tr>
                        		</table>
                        	</div>
                        	<!-- 디테일2 끝 -->
                        </div>
                    </div>
                    <!-- 상세보기, 리뷰칸 -->
                    <div class="product-tab">
                        <div class="tab-item">
                            <ul class="nav" id="tab-menu">
                                <li>
                                    <a class="active" data-toggle="tab" href="#tab-1" role="tab">RENTAL OPTION</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-2" role="tab">DESCRIPTION</a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#tab-3" role="tab">REVIEWS (29)</a>
                                </li>
                            </ul>
                        </div>
                        <div class="tab-item-content">
                            <div class="tab-content">
                                <div class="tab-pane fade-in active" id="tab-1" role="tabpanel">
                                    <!-- 렌탈가격 정보 -->
                                    <div class="product-content">
                                        <div class="row">
                                            <div class="col-lg-15">
                                            	<div class="price_detail">
	                                                <h5>약정선택<span>약정개월을 선택해주세요</span></h5>
	                                                <!-- 약정선택 탭 -->
	                                                <div class="btn_choice_box1">
	                                                	<div class="choice_m">
	                                                		<button type="button" data-rentalperiod="72" class="rentalPeriod">
	                                                		<a>72개월</a><p class="price03">67,300원</p>
															</button>
	                                                	</div>
	                                                	<div class="choice_m">
	                                                		<button type="button" data-rentalperiod="60" class="rentalPeriod">
	                                                		<a>60개월</a><p class="price02">81,500원</p>
															</button>
	                                                	</div>
	                                                	<div class="choice_m">
	                                                		<button type="button" data-rentalperiod="48" class="rentalPeriod">
	                                                		<a>48개월</a><p class="price01">96,700원</p>
															</button>
	                                                	</div>
	                                                </div>
	                                               
	                                                <!-- 약정선택 탭 끝 -->
	                                                <!-- 가격비교 탭 시작 -->
														<h5>
															가격비교<span>렌탈 공급사별 가입조건, 결제방법, 제휴카드 혜택 등 비교 후 선택하세요</span>
														</h5>
														<div class="sub_price_view">
															<table class="sub_price_Table">
																<tbody>
																	<tr>
																		<td class="sub_Title">
																			<div class="sub_logo_img">
																				<img
																					src="https://rentaltok.com/data/icon/goods_icon/intro_lgcaresolutions.png">
																			</div>
																			<p>LG케어솔루션</p>
																		</td>
																		<td class="sub_Info">
																		
																			<div class="join_condition">
																				<textarea id="join_condition" name="join_condition" rows="2" cols="30" readonly>이 텍스트 영역은 읽기 전용입니다. 사용자는 내용을 편집할 수 없습니다.</textarea>
																			</div>
																			<div class="btn_choice_box_con">
																				<button type="button">
																					제휴카드보기&nbsp;<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z"/></svg>
																				</button>
																			</div>
																		</td>
																		<td class="sub_Info2">
																			<div class="sub_info_box_rental">
																				<table summary="요약" class="info_box">
																					<tbody>
																						<tr style="padding: 0px; border: none; margin: 0;">
																							<td class="sub_info_box1">월렌탈요금</td>
																							<td class="sub_info_box2">카드할인가</td>
																							<td class="sub_info_box3">사은품 혜택</td>
																						</tr>
																					</tbody>
																				</table>
																			</div>
																			<div class="btn_choice_box2">
																				<button type="button" class="btn-cart">장바구니</button>
																				<button type="button" class="btn-rental">렌탈신청</button>
																			</div>
																		</td>
																	</tr> <!-- 이 뒤부터 카드정보 -->

																</tbody>

															</table>

														</div>

														<!-- 가격비교 탭 끝 -->
                                           		</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
									<img alt="" src="../img/detail/details.jpg">
                                </div>
                                <div class="tab-pane fade" id="tab-3" role="tabpanel">
                                    <div class="customer-review-option">
                                        <h4>2 Comments</h4>
                                        <div class="comment-option">
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="../img/product-single/avatar-1.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>Brandon Kelley <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Nice !</div>
                                                </div>
                                            </div>
                                            <div class="co-item">
                                                <div class="avatar-pic">
                                                    <img src="../img/product-single/avatar-2.png" alt="">
                                                </div>
                                                <div class="avatar-text">
                                                    <div class="at-rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <h5>Roy Banks <span>27 Aug 2019</span></h5>
                                                    <div class="at-reply">Nice !</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="personal-rating">
                                            <h6>Your Ratind</h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o"></i>
                                            </div>
                                        </div>
                                        <div class="leave-comment">
                                            <h4>Leave A Comment</h4>
                                            <form action="#" class="comment-form">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="Name">
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <input type="text" placeholder="Email">
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <textarea placeholder="Messages"></textarea>
                                                        <button type="submit" class="site-btn">Send message</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </section>
    <!-- Product Shop Section End -->

    <!-- Related Products Section End -->
    <div class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Related Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="../img/products/women-1.jpg" alt="">
                            <div class="sale">Sale</div>
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Coat</div>
                            <a href="#">
                                <h5>Pure Pineapple</h5>
                            </a>
                            <div class="product-price">
                                $14.00
                                <span>$35.00</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="../img/products/women-2.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Shoes</div>
                            <a href="#">
                                <h5>Guangzhou sweater</h5>
                            </a>
                            <div class="product-price">
                                $13.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="../img/products/women-3.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Towel</div>
                            <a href="#">
                                <h5>Pure Pineapple</h5>
                            </a>
                            <div class="product-price">
                                $34.00
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="../img/products/women-4.jpg" alt="">
                            <div class="icon">
                                <i class="icon_heart_alt"></i>
                            </div>
                            <ul>
                                <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                                <li class="quick-view"><a href="#">+ Quick View</a></li>
                                <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                            </ul>
                        </div>
                        <div class="pi-text">
                            <div class="catagory-name">Towel</div>
                            <a href="#">
                                <h5>Converse Shoes</h5>
                            </a>
                            <div class="product-price">
                                $34.00
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Related Products Section End -->
    
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

<jsp:include page="footer.jsp" />
</body>
</html>