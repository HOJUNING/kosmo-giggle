<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<link rel="shortcut icon" href="./resources/img/favicon.png" type="image/x-icon" />

    <!-- Css Styles -->
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <header class="header">
        <jsp:include page="./mainHeader.jsp" />
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="#">홈</a></li>
                            <li><a href="shopCate.do">전체상품</a></li>
                            <li><a href="#">베스트상품</a></li>
                            <li><a href="#">할인상품</a>
                                <!-- <ul class="dropdown">
                                    <li><a href="shopDetails.do">Shop Details</a></li>
                                    <li><a href="#">Shoping Cart</a></li>
                                    <li><a href="#">Check Out</a></li>
                                    <li><a href="#">Wisslist</a></li>
                                    <li><a href="#">Class</a></li>
                                    <li><a href="#">Blog Details</a></li>
                                </ul> -->
                            </li>
                            <li><a href="#">미니어쳐</a></li>
                            <!-- <li><a href="#">Contact</a></li> -->
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
            <div class="hero__item set-bg" data-setbg="./resources/img/main/mainback1.jpg">
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
            <div class="hero__item set-bg" data-setbg="./resources/img/main/mainback2.jpg">
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
                        <h2><img src="./resources/img/shop/shop_sale.png" width="40" height="40"/>  이번달 특가<br/>매달 1일 상품이 바뀝니다!</h2>
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
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>주종</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="shopDetails.do">할인상품1</a></h6>
                                <div class="product__item__price">$32.00</div>
                                <div class="cart_add">
                                    <a href="shopDetails.do">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>주종</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">할인상품2</a></h6>
                                <div class="product__item__price">$30.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>주종</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">할인상품3</a></h6>
                                <div class="product__item__price">$31.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>주종</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">할인상품4</a></h6>
                                <div class="product__item__price">$25.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>주종</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">할인상품5</a></h6>
                                <div class="product__item__price">$05.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>주종</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">할인상품6</a></h6>
                                <div class="product__item__price">$14.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
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
                        <h2><img src="./resources/img/shop/shop_logo1.png" width="40" height="40"/>  양조장네<br/>전통주 칵테일!</h2>
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
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>칵테일</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">칵테일1</a></h6>
                                <div class="product__item__price">$32.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>칵테일</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">칵테일2</a></h6>
                                <div class="product__item__price">$30.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>칵테일</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">칵테일3</a></h6>
                                <div class="product__item__price">$31.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>칵테일</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">칵테일4</a></h6>
                                <div class="product__item__price">$25.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>칵테일</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">칵테일5</a></h6>
                                <div class="product__item__price">$05.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="./resources/img/shop/gaonasi.jpg">
                                <div class="product__label">
                                    <span>칵테일</span>
                                </div>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">칵테일6</a></h6>
                                <div class="product__item__price">$14.00</div>
                                <div class="cart_add">
                                    <a href="#">상세 페이지로</a>
                                </div>
                            </div>
                        </div>
                    </div> -->
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
<script src="./resources/js/jquery-3.3.1.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/jquery.nice-select.min.js"></script>
<script src="./resources/js/jquery.barfiller.js"></script>
<script src="./resources/js/jquery.magnific-popup.min.js"></script>
<script src="./resources/js/jquery.slicknav.js"></script>
<script src="./resources/js/owl.carousel.min.js"></script>
<script src="./resources/js/jquery.nicescroll.min.js"></script>
<script src="./resources/js/main.js"></script>
</body>

</html>