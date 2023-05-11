<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>shopCate</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href=".././resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href=".././resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <!-- 상단 고정부분 ( 이후 position pixed 해줘야함 ) -->
    <header class="header">
        <jsp:include page="./mainHeader.jsp" />
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="shop.do">홈</a></li>
                            <li><a href="shopCate.do?ki_name=전체상품">전체상품</a></li>
                            <li><a href="#">베스트상품</a></li>
                            <li><a href="shopCate.do?ki_name=할인상품">할인상품</a></li>
                            <li><a href="shopCate.do?ki_name=미니어쳐">미니어쳐</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>${mainName}</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="index.do">메인</a>
                        <span>${mainName}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
        
        	
            <div class="row">
            	<!-- 상품 반복 시작 -->
                <c:forEach var="list" items="${alList}">
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg=".././resources/upload/${list.img_name}">
                                <div class="product__label">
                                    <span>${list.ki_name}</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="shopDetails.do?al_num=${list.al_num}">${list.al_name}</a></h6>
                                	<c:if test="${list.sale_price eq '0'}">
		                            	<div class="product__item__price">${list.al_price}원</div>
		                            </c:if>
		                            <c:if test="${list.sale_price ne '0'}">
			                            <div class="product__item__saleprice">${list.al_price}원</div>
			                            <div class="product__item__price">${list.sale_price}원</div>
		                            </c:if>
		                            <div class="cart_add">
		                            
		                                <a href="shopDetails.do?al_num=${list.al_num}">상세 페이지로</a>
		                            </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!-- 상품 반복 끝 -->
            </div>	
           <!--  <div class="shop__last__option">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="shop__pagination">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><span class="arrow_carrot-right"></span></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="shop__last__text">
                            <p>Showing 1-9 of 10 results</p>
                        </div>
                    </div>
                </div>
            </div> -->
        </div>
    </section>
    <!-- Shop Section End -->

    <jsp:include page="./footer.jsp" />

<!-- Js Plugins -->
<script src=".././resources/js/jquery-3.3.1.min.js"></script>
<script src=".././resources/js/bootstrap.min.js"></script>
<script src=".././resources/js/jquery.nice-select.min.js"></script>
<script src=".././resources/js/jquery.barfiller.js"></script>
<script src=".././resources/js/jquery.magnific-popup.min.js"></script>
<script src=".././resources/js/jquery.slicknav.js"></script>
<script src=".././resources/js/owl.carousel.min.js"></script>
<script src=".././resources/js/jquery.nicescroll.min.js"></script>
<script src=".././resources/js/main.js"></script>
</body>

</html>