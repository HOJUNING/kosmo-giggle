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
    <title>상품 상세정보</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

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
                                <a href="#"><img src="./resources/img/mainlogo.png" alt=""></a>	
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
                            <li><a href="#">전체상품</a></li>
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
	
	<!-- 해당 주류 정보 -->
    <!-- Shop Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__img">
                        <div class="product__details__big__img">
                            <img class="big_img" src="./resources/img/shop/details/product-big-1.jpg" alt="">
                        </div>
                        <div class="product__details__thumb">
                            <div class="pt__item active">
                                <img data-imgbigurl="./resources/img/shop/details/product-big-2.jpg"
                                src="./resources/img/shop/details/product-big-2.jpg" alt="">
                            </div>
                            <div class="pt__item">
                                <img data-imgbigurl="./resources/img/shop/details/product-big-1.jpg"
                                src="./resources/img/shop/details/product-big-1.jpg" alt="">
                            </div>
                            <div class="pt__item">
                                <img data-imgbigurl="./resources/img/shop/details/product-big-4.jpg"
                                src="./resources/img/shop/details/product-big-4.jpg" alt="">
                            </div>
                            <div class="pt__item">
                                <img data-imgbigurl="./resources/img/shop/details/product-big-3.jpg"
                                src="./resources/img/shop/details/product-big-3.jpg" alt="">
                            </div>
                            <div class="pt__item">
                                <img data-imgbigurl="./resources/img/shop/details/product-big-5.jpg"
                                src="./resources/img/shop/details/product-big-5.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <div class="product__label">(해당 술 카테고리명)</div>
                        <h4>(DB에서 가져온 해당 술 이름)</h4>
                        <h5>(DB에서 가져온 해당 술 가격)</h5>
                        <p>(DB에서 가져온 해당 술 정보)</p>
                        <ul>
                            <li>도수: <span>(DB에서 가져온 해당 술 도수)</span></li>
                            <li>품종: <span>(DB에서 가져온 해당 술 품종명)</span></li>
                            <li>제조사: <span>(DB에서 가져온 해당 술 제조사)</span></li>
                        </ul>
                        <div class="product__details__option__full">
	                        <div class="sul__">
								<select>
	                                <option value="" disabled selected>어떤 옵션을 원하시나요?</option>
	                                <option value="">1</option>
	                                <option value="">2번 옵션1234</option>
	                                <option value="">3번 옵션1234</option>
	                            </select>               	
	                               <!-- <div class="pro-qty">
	                                   <input type="text" value="2">	
	                               </div> -->
	                            <input type="text" value="0원" class="sul__price" readonly>
	                               
	                        </div>
	                        
	                        <div class="product__details__option">
	                        	<div class="quantity">
	                        		<div class="pro-qty">
	                            		<input type="" value="1">
	                            	
	                            	</div>
	                        		<a href="#" class="primary-btn">장바구니로</a>
	                        	</div>
	                        </div>
	                	</div>
	                	
                    </div>
                </div>
            </div>
            <div class="product__details__tab">
                <div class="col-lg-12">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">간단정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">상세정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">리뷰</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                    <p>간단정보 입니다</p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                    <p>상세정보 입니다
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="row d-flex justify-content-center">
                                <div class="col-lg-8">
                                    <p>리뷰 입니다
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Details Section End -->

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