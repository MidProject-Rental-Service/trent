<%@page import="com.mid.mvc.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
	%>

    <!-- Footer Section Begin -->
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="footer-left">
                        <div>
                            <h5>CUSTOMER CENTER</h5>
                            <h3>02.739.7235</h3>
                        </div>
                        <ul>
                            <li>월 ~ 금 : AM 09:00 ~ PM 22:00</li>
                            <li>점심시간 : PM 12:30 ~ PM 18:00</li>
                            <li>휴무 : 일요일 / 공휴일</li>
                        </ul>

                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="footer-widget">
                        <h5>About Us</h5>
                        <ul>
                            <li>대표번호 : 02.739.7235</li>
                            <li>팩스번호 : 02.739.7235</li>
                            <li>대표 : 홍길동</li>
                            <li>주소 : </li>
                            <li>서울특별시 마포구 백범로 23, 3충(신수동 케이터틀)</li>
                            <li>이메일 : webmaster@trent.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-widget">
                        <h5>Site Map</h5>
                        <ul>
                            	<c:if test="<%= loggedInUser != null %>">
								    <li><a href="./mypage.do">마이페이지</a></li>
									<li><a href="./shopping_cart.do">장바구니</a></li>
									<li><a href="./shop.do">전체상품보기</a></li>
								</c:if>
                            	<c:if test="<%= loggedInUser == null %>">
                            		<li><a href="./shop.do">전체상품보기</a></li>
                            	</c:if>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="footer-logo">
                        <a href="./main.do"><img src="../img/footer-logo.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright-reserved">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-text">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </div>
                        <div class="payment-pic">
                            <img src="../img/payment-method.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    