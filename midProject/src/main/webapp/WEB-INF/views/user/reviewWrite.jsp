<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="Fashi Template" />
    <meta name="keywords" content="Fashi, unica, creative, html" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>review Write 리뷰 작성</title>

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
    <link rel="stylesheet" href="../css/rent-reviewWrite-style.css" type="text/css" />
  </head>

  <body>
    <jsp:include page="./header_before.jsp"/>
	
    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="breadcrumb-text">
              <a href="#"><i class="fa fa-home"></i> Home</a>
              <span>My Page</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Product Shop Section Begin -->
    <section class="review-write-spad">
      <div class="container">
        <div class="row">
          <!-- 좌측 메뉴 -->
          <div
            class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter"
          >
          <div class="mypage-menu-tab">
         <table class="mypage-tab">
          <tr>
            <th>마이페이지</th>
          </tr>
          <tr>
            <td><a href="productManagement.do">신청목록</a></td>
          </tr>
          <tr>
            <td><a href="reviewManagement.do">리뷰관리</a></td>
          </tr>
          <tr>
            <td><a href="inquiryList.do">1:1문의</a></td>
          </tr>
          <tr>
            <td ><a href="#">회원정보수정</a></td>
          </tr>
         </table>
          </div>
          </div>
          <!-- 좌측 메뉴 끝-->

          <!--리뷰 목록 -->
          <div class="col-lg-9 order-1 order-lg-2">
            <div class="menu-title">
              <h4>리뷰작성</h4>
            </div>
            <div class="review-write">
              <form class="review-write-form" action="">
                <div id ="form-group" class="form-group row">
                  <div class="col-md-3">
                    <img src="img/products/product-1.jpg" alt="">
                  </div>
                  <div class="col-md-3">
                    <select name="grade" id="grade" class="form-control">
                      <option value="">평점선택</option>
                      <option value="5">5</option>
                      <option value="4">4</option>
                      <option value="3">3</option>
                      <option value="2">2</option>
                      <option value="1">1</option>
                    </select>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input class="form-control" type="text" value="작성자아이디" disabled>
                    </div>
                    <div class="form-group">
                      <input class="form-control" type="text" value="제조사/제품명" disabled>
                    </div>
                    <div class="form-group">
                      <input class="form-control" type="text" value="공급사명" disabled>
                    </div>
                  </div>
                </div>
             
                <div class="form-group">
                  <textarea class="form-control" rows="4" cols="50"></textarea>
                </div>
                <div class="form-group row">
                  <div class="col-md-6 text-left">
                    <input type="file" name="file" id="file"  accept=".img,.jpg,.png">
                  </div>
                  <div  class="col-md-6 text-right">
                    <button type="submit" class="btn btn-primary cancle-btn">취소</button>
                    <button type="submit" class="btn btn-primary complete-btn">완료</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
      </div>
    </section>
    <!-- Product Shop Section End -->

    <jsp:include page="./footer.jsp"/>

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/jquery.dd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
