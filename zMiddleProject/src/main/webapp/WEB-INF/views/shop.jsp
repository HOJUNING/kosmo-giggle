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

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__cart">
            <div class="offcanvas__cart__links">
                <a href="#" class="search-switch"><img src="./resources/img/icon/search.png" alt=""></a>
                <a href="#"><img src="./resources/img/icon/heart.png" alt=""></a>
            </div>
            <div class="offcanvas__cart__item">
                <a href="#"><img src="./resources/img/icon/cart.png" alt=""> <span>0</span></a>
                <div class="cart__price">Cart: <span>$0.00</span></div>
            </div>
        </div>
        <div class="offcanvas__logo">
            <a href="#"><img src="./resources/img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__option">
            <ul>
                <li>USD <span class="arrow_carrot-down"></span>
                    <ul>
                        <li>EUR</li>
                        <li>USD</li>
                    </ul>
                </li>
                <li>ENG <span class="arrow_carrot-down"></span>
                    <ul>
                        <li>Spanish</li>
                        <li>ENG</li>
                    </ul>
                </li>
                <li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>
            </ul>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

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
                                		<li><a href="#">로그인</a></li>
                                		<li><a href="#">회원가입</a></li>
                                	</ul>
                                </div>
                                <div class="header__top__right__cart">
                                    <a href="cart.do"><img src="./resources/img/icon/cart.png" alt=""> <span>0</span></a>
                                    <div class="cart__price">Cart: <span>$0.00</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="canvas__open"><i class="fa fa-bars"></i></div>
            </div>
        </div>
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

    <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg="./resources/img/footer-background.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>양조장 주식회사</h6>
                        <ul>
                        	<li></li>
                            <li>고객센터 : 070-0000-0000</li>
                            <li>평일 10:00 - 18:00</li>
                         <!--    <li>Sunday: 10:00 am â 16:30 pm</li> -->
                         	<li>주말,공휴일 휴무</li>
                        </ul>
                        <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="./resources/img/mainlogo.png" alt=""></a>
                        </div>
                        <p>대표:양태인  사업자등록번호:000-00-00000  <br/>통신판매  신고번호:0000-코스모-0000<br/>주소:서울 금천구 가산디지털2로 123 <br/>월드메르디앙 2차 413호  정보보호 책임자:???<br/>대표 전화:000-0000-0000  이메일:hello@world</p>
             <!--            <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                        </div> -->
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__newslatter">
                        <h6>Subscribe</h6>
                        <p>Get latest updates and offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Email">
                            <button type="submit"><i class="fa fa-send-o"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <p class="copyright__text text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                      </p>
                  </div>
                  <div class="col-lg-5">
                    <div class="copyright__widget">
                        <ul>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

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