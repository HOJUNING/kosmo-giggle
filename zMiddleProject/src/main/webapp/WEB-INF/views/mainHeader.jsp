<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>양조장</title>

</head>

<body>
    <!-- Header Section Begin -->
    <!-- 상단 고정부분 ( 이후 position pixed 해줘야함 ) -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="header__top__inner">
                            <div class="header__top__left">
                                <ul>
                                    <li><a href="shop.do">스토어</a></li>
                                    <li>커뮤니티</li>
                                    <li>	
                                    	<div class="header__top__right__links">
                                		<!-- 검색버튼 -->
                                    	<a href="#" class="search-switch"><img src="./resources/img/icon/search.png" alt=""></a>
                                		</div>
                                	</li>
                                </ul>
                            </div>
                            <div class="header__logo">
                                <a href="index.do"><img src="./resources/img/mainlogo.png" alt=""></a>	
                            </div>
                            <div class="header__top__right">
                            	<!-- 로그인시 ul 내용 날리고 사용자 명 찍어줘야함 -->
                            	<div class="header__top__right__login">
                                	<ul>
                                	
                                		<c:if test="${sessionScope.user_name eq null}">
                                		<li><a href="login.do">로그인</a></li>
                                		<li><a href="gaip.do">회원가입</a></li>
                                		</c:if>
                                		
                                		<c:if test="${sessionScope.user_name ne null}">
                                		<li><a href="#">${sessionScope.user_name}님</a></li>
                                		<li><a href="logout.do">로그아웃</a></li>
                                		</c:if>
                                	</ul>
                                </div>
                                <div class="header__top__right__cart">
                                	<c:if test="${sessionScope.user_name eq null}">
                                    	<a href="#"><img src="./resources/img/icon/cart.png" alt=""> <span>0</span></a>
                                    	<div class="cart__price">장바구니: <span>$0.00</span></div>
                                    </c:if>
                                    
                                    <c:if test="${sessionScope.user_name ne null}">
                                		<a href="cart.do?user_num=${sessionScope.user_num}"><img src="./resources/img/icon/cart.png" alt=""> <span>${sessionScope.countCA}</span></a>
                                    	<div class="cart__price">장바구니: <span>${sessionScope.priceCA} 원</span></div>
                                    	
                                	</c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

</body>

</html>