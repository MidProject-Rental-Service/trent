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
                                <img class="product-big-img" src="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />" alt="Product_Main_Thumbnail">
                                <div class="zoom-icon">
                                    <i class="fa fa-search-plus"></i>
                                </div>
                            </div>
                            <div class="product-thumbs">
                                <div class="product-thumbs-track ps-slider owl-carousel">
                                    <!-- 이미지 -->
                                    <div class="pt active" data-imgbigurl="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />">
                                   		<img src="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />" alt="Product_Main_Thumbnail">
                                    </div>
                                    
                                    <div class="pt" data-imgbigurl="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />">
                                    	<img src="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />" alt="Product_Main_Thumbnail">
                                    </div>
                                    
                                    <div class="pt" data-imgbigurl="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />">
                                    	<img src="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />" alt="Product_Main_Thumbnail">
                                    </div>
                                    
                                    <div class="pt" data-imgbigurl="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />">
                                    	<img src="<c:url value='../resources/img/products/${productInfo.g_rimg3}' />" alt="Product_Main_Thumbnail">
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                        <!-- 제품 상세 기술 -->
                        <div class="col-lg-6">
                            <div class="product-details">
                                <div class="pd-title">
                                    <h4>${productInfo.g_name}</h4>
                                </div>
                             	<div class="rental-info-details"> <!-- 렌탈정보 상세 -->
                                <div class="pd-desc">
									<dl>
										<dt>모델명</dt>
										<dd>${productInfo.g_id}</dd>
									</dl>
									<dl>
										<dt>특징</dt>
										<dd>${productInfo.g_content}</dd>
									</dl>
									<dl>
										<dt>공급사</dt>
										<c:forEach items="${supInfo}" var="supplier" varStatus="status">
								            ${supplier.s_name}
								            <c:if test="${!status.last}">/</c:if>
								        </c:forEach>
									</dl>
                                </div>
                            </div>
                        	<!-- 렌탈 정보 상세 끝 -->
                        	<!-- 디테일2 시작 -->
                        	<div class="rental-info-details2">
                        		<table class="pd-desc2">
                        			<tr>
                        				<td class="min_sub">최저공급사<a>${minPrice.s_name }</a></td>
                        				<td class="min_price">최저렌탈가<a>월<span class="formatted-number">${minPrice.p_price }</span>원</a></td>
                        				<td class="max_discount">카드할인가<a>월<span class="formatted-number">${minPrice.p_card }</span>원</a></td>
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
													    <c:forEach items="${priceInfoList}" var="rental_price">
													        <div class="choice_m">
													            <button type="button" data-rentalperiod="${rental_price.p_rent}" class="rentalPeriod">
													                <a>${rental_price.p_rent}개월</a><p class="price03"><span class="formatted-number">${rental_price.p_price}</span>원</p>
													            </button>
													        </div>
													    </c:forEach>
													</div> <!-- 약정선택 탭 끝 -->

	                                                <!-- 가격비교 탭 시작 -->
														<h5>
															가격비교<span>렌탈 공급사별 가입조건, 결제방법, 제휴카드 혜택 등 비교 후 선택하세요</span>
														</h5>
														<!-- 공급사 가격정보 for문 시작 -->
														<div class="sub_price_view">
															<!--  테이블 동적 추가 -->
														</div>

														<!-- 가격비교 탭 끝 -->
                                           		</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-2" role="tabpanel">
									<img src="<c:url value='../resources/img/products/${productInfo.g_rimg4}' />" alt="Product_Detail">
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../js/shopSearch.js"></script>

<script type="text/javascript">
	jQuery.fn.formatNumber = function () {
        return this.each(function () {
            var number = parseFloat($(this).text());
            var formatted = number.toLocaleString('en');
            $(this).text(formatted);
        });
    }

    $(function () {
        $('.formatted-number').formatNumber();
        
     	// 페이지 로드 시 첫 번째 rentalPeriod 버튼에 on 클래스 추가
        $(".btn_choice_box1 .rentalPeriod:first, .btn_choice_box1 .rentalPeriod:first p, .btn_choice_box1 .rentalPeriod:first a").addClass("on");

        
        // rentalPeriod 버튼 클릭 시
        $(".btn_choice_box1 .rentalPeriod").click(function() {
            // on 클래스 제거
            $(".btn_choice_box1 .rentalPeriod, .btn_choice_box1 .rentalPeriod:first p, .btn_choice_box1 .rentalPeriod:first a").removeClass("on");
            
            // 클릭한 버튼에 on 클래스 추가
            $(this).addClass("on");
            
            // 클릭한 버튼의 개월 수 가져오기
			var selectedMonths = $(this).data('rentalperiod');
            
            // PriceVO 객체 생성
            var priceVO = {
                g_id: "${productInfo.g_id}", // 상품 ID를 서버에서 받은 값을 사용
                p_rent: selectedMonths
            };
            
            updatePriceTable(priceVO);
        });
        
     	// 페이지 로드 시 기본적으로 선택된 약정 개월 수에 해당하는 정보를 표시
        var defaultSelectedMonths = $(".btn_choice_box1 .rentalPeriod:first").data('rentalperiod');
        var defaultButton = $(`.btn_choice_box1 .rentalPeriod[data-rentalperiod='${defaultSelectedMonths}']`);
        defaultButton.click();
        
        var defaultPriceVO = {
            g_id: "${productInfo.g_id}",
            p_rent: defaultSelectedMonths
        };
        
        updatePriceTable(defaultPriceVO);
    });
        
        // ********************************************
        
     	function updatePriceTable(priceVO) {
            
            
            $.ajax({
                type: 'POST',
                url: '/midProject/user/updatePrice.do', // Spring MVC 엔드포인트 URL로 변경
                data: JSON.stringify(priceVO), // PriceVO 객체를 JSON 문자열로 변환하여 전송
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                 	// 서버로부터 받은 데이터(data)를 처리
                    var subPriceView = $('.sub_price_view');
                    subPriceView.empty();

                    // 데이터를 테이블로 변환
                    data.forEach(function(item) {
                        var table = $('<table>').addClass('sub_price_Table');
                        var tbody = $('<tbody>');

                        // 각 데이터 항목에 대한 처리
                        var tr = $('<tr>');
                        tr.append($('<td>').addClass('sub_Title').html('<div class="sub_logo_img"><img style="width: 50px;" src="/midProject/resources/img/sup_logo/' + item.s_name + '.png"></div><p>' + item.s_name + '</p>'));

                        // 숫자 포맷팅 적용
                        var formattedPrice = item.p_price.toLocaleString('en');
                        var formattedCardPrice = item.p_card.toLocaleString('en');
                        var formattedGift = item.p_gift.toLocaleString('en');

                        tr.append($('<td>').addClass('sub_Info').html('<div class="join_condition"><div id="join_condition" name="join_condition" rows="2" cols="30" readonly>' + item.p_text + '</div></div><div class="btn_choice_box_con"><button type="button" class="btn-card" onclick="openAffiliateCard()">제휴카드보기&nbsp;<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z"/></svg></button></div>'));

                        tr.append($('<td>').addClass('sub_Info2').html('<div class="sub_info_box_rental"><table summary="요약" class="info_box"><tbody><tr style="padding: 0px; border: none; margin: 0;"><td class="sub_info_box1">월렌탈요금<br/><a style="color: #1478FF;">월<span style="font-weight: bold;" class="formatted-number">' + formattedPrice + '</span>원</a></td><td class="sub_info_box2">카드할인가<br/><a style="color: #B93232;">월<span style="font-weight: bold;" class="formatted-number">'+ formattedCardPrice +'</span>원</a></td><td class="sub_info_box3">사은품 혜택<br/><a style="color: #000069;"><span style="font-weight: bold;" class="formatted-number">'+ formattedGift +'</span>P</a></td></tr></tbody></table></div><div class="btn_choice_box2"><button type="button" class="btn-cart" onclick="addToCart()">장바구니</button><button type="button" class="btn-rental" onclick="applyForRental()">렌탈신청</button></div>'));

                        tbody.append(tr);
                        table.append(tbody);
                        subPriceView.append(table);
                    });
                    
                    
                },
                error: function(error) {
                    alert("약정에 맞는 가격 정보가 없습니다");
                    history.back();
                }
            });
        }
        
     	var isLoggedIn = <%= (loggedInUser != null) %>;
     	
     	// 장바구니 버튼 클릭 시 이벤트 핸들러
     	function addToCart() {
     		 if (isLoggedIn) {
     			alert("장바구니에 추가되었습니다.");
          	    window.location.href = '/midProject/user/shopping_cart.do';
      	    } else {
      	        // 로그인이 안되어 있으면 경고창 표시 후 로그인 페이지로 이동
      	        alert("로그인이 필요한 서비스입니다.");
      	        window.location.href = '/midProject/user/login.do';
      	    }
     	}

     	// 렌탈 신청 버튼 클릭 시 이벤트 핸들러
     	function applyForRental() {
     	    if (isLoggedIn) {
     	        // 로그인이 되어 있으면 렌탈 신청 페이지로 이동
     	        window.location.href = '/midProject/user/rental.do';
     	    } else {
     	        // 로그인이 안되어 있으면 경고창 표시 후 로그인 페이지로 이동
     	        alert("로그인이 필요한 서비스입니다.");
     	        window.location.href = '/midProject/user/login.do';
     	    }
     	}

     	// 제휴카드 보기 버튼 클릭 시 이벤트 핸들러
     	function openAffiliateCard() {
     	    // 여기에 제휴카드 보기 로직 추가
     	    alert("제휴카드를 확인합니다.");
     	}


</script>

<jsp:include page="footer.jsp" />
</body>
</html>