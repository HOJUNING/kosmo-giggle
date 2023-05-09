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


    <!-- Header Section Begin -->
    <!-- 상단 고정부분 ( 이후 position pixed 해줘야함 ) -->
    <header class="header">
        <jsp:include page="./mainHeader.jsp" />
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