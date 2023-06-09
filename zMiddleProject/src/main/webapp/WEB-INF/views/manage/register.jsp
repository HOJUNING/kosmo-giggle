<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>상품등록</title>

    <!-- Custom fonts for this template-->
    <link href=".././resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href=".././resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
               
               <!-- 등록 페이지에서 왼쪽 이미지 -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                <!-- 등록 시작-->        
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">상품등록</h1>
                            </div>
                            <form class="user" method="get" action="insertAC.do">
                                <div class="form-group row">

                                <!-- 상품 등록 뷰 name 값은 VO변수랑 동일 -->
                                	<div class="col-sm-6 mb-3 mb-sm-0">
                                		<hr> 
                                    	<input type="text"  class="form-control form-control-user" name="ki_num" placeholder="종류번호">
                 
                                    </div>
                                    
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<hr>
                                    	<input type="text"  class="form-control form-control-user" name="ma_num" placeholder="양조장번호">
                             
                                    </div>
                                    
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<hr>
                                    	<input type="text"  class="form-control form-control-user" name="evt_num" placeholder="이벤트번호">
                             
                                    </div>
                                
                                	<div class="col-sm-6 mb-3 mb-sm-0">
                                		<hr>
                                    	<input type="text" class="form-control form-control-user"  name="al_name" placeholder="주류이름">
                           
                                    </div>
                                    	
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<hr>
                                    	<input type="text" class="form-control form-control-user" name="al_price" placeholder="가격">
                             
                                    </div>
                                
                                	<div class="col-sm-6 mb-3 mb-sm-0">
                                		<hr>
                                    	<input type="text"class="form-control form-control-user" name="al_volume" placeholder="용량">
                             
                                    </div>
                                   
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<hr>
                                    	<input type="text" class="form-control form-control-user" name="al_abv" placeholder="도수">
                             
                                    </div>
                                    
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<hr>
                                    	<input type="text" class="form-control form-control-user" name="al_stock" placeholder="재고수량">
                                 
                                    </div>
                          
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    	<hr>
                                    	<input type="text"  class="form-control form-control-user" name="al_status" placeholder="재고상태">
                 
                                    </div>
                                 
                                  </div> 
                                <input type="submit" class="btn btn-primary btn-user btn-block" value="상품등록">
                                <hr>
                                <a href="manageMain.do" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> 관리자 페이지로 이동
                                </a>
                                <a href="productList.do" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> 등록된 상품 페이지로 이동
                                </a>
                            </form>
                 <!-- 상품등록 끝 -->  
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src=".././resources/vendor/jquery/jquery.min.js"></script>
    <script src=".././resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src=".././resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src=".././resources/js/sb-admin-2.min.js"></script>

</body>

</html>