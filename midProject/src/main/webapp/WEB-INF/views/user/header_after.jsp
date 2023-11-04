<%@page import="com.mid.mvc.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
  UserVO user = (UserVO) session.getAttribute("loggedInUser"); 
  String username = user.getId(); 
%>
 
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Header Section Begin -->
        <header class="header-section">
            <div class="header-top">
                <div class="container">
                    <div class="ht-left">
                        <div class="mail-service">
                            <i class=" fa fa-envelope"></i>
                            webmaster@trent.com
                        </div>
                        <div class="phone-service">
                            <i class=" fa fa-phone"></i>
                            02.739.7235
                        </div>
                    </div>
                    

                </div>
            </div>
            <div class="container">
                <div class="inner-header">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-lg-2 col-md-2">
                            <div class="logo">
                                <a href="./main.do">
                                    <img src="../img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="advanced-search">
                                <button type="button" class="category-btn">모두</button>
                                <div class="input-group">
                                    <input type="text" placeholder="검색어를 입력해주세요">
                                    <button type="button"><i class="ti-search"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 text-right col-sm">
                            <ul class="nav-right">

                                <li class="login-icon">
                                    <a href="mypage.do" class="login-panel"><i class="fa fa-user"></i>  <%= username %>님</a>                  
                                </li>
                                <li class="login-icon">
                                	<a href="logout.do" class="logout-panel"><i class="fa fa-sign-out custom-icon"></i></a>
                                </li>
                                
                                <li class="cart-icon">
                                    <a href="./check-out.html">
                                        <i class="icon_bag_alt"></i>
                                        <span>3</span>
                                    </a>
                                    <div class="cart-hover">
                                        <div class="select-items">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td class="si-pic"><img src="../img/select-product-1.jpg" alt=""></td>
                                                        <td class="si-text">
                                                            <div class="product-selected">
                                                                <p>$60.00 x 1</p>
                                                                <h6>Kabino Bedside Table</h6>
                                                            </div>
                                                        </td>
                                                        <td class="si-close">
                                                            <i class="ti-close"></i>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="si-pic"><img src="../img/select-product-2.jpg" alt=""></td>
                                                        <td class="si-text">
                                                            <div class="product-selected">
                                                                <p>$60.00 x 1</p>
                                                                <h6>Kabino Bedside Table</h6>
                                                            </div>
                                                        </td>
                                                        <td class="si-close">
                                                            <i class="ti-close"></i>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="select-total">
                                            <span>total:</span>
                                            <h5>$120.00</h5>
                                        </div>
                                        <div class="select-button">
                                            <a href="#" class="primary-btn view-card">VIEW CARD</a>
                                            <a href="./check-out.html" class="primary-btn checkout-btn">CHECK OUT</a>
                                        </div>
                                    </div>
            
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="nav-item">
                <div class="container">
                    <div class="nav-depart">
                        <div class="depart-btn">
                            <i class="ti-menu"></i>
                            <span>All departments</span>
                            <ul class="depart-hover">
                                <li class="active"><a href="#">공기청정기</a></li>
                                <li><a href="#">가습기</a></li>
                                <li><a href="#">냉난방기</a></li>
                                <li><a href="#">제습기</a></li>
                                <li><a href="#">에어컨</a></li>
                            </ul>
                        </div>
                    </div>
                    <nav class="nav-menu mobile-menu">
                        <ul>
                            <li class="active"><a href="./index.html">Home</a></li>
                            <li><a href="./shop.html">전체렌탈상품</a></li>
                            <li><a href="#">BEST 상품</a>
                                <ul class="dropdown">
                                    <li><a href="#">Men's</a></li>
                                    <li><a href="#">Women's</a></li>
                                    <li><a href="#">Kid's</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html">할인카드</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                    <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                                    <li><a href="./check-out.html">Checkout</a></li>
                                    <li><a href="./faq.html">Faq</a></li>
                                    <li><a href="./register.html">Register</a></li>
                                    <li><a href="./login.html">Login</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <div id="mobile-menu-wrap"></div>
                </div>
            </div>
        </header>
        <!-- Header End -->
