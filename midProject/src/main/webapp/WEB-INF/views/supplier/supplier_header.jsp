<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>supplier_header</title>
</head>
<body>

	<!--  Header Start -->
			<header class="app-header">
				<nav class="navbar navbar-expand-lg navbar-light">
					<ul class="navbar-nav">
						<li class="nav-item d-block d-xl-none"><a
							class="nav-link sidebartoggler nav-icon-hover"
							id="headerCollapse" href="javascript:void(0)"> <i
								class="ti ti-menu-2"></i>
						</a></li>
						<li class="nav-item"></li>
					</ul>
					<div class="navbar-collapse justify-content-end px-0"
						id="navbarNav"></div>
				</nav>
			</header>
	<!--  Header End -->
	<!-- Sidebar Start -->
		<aside class="left-sidebar">
			<!-- Sidebar scroll-->
			<div>
				<div
					class="brand-logo d-flex align-items-center justify-content-between"
					style="padding: 50px 24px 0px;">
					<a href="./supplier_index.do"
						class="text-nowrap logo-img"> <img
						src="../img/logo.png"
						width="180" alt="" />
					</a>
					<div
						class="close-btn d-xl-none d-block sidebartoggler cursor-pointer"
						id="sidebarCollapse">
						<i class="ti ti-x fs-8"></i>
					</div>
				</div>
				<!-- 사이드바 네비게이션-->
				<nav class="sidebar-nav scroll-sidebar" data-simplebar="">
					<ul id="sidebarnav">


						<li class="sidebar-item"><a class="sidebar-link"
							href="./supplier_index.do" aria-expanded="false" style="font-size: 25px;">
								<span> <i class="ti ti-layout-dashboard"></i>
							</span> <span class="hide-menu">대시보드</span>
						</a></li>
						
						<li class="sidebar-item"><a class="sidebar-link"
							href="./productmange.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i class="ti ti-clipboard-list"></i>
							</span> <span class="hide-menu">제품관리</span>
						</a></li>

						<li class="sidebar-item"><a class="sidebar-link"
							href="./pricemange.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i class="ti ti-businessplan"></i>
							</span> <span class="hide-menu">가격정보관리</span>
						</a></li>
						
						<li class="sidebar-item"><a class="sidebar-link"
							href="./cardmange.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i class="ti ti-credit-card"></i>
							</span> <span class="hide-menu">할인카드관리</span>
						</a></li>

						<li class="sidebar-item"><a class="sidebar-link"
							href="./rentalmange.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i
									class="ti ti-file-description"></i>
							</span> <span class="hide-menu">렌탈상태관리</span>
						</a></li>

						<li class="sidebar-item"><a class="sidebar-link"
							href="./inquirymange.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i
									class="ti ti-package"></i>
							</span> <span class="hide-menu">1:1문의</span>
						</a></li>
						
						<li class="sidebar-item"><a class="sidebar-link"
							href="logout.do" aria-expanded="false"
							style="font-size: 25px;"> <span> <i
									 class="ti ti-logout"></i>
							</span> <span class="hide-menu">로그아웃</span>
						</a></li>


						<li class="sidebar-item"></li>
					</ul>

				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>



		<div class="body-wrapper">
			<!--  Header Start -->
			<header class="app-header">
				<nav class="navbar navbar-expand-lg navbar-light">
					<ul class="navbar-nav">
						<li class="nav-item d-block d-xl-none"><a
							class="nav-link sidebartoggler nav-icon-hover"
							id="headerCollapse" href="javascript:void(0)"> <i
								class="ti ti-menu-2"></i>
						</a></li>
						<li class="nav-item"></li>
					</ul>
					<div class="navbar-collapse justify-content-end px-0"
						id="navbarNav"></div>
				</nav>
			</header>

		</div>

		<!--  사이드바 끝 -->
</body>
</html>