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
    <title>양조장 스토어</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <!-- 빠삐콘 -->
	<link rel="shortcut icon" href=".././resources/img/favicon.png" type="image/x-icon" />

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

    <header class="header">
   		<!-- 헤더부분 불러오기 -->
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
    
    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__item set-bg" data-setbg=".././resources/img/main/mainback1.jpg">
            	<!-- 중앙 텍스트 박스 & 글씨 부분 -->
                <!-- <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <div class="hero__text">
                                <h2>매일 마시는 소주/맥주가 아닌 <br/>새로운 술을 찾으신다면</h2>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            <div class="hero__item set-bg" data-setbg=".././resources/img/main/mainback2.jpg">
            	<!-- 중앙 텍스트 박스 & 글씨 부분 -->
                <!-- <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <div class="hero__text">
                                <h2>양조장네 만의 특별한 제품들은 어떠세요?</h2>
                                <a href="#" class="primary-btn">스토어 가기</a>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </section><br/><br/>
    <!-- Hero Section End -->
	
	<!-- Categories Section Begin -->
    <div class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                	
                	<!-- 탁주 아이콘 -->
                    <a href="shopSubCate.do?ki_num=301">
                    	<!-- 카테고리 이미지부분 (추후 반복문) -->
                    	<div class="categories__item">
                        	<div class="categories__item__icon">
                            	<span class="flaticon-029-cupcake-3"></span>
                            	<h5>탁주</h5>
                        	</div>
                   		</div>
                    </a>
                    
                    <!-- 증류주 아이콘 -->
                    <a href="shopSubCate.do?ki_num=302">
	                    <div class="categories__item">
	                        <div class="categories__item__icon">
	                            <span class="flaticon-034-chocolate-roll"></span>
	                            <h5>증류주</h5>
	                        </div>
	                    </div>
	                </a>
	                
	                <!-- 약주/청주 아이콘 -->
					<a href="shopSubCate.do?ki_num=303">
	                    <div class="categories__item">
	                        <div class="categories__item__icon">
	                            <span class="flaticon-005-pancake"></span>
	                            <h5>약주/청주</h5>
	                        </div>
	                    </div>
	                </a>
	                
	                <!-- 칵테일 아이콘 -->
					<a href="shopSubCate.do?ki_num=304">
	                    <div class="categories__item">
	                        <div class="categories__item__icon">
	                            <span class="flaticon-030-cupcake-2"></span>
	                            <h5>칵테일</h5>
	                        </div>
	                    </div>
	                </a>
	                
	                <!-- 선물세트 아이콘 -->
					<a href="shopSubCate.do?ki_num=305">
	                    <div class="categories__item">
	                        <div class="categories__item__icon">
	                            <span class="flaticon-006-macarons"></span>
	                            <h5>선물세트</h5>
	                        </div>
	                    </div>
	                </a>
	                
                    <!-- <div class="categories__item">
                        <div class="categories__item__icon">
                            <span class="flaticon-006-macarons"></span>
                            <h5>Cupcake</h5>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
    <!-- Categories Section End -->
    
    <!-- 할인상품 slider 상품 6개 -->
    <!-- Related Products Section Begin -->
    <section class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2><img src=".././resources/img/shop/shop_sale.png" width="40" height="40"/>  이번달 특가<br/>매달 1일 상품이 바뀝니다!</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="#">더보기</a>
                        <!-- <span>Shop</span> -->
                    </div>
                </div>
            </div><br/><br/>
            <div class="row">
                <div class="related__products__slider owl-carousel">
                	
                	<!-- 상품 반복시작 -->
                	<c:forEach var="sale" items="${sale}" end="6">
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg=".././resources/upload/${sale.img_name}">
                                <div class="product__label">
                                    <span>칵테일</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="shopDetails.do?al_num=${sale.al_num}">${sale.al_name}</a></h6>
                                	<div class="product__item__saleprice">${sale.al_price}원</div>
		                            <div class="product__item__price">${sale.sale_price}원</div>
		                            <div class="cart_add">
		                                <a href="shopDetails.do?al_num=${sale.al_num}">상세 페이지로</a>
		                            </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- 상품 반복 끝 -->
                </div>
            </div>
        </div>
    </section>
    <!-- Related Products Section End -->
    
    <!-- 칵테일 slider 메뉴 6개 -->
    <!-- Related Products Section Begin -->
    <section class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2><img src=".././resources/img/shop/shop_logo1.png" width="40" height="40"/>  양조장네<br/>전통주 칵테일!</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="shopSubCate.do?ki_num=304">더보기</a>
                        <!-- <span>Shop</span> -->
                    </div>
                </div>
            </div><br/><br/>
            <div class="row">
                <div class="related__products__slider owl-carousel">
                
                	<!-- 상품 반복시작 -->
                	<c:forEach var="cak" items="${caktail}" end="6">
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg=".././resources/upload/${cak.img_name}">
                                <div class="product__label">
                                    <span>칵테일</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="shopDetails.do?al_num=${cak.al_num}">${cak.al_name}</a></h6>
                                	<c:if test="${cak.sale_price eq '0'}">
		                            	<div class="product__item__price">${cak.al_price}원</div>
		                            </c:if>
		                            <c:if test="${cak.sale_price ne '0'}">
			                            <div class="product__item__saleprice">${cak.al_price}원</div>
			                            <div class="product__item__price">${cak.sale_price}원</div>
		                            </c:if>
		                            <div class="cart_add">
		                            
		                                <a href="shopDetails.do?al_num=${cak.al_num}">상세 페이지로</a>
		                            </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- 상품 반복 끝 -->
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Related Products Section End -->
    
    <!-- 게시판 -->
    <div class="conts">
    	<div class="col_group">
    		<!-- 공지 -->
    		<div class="ps_news">
    			<div class="head">
    				<h3>공지사항</h3>
    				<a href="#" class="btn_more"><span>+</span> 더보기</a>
    			</div><br/>
    			<ul class="list">
    				<li>1등</li>
    				<li>2등</li>
    				<li>3등</li>
    			</ul>
    		</div>
    		<!-- 인기글 -->
    		<div class="popular">
    			<div class="head">
    				<h3>지난달 베스트 게시글</h3>
    				<a href="#" class="btn_more"><span>+</span> 더보기</a>
    			</div><br/>
    			<ul class="list">
    				<li>1등</li>
    				<li>2등</li>
    				<li>3등</li>
    			</ul>
    		</div>
    	</div>
    </div>

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