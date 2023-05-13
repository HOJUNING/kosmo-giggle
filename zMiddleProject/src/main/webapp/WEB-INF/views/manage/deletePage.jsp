<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 삭제 페이지</title>
   <link href=".././resources/css/upload.css" rel="stylesheet">
   <link href=".././resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>

	<!-- 이미지 삭제 시작 -->
    <div class="container">
        <div class="image-upload" id="image-upload">
            <form method="post" action="deleteImage.do">
            	<input type="hidden" name="al_num" value="${al_num}"/>
                <div class="button">
                    <label for="chooseFile">
                        👉 이미지 삭제! 👈
                    </label>
                </div>
                <div class="fileContainer">
                	<div class="fileInput">
                 	  <h2>버튼누르면 이미지삭제됩니다.</h2>
               		</div> 
             	<input type="submit" id="fileinsert" class="btn btn-primary btn-user btn-blocks" value="이미지삭제">
           	 </div> 
            </form>
    <!-- 이미지 삭제 끝 -->         
          	<hr/>
    <!-- 맛 삭제 시작 -->      	
          	<form method="post" action="deleteFlavor.do">
            	<input type="hidden" name="al_num" value="${al_num}"/>
                <div class="button">
                    <label for="chooseFile">
                        👉 맛을 삭제! 👈
                    </label>
                </div>
                <div class="fileContainer">
                	<div class="fileInput">
                 	  <h2>버튼누르면 맛이삭제됩니다.</h2>
               		</div> 
             	<input type="submit" id="fileinsert" class="btn btn-primary btn-user btn-blocks" value="맛삭제">
            </div> 
            </form>
    <!-- 맛 삭제 끝 -->        
            <hr/>
    <!-- 상품 비활성 시작 -->       
            <form method="post" action="delete.do">
            	<input type="hidden" name="al_num" value="${al_num}"/>
                <div class="button">
                    <label for="chooseFile">
                        👉 상품 비활성! 👈
                    </label>
                </div>
                <div class="fileContainer">
                	<div class="fileInput">
                		<h2>버튼누르면 제품이 비활성 상태가 됩니다.</h2>
                	</div> 
             		<input type="submit" id="fileinsert" class="btn btn-primary btn-user btn-blocks" value="상품 비활성">
            	</div> 
  	<!-- 상품 비활성 끝 -->
  	  <!--  상품 리스트 페이지로 버튼 -->	
           		 <div class="buttonContainer">
          			<div class="submitButton" id="backlist">상품리스트 페이지로</div>
          		</div>  
           </form>
         
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- 상품 리스트페이지로 클릭 이벤트 -->
    <script type="text/javascript">
    $(function(){
    	$('#backlist').click(function(){
    		location.href="productList.do";
    	});
    	
    });
    </script>
</body>
</html>