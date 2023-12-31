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
	
			<div class="container-fluid">
				<!--  Row 1 -->
				<div class="row">
					<div class="col-lg-12 d-flex align-items-strech">
						<div class="card w-100">
							<div class="card-body">
								<div
									class="d-sm-flex d-block align-items-center justify-content-between mb-9">
									<div class="mb-3 mb-sm-0">
										<h5 class="card-title fw-semibold">주간 주문량</h5>
									</div>
									<div>
										<select class="form-select">
											<option value="1">주단위</option>
											<option value="2">월단위</option>
										</select>
									</div>
								</div>
								<div id="chart"></div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-lg-12">
					<!-- Monthly Earnings -->
					<div class="card">
						<div class="card-body">
							<div class="row alig n-items-start">
								<div class="col-8">
									<h5 class="card-title mb-9 fw-semibold">Monthly Earnings</h5>
									<h4 class="fw-semibold mb-3">$6,820</h4>
									<div class="d-flex align-items-center pb-1">
										<span
											class="me-2 rounded-circle bg-light-danger round-20 d-flex align-items-center justify-content-center">
											<i class="ti ti-arrow-down-right text-danger"></i>
										</span>
										<p class="text-dark me-1 fs-3 mb-0">+9%</p>
										<p class="fs-3 mb-0">last year</p>
									</div>
								</div>
								<div class="col-4">
									<div class="d-flex justify-content-end">
										<div
											class="text-white bg-secondary rounded-circle p-6 d-flex align-items-center justify-content-center">
											<i class="ti ti-currency-dollar fs-6"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="earning"></div>
					</div>
				</div>
			</div>




			<div class="py-6 px-6 text-center"></div>
		</div>
	</div>
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