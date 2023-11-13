<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Fashi Template">
<meta name="keywords" content="Fashi, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>로그인</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="../css/themify-icons.css" type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css"
	type="text/css">
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

</head>

<body>
	<jsp:include page="header_before.jsp" />
	
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
						<li><a href="./shop.do">전체렌탈상품</a></li>
						<li><a href="./shop_best.do">BEST 상품</a>
						<li><a href="./discountCard.do">할인카드</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								    <li><a href="./join.do">회원가입</a></li>
									<li><a href="./login.do">로그인</a></li>
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
						<a href="./main.do"><i class="fa fa-home"></i> Home</a> <span>로그인</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Form Section Begin -->

	<!-- Register Section Begin -->
	<div class="register-login-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="login-form">
						<h2>로그인</h2>
						<form action="loginCheck.do" method="post">
							<div class="group-input">
								<label for="id">아이디 *</label> <input type="text" id="id"
									name="id">
							</div>
							<div class="group-input">
								<label for="pwd">비밀번호 *</label> <input type="password" id="pwd"
									name="pwd">
							</div>
							<div class="group-input">
							    <label for="role">역할 *</label>
							    <select id="role" name="role">
							    	<option value="">-- 역할 선택 --</option>
							        <option value="user" selected>일반 사용자</option>
							        <option value="admin">관리자</option>
							        <option value="supplier">공급사</option>
							    </select>
							</div>
							<button type="submit" class="site-btn login-btn">로그인</button>
						</form>
						<div class="switch-login">
							<a href="join.do" class="or-login">회원가입을 아직 안하셨나요?</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Register Form Section End -->

	<jsp:include page="footer.jsp" />
</body>
</html>