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
    <title>Trent | 트렌디한 가전 렌탈</title>

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
	
		<!-- Scroll to Top Script -->
  <script>
    // 스크롤이 일정 부분 이상 내려갔을 때 버튼을 보이게 하기
    window.onscroll = function () {
      scrollFunction();
    };

    function scrollFunction() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("scrollTopBtn").style.display = "block";
      } else {
        document.getElementById("scrollTopBtn").style.display = "none";
      }
    }

    // 최상단으로 스크롤하는 함수
    function scrollToTop() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
  </script>
	
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
						<li class="active"><a href="./main.do">Home</a></li>
						<li><a href="./shop.do">전체렌탈제품</a></li>
						<li><a href="./shop_best.do">BEST 제품</a>
						<li><a href="./discountCard.do">할인카드</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<c:if test="<%= loggedInUser != null %>">
								    <li><a href="./mypage.do">마이페이지</a></li>
									<li><a href="./shopping_cart.do">장바구니</a></li>
									<li><a href="./cart-rental.do">렌탈신청</a></li>
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

    <!-- Main Banner Section Begin -->
    <section class="hero-section">
        <div class="hero-items owl-carousel">
            <div class="single-hero-items set-bg" data-setbg="../img/hero-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>공기청정기</span>
                            <h1>LG 퓨리케어 360˚</h1>
                            <p>23년형 360˚ 공기청정기 플러스는 UP 가전으로 더 새로워집니다.
									휴대폰의 앱이 스스로 업데이트하듯 23년형 360˚공기청정기 플러스는
									새로운 기능을 더하고 내게 맞춰 변화하는 업그레이드를 제공합니다.
							</p>
                            <a href="./product.do?g_id=AS183DWFC" class="primary-btn">제품 보러가기</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>Sale <span>50%</span></h2>
                    </div>
                </div>
            </div>
            <div class="single-hero-items set-bg" data-setbg="../img/hero-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <span>가습기</span>
                            <h1>올바른 가습기 스테인리스 4.0L</h1>
                            <p>쉽고 위생적인 관리가 가능한 올케어 시스템
                                </p>
                            <a href="./product.do?g_id=WL3E400-KNK" class="primary-btn">제품 보러가기</a>
                        </div>
                    </div>
                    <div class="off-card">
                        <h2>Sale <span>50%</span></h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Main Banner Section End -->

    <!-- Banner Section Begin -->
    <div class="banner-section spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-banner">
                        <a href="./shop_search.do?searchCondition=total&searchKeyword=공기청정기" method="post"><img src="../img/banner-1.jpg" alt="">
                        <div class="inner-text">
                            <h4>Air Cleaner</h4>
                        </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <a href="./shop_search.do?searchCondition=total&searchKeyword=가습기"><img src="../img/banner-2.jpg" alt="">
                        <div class="inner-text">
                            <h4>Humidifier</h4>
                        </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-banner">
                        <a href="./shop_search.do?searchCondition=total&searchKeyword=제습기"><img src="../img/banner-3.jpg" alt="">
                        <div class="inner-text">
                            <h4>Dehumidifier</h4>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Section End -->

    <!-- Air Cleaner Banner Section Begin -->
    <section class="women-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="product-large set-bg" data-setbg="../img/Air-Cleaner-large.jpg">
                        <h2>Air Cleaner</h2>
                        <a href="./shop_search.do?searchCondition=total&searchKeyword=공기청정기">더보기</a>
                    </div>
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                            <li class="active">LG</li>
                            <li>SAMSUNG</li>
                            <li>DYSON</li>
                            <li>WINIX</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel">
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="../img/products/8f058b4b-4aed-4a11-854d-891db638f4ce_lg-air-1.jpg" alt="">
                            </div>
                            <div class="pi-text">
                                <a href="./product.do?g_id=AS353NS3A">
                                    <h5>LG 퓨리케어 오브제컬렉션 에어로타워</h5>
                                </a>
                                <div class="product-price">
                                    <span>최저렌탈가</span>월38,900원
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="../img/products/32f7a109-5069-4f47-9521-c776f72cce3a_lg-air-1.jpg" alt="">
                            </div>
                            <div class="pi-text">
                                <a href="./product.do?g_id=AS153HWWC">
                                    <h5>LG 퓨리케어 360˚ 공기청정기 Hit</h5>
                                </a>
                                <div class="product-price">
                                    <span>최저렌탈가</span>월19,900원
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="../img/products/040a890f-725d-4bf3-9082-5888ab836d27_lg-air-1.jpg" alt="">
                            </div>
                            <div class="pi-text">
                                <a href="./product.do?g_id=AS183DWFC">
                                    <h5>LG 퓨리케어 360˚ 공기청정기 플러스</h5>
                                </a>
                                <div class="product-price">
                                    <span>최저렌탈가</span>월25,000원
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="../img/products/d0aa80f4-26bd-4b1e-9f94-638876923629_lg-air-1.jpg" alt="">
                            </div>
                            <div class="pi-text">
                                <a href="./product.do?g_id=AS283DWFA">
                                    <h5>LG 퓨리케어 360˚ 공기청정기 플러스</h5>
                                </a>
                                <div class="product-price">
                                    <span>최저렌탈가</span>월34,500원
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Air Cleaner Banner Section End -->

    <!-- Deal Of The Week Section Begin-->
    <section class="deal-of-week set-bg spad" data-setbg="../img/time-bg.jpg">
        <div class="container">
            <div class="col-lg-6 text-center">
                <div class="section-title">
                    <h2>금주의 특가 할인</h2>
                    <p>디자인, 용량은 물론 우리집 공기질까지 맞춤청정하세요.
                    BESPOKE AI+ 청정 기술로 10분마다 실내외 공기질을 비교, 학습하여 오염도가 높아질 것을 예측하고 미리 실내 공기를 정화합니다.
                    실내 공기질이 좋아지면 스스로 팬을 꺼서 에너지가 최대 32 %까지 절감됩니다.
                     팬이 꺼져도 센서는 작동하기 때문에 공기질이 나빠지면 알아서 다시 작동하니 걱정하지 마세요.</p>
                    <div class="product-price">
                        <span>월19,900원</span>
                        월 14,100원
                    </div>
                </div>

                <a href="./product.do?g_id=AX053B810HND" class="primary-btn">제품 보러가기</a>
            </div>
        </div>
    </section>
    <!-- Deal Of The Week Section End -->

    <!-- Humidifier Banner Section Begin -->
    <section class="man-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8">
                    <div class="filter-control">
                        <ul>
                            <li class="active">AIRMADE</li>
                            <li>DUPLEX</li>
                            <li>LG</li>
                            <li>XIAOMI</li>
                        </ul>
                    </div>
                    <div class="product-slider owl-carousel">
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="../img/products/63cf58f1-2335-4f41-a943-556d7a8c3cf7_airmade-hu-1.jpg" alt="">
                            </div>
                            <div class="pi-text">
                                <a href="./product.do?g_id=AMH-4000">
                                    <h5>에어메이드 4L 대용량 초음파 무드등 THE투명한가습기</h5>
                                </a>
                                <div class="product-price">
                                    <span>최저렌탈가</span>월8,900원
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="../img/products/9a0d2f94-1c4c-4815-9ddb-bf47f8eebd5b_airmade-hu-1.jpg" alt="">
                            </div>
                            <div class="pi-text">
                                <a href="./product.do?g_id=AMH-4500B">
                                    <h5>에어메이드 자동세척 습도조절 가열식 가습기 </h5>
                                </a>
                                <div class="product-price">
                                    <span>최저렌탈가</span>월12,900원
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="../img/products/deaea510-83da-49fa-a1ec-fbffa6d49c6b_airmade-hu-1.jpg" alt="">
                            </div>
                            <div class="pi-text">
                                <a href="./product.do?g_id=AMH-7000">
                                    <h5>에어메이드 4L 대용량 복합식 THE 순수한가습기</h5>
                                </a>
                                <div class="product-price">
                                    <span>최저렌탈가</span>월14,900원
                                </div>
                            </div>
                        </div>
                        <div class="product-item">
                            <div class="pi-pic">
                                <img src="../img/products/5d784ccd-537b-4af2-932d-32fb83f93a03_airmade-hu-1.jpg" alt="">
                            </div>
                            <div class="pi-text">
                                <a href="./product.do?g_id=AMH-9000">
                                    <h5>에어메이드 9L 대용량 복합식 가열식 스마트가습기 </h5>
                                </a>
                                <div class="product-price">
                                    <span>최저렌탈가</span>월18,900원
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1">
                    <div class="product-large set-bg m-large" data-setbg="../img/Humidifier-large.jpg">
                        <h2>Humidifier</h2>
                        <a href="./shop_search.do?searchCondition=total&searchKeyword=가습기">더보기</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Humidifier Banner Section End -->
    
    <button id="scrollTopBtn" onclick="scrollToTop()" title="Go to top">
    	<i class="fa fa-arrow-up"></i>
  	</button>
    

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
    <script src="../js/shopSearch.js"></script>
    
    <jsp:include page="./footer.jsp"/>

    </body>

</html>