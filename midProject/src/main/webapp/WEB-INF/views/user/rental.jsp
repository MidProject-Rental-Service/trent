<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
  
<%-- 세션에서 로그인 정보 가져오기 --%>
<% UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser"); %>
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
  
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
		function sample6_execDaumPostcode() {
		    new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		            var addr = ''; // 주소 변수
		            var extraAddr = ''; // 참고항목 변수
		
		            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                addr = data.roadAddress;
		            } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                addr = data.jibunAddress;
		            }
		
		            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		            if(data.userSelectedType === 'R'){
		                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                    extraAddr += data.bname;
		                }
		                // 건물명이 있고, 공동주택일 경우 추가한다.
		                if(data.buildingName !== '' && data.apartment === 'Y'){
		                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                }
		                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                if(extraAddr !== ''){
		                    extraAddr = ' (' + extraAddr + ')';
		                }
		                // 조합된 참고항목을 해당 필드에 넣는다.
		                document.getElementById("sample6_extraAddress").value = extraAddr;
		            
		            } else {
		                document.getElementById("sample6_extraAddress").value = '';
		            }
		
		            // 우편번호와 주소 정보를 해당 필드에 넣는다.
		            document.getElementById('sample6_postcode').value = data.zonecode;
		            document.getElementById("sample6_address").value = addr;
		            // 커서를 상세주소 필드로 이동한다.
		            document.getElementById("sample6_detailAddress").focus();
		        }
		    }).open();
		}
	</script>
	
	<script>
	  // 페이지 로드 시 주소 정보를 각 필드에 표시
	  $(document).ready(function() {
	    var fullAddress = "<%= loggedInUser.getAddr() %>";
	    if (fullAddress) {
	      var addressParts = fullAddress.split(",");
	      $("#sample6_postcode").val(addressParts[0]);
	      $("#sample6_address").val(addressParts[1]);
	      $("#sample6_detailAddress").val(addressParts[2]);
	    }
	  });
	
	  // 상세주소 입력이 완료되면 주소 정보를 hidden 필드에 저장
	  $("#sample6_detailAddress").on("change", function() {
	    var postcode = $("#sample6_postcode").val();
	    var addr = $("#sample6_address").val();
	    var detailaddr = $(this).val();
	    var fullAddress = postcode + "," + addr + "," + detailaddr;
	    $("#sample6_extraAddress").val(fullAddress);
	  });
	</script>
  </head>

	
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
						<li><a href="./shop.do">전체렌탈제품</a></li>
						<li><a href="./shop_best.do">BEST 제품</a>
						<li><a href="./discountCard.do">할인카드</a></li>
						<li  class="active"><a href="#">Pages</a>
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
  
   <!-- Breadcrumb Section Begin -->
   <div class="breacrumb-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="breadcrumb-text product-more">
            <a href="./rental.do"><i class="fa fa-home"></i> Home</a>
            <a href="./shop.do">전체렌탈제품</a>
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
    <form class="rental-form" action="applicationRental.do" method="post">
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
                      <input type="text" value="<%= loggedInUser.getName() %>"/>
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>전화번호</td>
                    <td >
                      <input type="text" value="<%= loggedInUser.getPhone() %>"/>
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>주소</td>
                    <td>
                      <input type="text" id="sample6_postcode" class="postcode" name="addr" size="5" style="width: 45%;" readonly>
					  <input type="button" onclick="sample6_execDaumPostcode()" class="addr-btn" value="우편번호검색" style="width: 44%" />
					</td>
                    
                  </tr>
                  <tr>
                    <td></td>
                    <td>
                      <input type="text" id="sample6_address" name="addr" size="50" placeholder="주소" value="<%= loggedInUser.getAddr() %>" readonly>
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td >
                       <input type="text" id="sample6_detailAddress" name="addr" size="50" placeholder="상세주소">
                       <input type="text" id="sample6_extraAddress" style="display:none;">
                    </td>
                  </tr>
                  <tr>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td>요청사항</td>
                    <td >
                      <input type="text" name="b_requirements"  />
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
                <!-- 선택한 제품 정보 불러오는 폼 -->
                <table class="rent-order-form">
                  <tr>
                    <td class="product">제품</td>
                    <td class="productInfo">제품 정보</td>
                    <td class="rentalFee">렌탈 요금</td>
                  </tr>
                  <tr>
                    <td class="productImg"><img src="<c:url value='../resources/img/products/${rentalInfo.g_rimg1}' />" style="width: 100px;"></td>
                    <td class="rentalInfo"><span>모델명 : ${rentalInfo.g_id}</span><br/><span>공급사명 : ${rentalInfo.s_name}</span><br/><span>약정 기간 : ${rentalInfo.p_rent}개월</span></td>
                    <td class="rentalFee"><fmt:formatNumber value="${rentalInfo.p_price}" pattern="#,##0"/>원
                  </tr>
                  
                  <input type=hidden name=b_rent value="${rentalInfo.p_rent }">
                  <input type=hidden name=b_price value="${rentalInfo.p_price }">
                  <input type=hidden name=b_card value="${rentalInfo.p_card }">
                  <input type=hidden name=b_gift value="${rentalInfo.p_gift }">
                  <input type=hidden name=s_name value="${rentalInfo.s_name }">
                  <input type=hidden name=id value="${rentalInfo.id }">
                  <input type=hidden name=g_id value="${rentalInfo.g_id }">
                </table>
                    <div class="rent-checkout">
                      <ul>
                  
                        <li class="rent-total">월 청구요금<span><fmt:formatNumber value="${rentalInfo.p_price}" pattern="#,##0"/>원</span></li>
                  
                      </ul>
                      <input type="submit" class="rent-btn" value="렌탈신청하기">
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
