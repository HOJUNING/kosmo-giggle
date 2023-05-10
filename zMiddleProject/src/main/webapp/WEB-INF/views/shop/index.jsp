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
    <title>양조장</title>

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
	
	<!-- header -->
    <jsp:include page="./mainHeader.jsp" />

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__item set-bg" data-setbg=".././resources/img/main/mainback1.jpg">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <div class="hero__text">
                                <h2>매일 마시는 소주/맥주가 아닌 <br/>새로운 술을 찾으신다면</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero__item set-bg" data-setbg=".././resources/img/main/mainback2.jpg">
                <div class="container">
                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <div class="hero__text">
                                <h2>양조장네 만의 특별한 제품들은 어떠세요?</h2>
                                <a href="shop.do" class="primary-btn">스토어 가기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- About Section Begin -->
    <section class="about spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="about__text">
                        <div class="section-title">
                            <span>양조장네 양조장</span>
                            <h2>전국 각지의 전통주를 <br/>모았습니다!</h2>
                        </div>
                        <p>저희 사이트는 전국 각지의 로컬주와 개인사업자분들의 주류를 모아 판매하는 사이트 입니다. 전통주가 처음이신 분들을 위한 샘플키트부터 MZ세대들을 위한 전통주로 만든 칵테일까지 있습니다! 구경하고 가세요~</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="about__bar">
                        <div class="about__bar__item">
                            <p>후기 평균별점</p>
                            <div id="bar1" class="barfiller">
                                <div class="tipWrap"><span class="tip"></span></div>
                                <span class="fill" data-percentage="87"></span>
                            </div>
                        </div>
                        <div class="about__bar__item">
                            <p>재주문률</p>
                            <div id="bar2" class="barfiller">
                                <div class="tipWrap"><span class="tip"></span></div>
                                <span class="fill" data-percentage="91"></span>
                            </div>
                        </div>
                        <div class="about__bar__item">
                            <p>집가고싶다</p>
                            <div id="bar3" class="barfiller">
                                <div class="tipWrap"><span class="tip"></span></div>
                                <span class="fill" data-percentage="100"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Section End -->

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
	                
                </div>
            </div>
        </div>
    </div>
    <!-- Categories Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg=".././resources/img/shop/gaonasi.jpg">
                            <div class="product__label">
                                <span>탁주</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">탁주1</a></h6>
                            <div class="product__item__price">$32.00</div>
                            <div class="cart_add">
                                <a href="#">상세 페이지로</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg=".././resources/img/shop/gaonasi.jpg">
                            <div class="product__label">
                                <span>증류주</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">증류주1</a></h6>
                            <div class="product__item__price">$30.00</div>
                            <div class="cart_add">
                                <a href="#">상세 페이지로</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg=".././resources/img/shop/gaonasi.jpg">
                            <div class="product__label">
                                <span>약주/청주</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">약주/청주1</a></h6>
                            <div class="product__item__price">$31.00</div>
                            <div class="cart_add">
                                <a href="#">상세 페이지로</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg=".././resources/img/shop/gaonasi.jpg">
                            <div class="product__label">
                                <span>칵테일</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">칵테일1</a></h6>
                            <div class="product__item__price">$25.00</div>
                            <div class="cart_add">
                                <a href="#">상세 페이지로</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg=".././resources/img/shop/gaonasi.jpg">
                            <div class="product__label">
                                <span>탁주</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">탁주2</a></h6>
                            <div class="product__item__price">$05.00</div>
                            <div class="cart_add">
                                <a href="#">상세 페이지로</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg=".././resources/img/shop/gaonasi.jpg">
                            <div class="product__label">
                                <span>증류주</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">증류주2</a></h6>
                            <div class="product__item__price">$14.00</div>
                            <div class="cart_add">
                                <a href="#">상세 페이지로</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg=".././resources/img/shop/gaonasi.jpg">
                            <div class="product__label">
                                <span>약주/청주</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">약주/청주2</a></h6>
                            <div class="product__item__price">$32.00</div>
                            <div class="cart_add">
                                <a href="#">상세 페이지로</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg=".././resources/img/shop/gaonasi.jpg">
                            <div class="product__label">
                                <span>칵테일</span>
                            </div>
                        </div>
                        <div class="product__item__text">
                            <h6><a href="#">칵테일2</a></h6>
                            <div class="product__item__price">$08.00</div>
                            <div class="cart_add">
                                <a href="#">상세 페이지로</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

    <!-- Class Section Begin -->
    <section class="class spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="class__form">
                        <div class="section-title">
                            <span>Class cakes</span>
                            <h2>Made from your <br />own hands</h2>
                        </div>
                        <form action="#">
                            <input type="text" placeholder="Name">
                            <input type="text" placeholder="Phone">
                            <select>
                                <option value="">Studying Class</option>
                                <option value="">Writting Class</option>
                                <option value="">Reading Class</option>
                            </select>
                            <input type="text" placeholder="Type your requirements">
                            <button type="submit" class="site-btn">registration</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="class__video set-bg" data-setbg=".././resources/img/class-video.jpg">
                <a href="https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1"
                class="play-btn video-popup"><i class="fa fa-play"></i></a>
            </div>
        </div>
    </section>
    <!-- Class Section End -->

    <!-- Team Section Begin -->
    <section class="team spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-7 col-sm-7">
                    <div class="section-title">
                        <span>양조장네 커뮤니티의</span>
                        <h2>지난달 인기글!</h2>
                    </div>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-5">
                    <div class="team__btn">
                        <a href="#" class="primary-btn">커뮤니티로</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item set-bg" data-setbg=".././resources/img/team/team-1.jpg">
                        <div class="team__item__text">
                            <h6>Randy Butler</h6>
                            <span>Decorater</span>
                            <div class="team__item__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item set-bg" data-setbg=".././resources/img/team/team-2.jpg">
                        <div class="team__item__text">
                            <h6>Randy Butler</h6>
                            <span>Decorater</span>
                            <div class="team__item__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item set-bg" data-setbg=".././resources/img/team/team-3.jpg">
                        <div class="team__item__text">
                            <h6>Randy Butler</h6>
                            <span>Decorater</span>
                            <div class="team__item__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team__item set-bg" data-setbg=".././resources/img/team/team-4.jpg">
                        <div class="team__item__text">
                            <h6>Randy Butler</h6>
                            <span>Decorater</span>
                            <div class="team__item__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Team Section End -->

    <!-- Testimonial Section Begin -->
    <section class="testimonial spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <span>사이트 이용자분들의</span>
                        <h2>리얼 후기</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="testimonial__slider owl-carousel">
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                    <img src=".././resources/img/testimonial/ta-1.jpg" alt="">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>이병훈</h5>
                                    <span>New york</span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p>사이트가 친절하고 사장님이 맛있어요.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                    <img src=".././resources/img/testimonial/ta-2.jpg" alt="">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>이병훈</h5>
                                    <span>New york</span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p>사이트가 친절하고 사장님이 맛있어요.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                    <img src=".././resources/img/testimonial/ta-1.jpg" alt="">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>이병훈</h5>
                                    <span>London</span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p>사이트가 친절하고 사장님이 맛있어요.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                    <img src=".././resources/img/testimonial/ta-2.jpg" alt="">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>이병훈</h5>
                                    <span>New york</span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p>사이트가 친절하고 사장님이 맛있어요.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                    <img src=".././resources/img/testimonial/ta-1.jpg" alt="">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>이병훈</h5>
                                    <span>London</span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p>사이트가 친절하고 사장님이 맛있어요.</p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testimonial__item">
                            <div class="testimonial__author">
                                <div class="testimonial__author__pic">
                                    <img src=".././resources/img/testimonial/ta-2.jpg" alt="">
                                </div>
                                <div class="testimonial__author__text">
                                    <h5>이병훈</h5>
                                    <span>New york</span>
                                </div>
                            </div>
                            <div class="rating">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                            <p>사이트가 친절하고 사장님이 맛있어요.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Testimonial Section End -->

    <!-- Instagram Section Begin -->
    <section class="instagram spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 p-0">
                    <div class="instagram__text">
                        <div class="section-title">
                            <span>양조장네 인스타그램</span>
                            <h2>주류 관련 정보를 업로드합니다!</h2>
                        </div>
                        <h5><i class="fa fa-instagram"></i> @kosmo</h5>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic">
                                <img src=".././resources/img/shop/gaonasi.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic middle__pic">
                                <img src=".././resources/img/shop/gaonasi.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic">
                                <img src=".././resources/img/shop/gaonasi.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic">
                                <img src=".././resources/img/shop/gaonasi.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic middle__pic">
                                <img src=".././resources/img/shop/gaonasi.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-6">
                            <div class="instagram__pic">
                                <img src=".././resources/img/shop/gaonasi.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Instagram Section End -->

<!--     Map Begin
    <div class="map">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-7">
                    <div class="map__inner">
                        <h6>COlorado</h6>
                        <ul>
                            <li>1000 Lakepoint Dr, Frisco, CO 80443, USA</li>
                            <li>Sweetcake@support.com</li>
                            <li>+1 800-786-1000</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="map__iframe">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d10784.188505644011!2d19.053119335158936!3d47.48899529453826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1543907528304" height="300" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        </div>
    </div>
    Map End
 -->
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