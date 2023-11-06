<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="Fashi Template" />
    <meta name="keywords" content="Fashi, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>렌탈 신청</title>
    <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
      rel="stylesheet"
    />

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
    <link rel="stylesheet" href="../css/rentstyle.css" type="text/css" />
    
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
            <a href="./rental.do"><i class="fa fa-home"></i> Home</a>
            <a href="./shop.do">Shop</a>
            <span>렌탈신청</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumb Section Begin -->
  <!--Rent From -->
  <body>
    <section class="rent_spad">
        <form class="rental-form"action="">
      <div class="container">
        <div class="row">
          <div class="col-lg-2">
            <div class="rent-table">
              <div class="rent1">
                <table class="rent-info">
                  <tr>
                    <th></th>
                    <th colspan="3">신청정보</th>
                    <th></th>
                  </tr>
                </table>
                <br />
                <table class="rent-form">
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>이름</td>
                    <td >
                      <input type="text"/>
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>휴대폰번호</td>
                    <td >
                      <input type="text"  />
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>주소</td>
                    <td>
                      <input type="text" class="addr-input" style="width: 45%;"/>
                      <input
                        type="button"
                        class="addr-btn"
                        value="우편번호검색"
                        style="width: 44%"
                      />
                    </td>
                    
                  </tr>
                  <tr>
                    <td></td>
                    <td>
                      <input type="text"  />
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td >
                      <input type="text"  />
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>요청사항</td>
                    <td >
                      <input type="text"  />
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                </table>
              </div>
              <div class="rent2">
                <table class="rent-order-info">
                
                  <tr>
                    <th></th>
                    <th colspan="3">신청내역</th>
                    <th></th>
                  </tr>
                </table>
                <br />
                <table class="rent-order-form">
                  <tr>
                    <td>제품</td>
                    <td>제품 정보</td>
                    <td>렌탈 요금</td>
                  </tr>
                  <tr>
                    <td><img src="../img/cart-page/product-1.jpg" alt="" /></td>
                    <td>상품명<br />공급사<br />약정기간<br />수량</td>
                    <td>12,000</td>
                  </tr>
                  <tr>
                    <td><img src="../img/cart-page/product-2.jpg" alt="" /></td>
                    <td>상품명<br />공급사<br />약정기간<br />수량</td>
                    <td>12,000</td>
                  </tr>
                </table>
                    <div class="rent-checkout">
                      <ul>
                  
                        <li class="rent-total">월 청구요금<span>36,000</span></li>
                  
                      </ul>
                      <a href="#" class="rent-btn">렌탈신청하기</a>
                    </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
    </section>
    
    <jsp:include page="./footer.jsp"/>
    
  </body>
  
</html>
