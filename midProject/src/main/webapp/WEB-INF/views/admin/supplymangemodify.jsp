<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">



<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Modernize Free</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<link rel="stylesheet"
	href="../src/assets/css/styles.min.css" />
</head>

<body>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">
		
	<jsp:include page="./admin_header.jsp"/>

		<!-- 메인 페이지 -->

		<div class="container">
			<main>
				<div class="py-5 text-center">
					<h1>공급사 정보 수정</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form action="supplymangemodifing.do" method='post' onsubmit="return submitForm();">
							<!-- id 가져오기 -->
							<input type="hidden" name="id" value="${supply.id }">
							
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label  class="form-label">아이디</label> <input
											type="text" class="form-control" readonly value="${supply.id }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="pwd" class="form-label">비밀번호</label> <input
											type="text" class="form-control" name="pwd" value="${supply.pwd }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="name" class="form-label">회사명</label> <input
											type="text" class="form-control" name="name" value="${supply.name }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="phone" class="form-label">회사번호</label> <input
											type="text" class="form-control" name="phone" value="${supply.phone }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-3 offset-sm-4">
										<label for="addr" class="form-label">주소</label> 
										<input type="button" onclick="sample6_execDaumPostcode()"  value="우편번호검색" onclick="checkPost()">
		                                <input type="text" id="sample6_postcode" class="form-control" name="postcode" placeholder="우편번호" size="2" >							
										<input type="text" id="sample6_address" class="form-control" name="address" size="50" placeholder="주소" value="${supply.addr }" ><br/>
										<input type="text" id="sample6_detailAddress" class="form-control" name="detailaddr" size="50" placeholder="상세주소">
										<input type="text" id="sample6_extraAddress" class="form-control" name="addr" style="display:none;">		
										<input type="hidden"  id="addr2" name="addr2" value="${supply.addr}">							
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4 offset-sm-4">
										<label for="email" class="form-label">이메일</label> <input
											type="text" class="form-control" name="email" value="${supply.email }">
										<div class="invalid-feedback"></div>
									</div>
								</div>

								<div class="row text-center">
									<div class="col-sm-12">
										<button type="submit" class="btn btn-primary" id="modify" >수정하기</button>
										<a class="btn btn-danger mx-2" href="supplymange.do">뒤로가기</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</main>

		</div>

	</div>
	
	<script>
    // 페이지 로드 시 주소 정보를 각 필드에 표시
    document.addEventListener('DOMContentLoaded', function () {
        var fullAddress = "${supply.addr}";
        
        if (fullAddress) {
            var addressParts = fullAddress.split(',');
            document.getElementById("sample6_postcode").value = addressParts[0].trim();
            document.getElementById("sample6_address").value = addressParts[1].trim();
            document.getElementById("sample6_detailAddress").value = addressParts[2].trim();
        }
    });
	</script>   
	
	<!-- div 끝  -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="../src/assets/libs/jquery/dist/jquery.max.js"></script>	
	<script
		src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
	<script
		src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="../src/assets/js/sidebarmenu.js"></script>
	<script src="../src/assets/js/app.min.js"></script>
	<script
		src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
	<script
		src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
	<script src="../src/assets/js/dashboard.js"></script>
</body>
</html>