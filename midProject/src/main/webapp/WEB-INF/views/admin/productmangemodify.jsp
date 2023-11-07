<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Modernize Free</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="../src/assets/css/styles.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0-beta3/css/all.min.css">

<script src="../src/assets/libs/jquery/dist/jquery.min.js"></script>
<script src="../src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../src/assets/js/sidebarmenu.js"></script>
<script src="../src/assets/js/app.min.js"></script>
<script src="../src/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
<script src="../src/assets/libs/simplebar/dist/simplebar.js"></script>
<script src="../src/assets/js/dashboard.js"></script>

<script>
$(document).ready(function() {
	
    // 기존 이미지 표시
    $(".image-container p").click(function() {
        // 이미지를 토글 (숨기거나 나타나게)합니다.
        $(this).next("img").toggle();
    });
    
});
</script>

</head>

<body>
	<!--  Body Wrapper -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">
		
		<jsp:include page="./admin_header.jsp"/>
		
		<!--  메인 페이지 -->

		<div class="container">
			<main>
				<div class="py-5 text-left">
					<h1>제품 수정</h1>
					<p class="lead"></p>
				</div>

				<div class="row g-5">
					<div class="col-md-12">
						<form class="needs-validation" action="productModify.do" method="post" enctype="multipart/form-data" novalidate>
							<div class="row g-3">
								<div class="row">
									<div class="col-sm-4">
										<label for="g_name" class="form-label">모델명</label> <input
											type="text" class="form-control" id="g_name" name="g_name" value="${product.g_name}">
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="g_id" class="form-label">제품명</label> <input
											type="text" class="form-control" id="g_id" name="g_id" value="${product.g_id}" readonly>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="file1" class="form-label">메인썸네일</label>
										<div class="input-group">
											<input type="file" class="form-control" id="file1" name="file1">
										</div>
										<div class="image-container">
										    <p> + 기존 이미지: ${product.g_img1}</p>
										    <img src="<c:url value='/resources/img/products/${product.g_rimg1}' />" alt="Product_Main_Thumbnail" />
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="file2" class="form-label">리스트썸네일</label>
										<div class="input-group">
											<input type="file" class="form-control" id="file2" name="file2" value="${product.g_rimg2}">
										</div>
										<div class="image-container">
										    <p> + 기존 이미지: ${product.g_img2}</p>
										    <img src="<c:url value='/resources/img/products/${product.g_rimg2}' />" alt="Product_List_Thumbnail" />
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="file3" class="form-label">대표사진</label>
										<div class="input-group">
											<input type="file" class="form-control" id="file3" name="file3" value="${product.g_rimg3}">
										</div>
										<div class="image-container">
										    <p> + 기존 이미지: ${product.g_img3}</p>
										    <img src="<c:url value='/resources/img/products/${product.g_rimg3}' />" alt="Product_Represent_Image" />
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4">
										<label for="file4" class="form-label">상세설명사진</label>
										<div class="input-group">
											<input type="file" class="form-control" id="file4" name="file4" value="${product.g_rimg4}">
										</div>
										<div class="image-container">
										    <p> + 기존 이미지: ${product.g_img4}</p>
										    <img src="<c:url value='/resources/img/products/${product.g_rimg4}' />" alt="Product_Detail_Image" />
										</div>
									</div>
								</div>


								<div class="row">
									<div class="col-sm-3">
										<label for="c_id" class="form-label">제품분류</label>
										<select class="form-select" name="c_id">
											<option value="">--제품분류 선택--</option>
											<option value="1" ${product.c_id == 1 ? 'selected' : ''}>공기청정기</option>
								            <option value="2" ${product.c_id == 2 ? 'selected' : ''}>가습기</option>
								            <option value="3" ${product.c_id == 3 ? 'selected' : ''}>제습기</option>
										</select>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-3">
										<label for="m_id" class="form-label">제조사</label>
										<select class="form-select" name="m_id" >
											<option value="">--제조사 선택--</option>
											<option value="1" ${product.m_id == 1 ? 'selected' : ''}>엘지전자</option>
								            <option value="2" ${product.m_id == 2 ? 'selected' : ''}>삼성전자</option>
								            <option value="3" ${product.m_id == 3 ? 'selected' : ''}>다이슨</option>
								            <option value="4" ${product.m_id == 4 ? 'selected' : ''}>위닉스</option>
								            <option value="5" ${product.m_id == 5 ? 'selected' : ''}>듀플렉스</option>
								            <option value="6" ${product.m_id == 6 ? 'selected' : ''}>에어메이드</option>
										</select>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-9">
										<label for="g_content" class="form-label">제품특징</label>
										<textarea class="form-control" name="g_content" rows="5" >${product.g_content}</textarea>
									</div>
								</div>

								<div class="row text-left">
									<div class="col-sm-12">
										<input class="btn btn-primary mx-2" type="submit" value="수정하기">
										<a class="btn btn-secondary mx-2" href="productmange.do">취소 및 뒤로가기</a>
										<a class="btn btn-danger mx-2" href="<c:url value='/admin/productDelete.do?g_id=${product.g_id}'/>">삭제하기</a>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</main>

		</div>



	</div>
	<!-- div 끝  -->
	
</body>
</html>