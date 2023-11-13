<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    	
<%-- 세션에서 로그인 정보 가져오기 --%>
<% UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>회원정보 수정</title>

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
    
    <!-- 유효성 검사 js -->
	<script>
	$(function() { 
		
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
		  
	    function validateId() {
	        var id = $("#id").val();
	        var idPattern = /^[a-zA-Z0-9]{5,10}$/;
	        if (!id.match(idPattern)) {
	            $("#idError").text("아이디는 5자~10자의 영어와 숫자 조합이어야 합니다.");
	        } else {
	            $("#idError").text("");
	        }
	    }
	
	    function validatePassword() {
	        var pwd = $("#pwd").val();
	        var pwdPattern = /^[a-zA-Z0-9]{4,}$/;
	        if (!pwd.match(pwdPattern)) {
	            $("#pwdError").text("비밀번호는 4자 이상의 영어와 숫자 조합이어야 합니다.");
	        } else {
	            $("#pwdError").text("");
	        }
	    }
	
	    function validatePasswordConfirmation() {
	        var pwd = $("#pwd").val();
	        var pwd_chk = $("#pwd_chk").val();
	        if (pwd !== pwd_chk) {
	            $("#pwdChkError").text("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
	        } else {
	            $("#pwdChkError").text("");
	        }
	    }
	
	    function validatePhone() {
	        var phone = $("#phone").val();
	        var phonePattern = /^[0-9]*$/;
	        if (!phone.match(phonePattern)) {
	            $("#phoneError").text("전화번호는 숫자만 입력해야 합니다.");
	        } else {
	            $("#phoneError").text("");
	        }
	    }
	
	  	//아이디 중복체크
		$("#id_chk").click(function(){
			var id = $('#id').val();
			//alert(id);
			
			// AJAX를 사용하여 서버로 중복 체크 요청 보내기
		    $.ajax({
		        type: "POST",
		        url: "/midProject/idCheck.do", // 서버의 중복 체크 컨트롤러 주소
		        data: { id: id }, // 아이디를 서버로 보내기
		        success: function(response) {
		        	console.log(id);
		            if (response === "1") {
		                alert("이미 존재하는 아이디입니다.");
		                $("#submitBtn").prop('disabled', true);

		            } else if (response === "0") {
		                alert("사용 가능한 아이디입니다.");
		           		// 아이디 중복 확인이 성공했으므로 제출 버튼을 활성화합니다.
	                    $("#submitBtn").prop('disabled', false);
		            }
		        },
		        error: function() {
		            // 오류 처리
		            alert("오류가 발생했습니다.");
		        }
		    });
		});
	  	
		$("#joinForm").submit(function(event) {
	        if ($("#idError").text() !== "") {
	            event.preventDefault(); // 양식 제출 방지
	            alert("아이디 중복 확인을 해주세요.");
	        }
	    });
	  	
	    
	    $("#id").blur(validateId);
	    $("#pwd").blur(validatePassword);
	    $("#pwd_chk").blur(validatePasswordConfirmation);
	    $("#phone").blur(validatePhone);
	    
		
	});
	</script>
</head>

<body>
	
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
                    <div class="breadcrumb-text">
                        <a href="main.do"><i class="fa fa-home"></i> Home</a><a href="mypage.do"> Mypage</a> <span>회원정보수정</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- Edit User Info Section Begin -->
    <div class="edit-user-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="edit-form">
                        <h2>회원정보 수정</h2>
                        <form action="updateUser.do" method="post">
                       		<div class="group-input">
                                <label for="id">아이디 *</label>
                                <input type="text" id="id" name="id" value="<%= loggedInUser.getId() %>" style="background-color: #f0f0f0;" readonly>
                            </div>
                             <div class="group-input">
                                <label for="pwd">비밀번호 *</label>
                                <input type="password" id="pwd" name="pwd" placeholder="4자이상 영어와 숫자조합"  ><span id="pwdError" class="error"></span>
                            </div>
                            <div class="group-input">
                                <label for="pwd_chk">비밀번호 확인 *</label>
                                <input type="password" id="pwd_chk" required><span id="pwdChkError" class="error"></span>
                            </div>
                            <div class="group-input">
                                <label for="phone">전화번호 *</label>
                                <input type="text" id="phone" name="phone" value="<%= loggedInUser.getPhone() %>" placeholder="-없이 숫자조합"><span id="phoneError" class="error"></span>
                            </div>
                            <div class="group-input">
                                <label for="addr">주소</label>
                                <input type="text" id="sample6_postcode" class="postcode" name="postcode" size="5" readonly>
								<input type="button" onclick="sample6_execDaumPostcode()" class="site-btn" value="우편번호검색">
								<input type="text" id="sample6_address" name="address" size="50" placeholder="주소" value="<%= loggedInUser.getAddr() %>" readonly><br/>
								<input type="text" id="sample6_detailAddress" name="detailaddr" size="50" placeholder="상세주소">
								<input type="text" id="sample6_extraAddress" name="addr" style="display:none;">
							</div>
                            <div class="group-input" id="email">
                                <label for="email">이메일 *</label>
                                <input type="email" id="email" name="email" value="<%= loggedInUser.getEmail() %>" class="email">
                            </div>
                            
                            <button type="submit" class="site-btn edit-btn">회원정보 수정</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Edit User Info Form Section End -->

<jsp:include page="footer.jsp" />
</body>
</html>