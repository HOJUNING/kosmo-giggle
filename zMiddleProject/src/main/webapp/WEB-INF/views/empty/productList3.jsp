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

    <title>관리자페이지</title>

    <!-- Custom fonts for this template-->
    <link href="./resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="./resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">관리자 페이지<sup>2</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="index.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>관리자 페이지</span></a>
            </li>

            <!-- Divider -->
           <!--  <hr class="sidebar-divider"> -->

            <!-- Heading -->
            <!-- <div class="sidebar-heading">
                Interface
            </div> -->

            <!-- Nav Item - Pages Collapse Menu -->
            <!-- <!-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Components</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.do">Buttons</a>
                        <a class="collapse-item" href="cards.do">Cards</a>
                    </div>
                </div>
            </li>

            Nav Item - Utilities Collapse Menu
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Utilities</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="utilities-color.do">Colors</a>
                        <a class="collapse-item" href="utilities-border.do">Borders</a>
                        <a class="collapse-item" href="utilities-animation.do">Animations</a>
                        <a class="collapse-item" href="utilities-other.do">Other</a>
                    </div>
                </div>
            </li>
 -->
           <!--  Divider
            <hr class="sidebar-divider">

            Heading
         -->
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
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="register.do">상품등록</a>
                        <a class="collapse-item" href="forgot-password.do">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.do">404 Page</a>
                        <a class="collapse-item active" href="productList.do">등록된상품리스트</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="charts.do">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>매출관리</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.do">
                    <i class="fas fa-fw fa-table"></i>
                    <span>문의내용</span></a>
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
                <!-- End of Topbar -->

               
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">상품-등록-리스트</h1>

                </div>
                
                <!-- /.container-fluid -->
                <!-- 등록된 상품 리스트 출력 파트 -->
				  <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">상품등록리스트</h6>
                        </div>
                        <div class="card-body">
                        	<div class="table-responsive">
                        		<table  id="productList" class="table table-bordered">
                        			<thead>
                        				<tr>
                        					<th class="sorting">주류번호</th>
                        					<th>주류이름</th>
                        					<th>용량</th>
                        					<th>도수</th>
                        					<th>종류번호</th>
                        					<th>양조장번호</th>
                        					<th>가격</th>
                        					<th>재고</th>
                        					<th>재고상태</th>
                        					<th>주류사진</th>
                        					<th>이벤트번호</th>
                        					<th>수정</th>
                        					<th>삭제</th>
                        				</tr>
                        			</thead>
                        			
                        			<tbody>
                        			<c:forEach items="${alList}" var="al">
                        				<tr class="odd">
                        					<td>${al.al_num}</td>
                        					<td>${al.al_name}</td>
                        					<td>${al.al_volume}</td>
                        					<td>${al.al_abv}</td>
											<td>${al.ki_num}</td>
                        					<td>${al.ma_num}</td>
                        					<td>${al.al_price}</td>
                        					<td>${al.al_stock}</td>
											<td>${al.al_status}</td>
											<td>${al.al_opic}</td>
                        					<td>${al.evt_num}</td>
											<td><input type="button" id="productModify" value="수정" /></td>
											<td><input type="button" id="productDelete" value="삭제" /></td>                  
                        				</tr>
                        			</c:forEach>
                        			</tbody>
                        		</table>
					   </div>
					</div>
				</div> 
              </div>
              
              <!--End of container-fluid -->
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
    <script src="./resources/vendor/jquery/jquery.min.js"></script>
    <script src="./resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="./resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="./resources/js/sb-admin-2.min.js"></script>
    
    <script type="text/javascript">
    $(function(){
    	
    	$("#productList").on("click","input",function(){
    		
    		//테이블에있는 input태그 찾는거
    		var btn = $(this);
    		//btn의 부모의 자식중에 첫번째 태그의 값은 text() 태그안에 태그값은 html
    	    var al_num = btn.parents('tr').children().eq(0).text();
    		
    		if(btn.val().trim()=='수정'){
    			location.href='productModify.do?al_num='+al_num;
    		}else if(btn.val().trim()=='삭제'){
    			location.href='delete.do?al_num='+al_num;
    		}
    		
    	}) // end of $("#productList")
    	
    	
    })
    </script>

</body>

</html>