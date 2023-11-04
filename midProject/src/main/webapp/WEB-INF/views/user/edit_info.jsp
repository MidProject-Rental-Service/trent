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
    
</head>

<body>
<jsp:include page="header_before.jsp"/> 

  <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Edit Info</span>
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
                        <form action="#">
                             <div class="group-input">
                                <label for="pwd">비밀번호 *</label>
                                <input type="password" id="pwd">
                            </div>
                            <div class="group-input">
                                <label for="con-pwd">비밀번호 확인 *</label>
                                <input type="password" id="con_pwd">
                            </div>
                            <div class="group-input">
                                <label for="name">이름 *</label>
                                <input type="text" id="name">
                            </div>
                            <div class="group-input">
                                <label for="phone">전화번호 *</label>
                                <input type="text" id="phone">
                            </div>
                            <div class="group-input">
                                <label for="addr">주소</label>
                                <input type="text" id="postcode" class="postcode" name="postcode" size="5" readonly>
								<input type="button" class="site-btn" value="우편번호검색" onclick="checkPost()">
								<input type="text" id="addr" name="addr" size="50" placeholder="주소" readonly><br/>
								<input type="text" id="detailAddr" name="detailAddr" size="50" placeholder="상세주소">
							</div>
                            <div class="group-input">
	                                <label for="email">이메일 *</label>
	                                <input type="email" id="email" name="email" class="email">
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