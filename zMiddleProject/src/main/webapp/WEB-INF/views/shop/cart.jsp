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
    <title>장바구니</title>

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

    <jsp:include page="./mainHeader.jsp" />

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>장바구니</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <span>장바구니</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="shopping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>상품명</th>
                                    <th>갯수</th>
                                    <th>금액</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            	<!-- 상품 반복 시작 -->
                            	<c:forEach items="${cartList}" var="cart">
	                                <tr>
	                                    <td class="product__cart__item">
	                                        <div class="product__cart__item__pic">
	                                            <img src=".././resources/upload/${cart.img_name}" alt="" width="100px" height="100px">
	                                        </div>
	                                        <div class="product__cart__item__text">
	                                        	<!-- h6부분 상품명 -->
	                                            <h6 id="cart_alName">
	                                            	<input type="hidden" value="${cart.al_num }">
	                                            	${cart.al_name}
	                                            </h6>
	                                            <!-- h5부분 해당상품 가격 -->
	                                            <c:if test="${cart.sale_price eq '0'}">
								                      <h5>${cart.al_price}원</h5>
								                </c:if>
								                <c:if test="${cart.sale_price ne '0'}">
									            	<div class="product__item__saleprice">${cart.al_price}원</div>
									            	<h5>${cart.sale_price}원</h5>
								                </c:if>
	                                        </div>
	                                    </td>
	                                    <td class="quantity__item">
	                                        <div class="quantity">
	                                            <!-- 사용자가 선택한 해당 상품 갯수 (value 자리에 들어가야함) -->
	                                            <input type="text" value="${cart.ca_count}" id="cartCountText" readonly>
	                                        </div>
	                                    </td>
	                                    <!-- 상품가격 * 갯수 -->
	                                    <td class="cart__price">${cart.hap_price}원</td>
	                                    <td class="cart__close">
	                                    	<span class="icon_close">
	                                    		<input type="hidden" value="${cart.ca_num}">
	                                    	</span>
	                                    </td>
	                                </tr>
	                                <!-- 상품 반복 끝 -->
                                </c:forEach>
                                
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn">
                                <a href="shop.do">쇼핑하러 가기</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn update__btn">
                                <a href="#"><i class="fa fa-spinner"></i>새로고침 하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="cart__discount">
                        <h6>할인코드</h6>
                        <form action="#">
                            <input type="text" placeholder="쿠폰 번호(미구현)">
                            <button type="submit">적용</button>
                        </form>
                    </div>
                    <!-- eq(0) span : 장바구니 상품금액 총합 -->
                    <!-- eq(1) span : 배송비 기본 3천원 > 상품금액 총합 5만원 넘으면 무료 -->
                    <!-- eq(1) span : 장바구니 상품금액 총합 + 배송비 -->
                    <div class="cart__total">
                        <h6>계산서</h6>
                        <ul>
                            <li>총 상품금액 <span>${totalPrice}원</span></li>
                            <li>배송비 <span>${textPrice}원</span></li>
                            <hr/>
                            <li>예상 결제금액 <span>${finalPrice}원</span></li>
                        </ul>
                        <!-- checkOut.do -->
                        <a href="#" class="primary-btn">결제 하기</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer set-bg" data-setbg=".././resources/img/footer-background.jpg">
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
                            <a href="#"><img src=".././resources/img/mainlogo.png" alt=""></a>
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
<script src=".././resources/js/jquery-3.3.1.min.js"></script>
<script src=".././resources/js/bootstrap.min.js"></script>
<script src=".././resources/js/jquery.nice-select.min.js"></script>
<script src=".././resources/js/jquery.barfiller.js"></script>
<script src=".././resources/js/jquery.magnific-popup.min.js"></script>
<script src=".././resources/js/jquery.slicknav.js"></script>
<script src=".././resources/js/owl.carousel.min.js"></script>
<script src=".././resources/js/jquery.nicescroll.min.js"></script>
<script src=".././resources/js/main.js"></script>
<script type="text/javascript">
$(function(){
	
	$('.icon_close').on("click",function(){
		var ca_num = $(this).children().eq(0).val();
		window.location = "deleteCartByPk.do?ca_num="+ca_num;
		
	});
	
	$("#cart_alName").on("click",function(){
		var al_num = $(this).children().eq(0).val();
		window.location = "shopDetails.do?al_num="+al_num;
	});
});
</script>

</body>

</html>