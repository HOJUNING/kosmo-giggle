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
    <title>상품 상세정보</title>

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
    </header>
    <!-- Header Section End -->
	
	<!-- 해당 주류 정보 -->
    <!-- Shop Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
            	<!-- 메인사진 -->
                <div class="col-lg-6">
                    <div class="product__details__img">
                        <div class="product__details__big__img">
                            <img class="big_img" src=".././resources/upload/${alDetail.img_name}" alt="">
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <div class="product__label">${alDetail.ki_name}</div>
                        <h4>${alDetail.al_name}</h4>
                        <c:if test="${alDetail.sale_price eq '0'}">
		                      <h5>${alDetail.al_price}원</h5>
		                </c:if>
		                <c:if test="${alDetail.sale_price ne '0'}">
			            	<div class="product__item__saleprice">${alDetail.al_price}원</div>
			            	<h5>${alDetail.sale_price}원</h5>
		                </c:if>
                        <!-- <p>(DB에서 가져온 해당 술 정보)</p> -->
                        <ul>
                            <li>도수: <span>${alDetail.al_abv}도</span></li>
                            <li>품종: <span>${alDetail.ki_name}</span></li>
                            <li>제조사: <span>${alDetail.ma_name}</span></li>
                        </ul>
                        
                        <form id="cartForm">
	                        <div class="product__details__option__full">
		                        <div class="sul__">
									<select>
		                                <option value="" disabled >어떤 옵션을 원하시나요?</option>
		                                <option value="1" selected>${alDetail.al_volume} ml</option>
		                            </select>               	
		                               <!-- <div class="pro-qty">
		                                   <input type="text" value="2">	
		                               </div> -->
									<c:if test="${alDetail.sale_price eq '0'}">
		                      			<input type="text" value="${alDetail.al_price}" class="sul__price" id="alPrice" readonly>
		                			</c:if>
		                			<c:if test="${alDetail.sale_price ne '0'}">
			            				<input type="text" value="${alDetail.sale_price}" class="sul__price" id="alPrice" readonly>
		                			</c:if>
		                        </div>
		                        
		                        <div class="product__details__option">
		                        	<div class="quantity">
		                        		<div class="pro-qty">
	
		                            		<input type="text" value="1" name="ca_count" id="countOption" readonly>
		                            	
		                            	</div>
		                            	<input type='hidden' name="al_num" value="${alDetail.al_num}">
		                            	<c:if test="${sessionScope.user_num ne null}">
		                            		<input type="hidden" name="user_num" id="hidden_userNum">
                                		</c:if>
		                        		<a href="#" class="primary-btn" id="intoCart">장바구니로</a>
		                        	</div>
		                        </div>
		                	</div>
	                	</form>
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
								
									<div class="wrap-star">
									    <h2>당도</h2>
									    <div class='star-rating'>
									        <span style ="width:${alDetail.fl_danmat}%"></span>
									    </div>
									</div>
									
									<div class="wrap-star">
									    <h2>산미</h2>
									    <div class='star-rating'>
									        <span style ="width:${alDetail.fl_sinmat}%"></span>
									    </div>
									</div>
									
									<div class="wrap-star">
									    <h2>탄산</h2>
									    <div class='star-rating'>
									        <span style ="width:${alDetail.fl_tansan}%"></span>
									    </div>
									</div>
									
									<div class="wrap-star">
									    <h2>바디감</h2>
									    <div class='star-rating'>
									        <span style ="width:${alDetail.fl_body}%"></span>
									    </div>
									</div>
									
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
	
		
	$("#hidden_userNum").val(${sessionScope.user_num});
	
	$("#intoCart").click(function(){
		
		if(${sessionScope.user_name eq null}){
			window.location="login.do"
		}else{
			$("#cartForm").attr("action","insertCart.do");
			$("#cartForm").submit();
		}
		
		
	});
	
});
</script>


</body>

</html>