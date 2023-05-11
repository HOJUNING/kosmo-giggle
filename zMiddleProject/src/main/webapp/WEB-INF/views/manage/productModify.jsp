<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>상품 수정페이지</title>

    <!-- Custom fonts for this template-->
    <link href=".././resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href=".././resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="manageMain.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">상품 수정페이지</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="manageMain.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>관리자 페이지</span></a>
            </li>
	    
	    <div class="sidebar-heading">
               <a>관리자기능</a>
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
                    aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>재고관리</span>
                </a>
                <div id="collapsePages" class="collapse show" aria-labelledby="headingPages"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">                 
                        <a class="collapse-item" href="register.do">상품등록</a>      
                        <a class="collapse-item active" href="productList.do">등록된 상품리스트</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.do">
                    <i class="fas fa-fw fa-table"></i>
                    <span>문의관리</span></a>
            </li>

			<!--Nav Item - shop -->
            <li class="nav-item">
                <a class="nav-link" href="http://localhost:8080/basic/shop/index.do">
                    <i class="fas fa-fw fa-table"></i>
                    <span>쇼핑몰로</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                </nav>
    
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">상품수정 페이지</h1>

                </div>
                
                <!-- 등록된 상품 수정 파트 시작-->
                
				  <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">수정 해주세요</h6>
                        </div>
                        <div class="card-body">
                        	<form class="user" method="get" action="modify.do">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" 
                                       name="al_name" placeholder="주류 이름 : ${alVO.al_name}">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" 
                                       name="ki_num" placeholder="주류 종류번호 : ${alVO.ki_num}">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                       name="al_abv" placeholder="주류 도수 : ${alVO.al_abv}">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" 
                                       name="al_volume" placeholder="주류 용량 : ${alVO.al_volume}">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" 
                                       name="al_price" placeholder="주류 가격 : ${alVO.al_price}">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" 
                                       name="al_stock" placeholder="주류 재고수 : ${alVO.al_stock}">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                       name="al_status" placeholder="주류 재고상태 : ${alVO.al_status}">
                                </div>
                                
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                       name="evt_num" placeholder="이벤트번호 : ${alVO.evt_num}">
                                </div>
                                
                                 <input type="hidden" name="al_num" value="${alVO.al_num}">
                                 <input type="submit" class="btn btn-primary btn-user btn-block" value="상품수정">
                            </form>  
                            
					    </div>
				  </div> 
              </div>
              
              <!-- 등록된 상품 수정 파트 끝 -->
            
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.do">Logout</a>
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