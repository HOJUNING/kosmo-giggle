<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이미지 등록페이지</title>
   <link href=".././resources/css/upload.css" rel="stylesheet">
   <link href=".././resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
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
                 	  <h1>버튼누르면 이미지삭제됩니다.</h1>
               		</div> 
             	<input type="submit" id="fileinsert" class="btn btn-primary btn-user btn-blocks" value="이미지삭제">
           	 </div> 
            </form>
             
          	<hr/>
          	
          	<form method="post" action="deleteFlavor.do">
            	<input type="hidden" name="al_num" value="${al_num}"/>
                <div class="button">
                    <label for="chooseFile">
                        👉 맛을 삭제! 👈
                    </label>
                </div>
                <div class="fileContainer">
                	<div class="fileInput">
                 	  <h1>버튼누르면 맛이삭제됩니다.</h1>
               		</div> 
             	<input type="submit" id="fileinsert" class="btn btn-primary btn-user btn-blocks" value="맛삭제">
            </div> 
            </form>
            
            <hr/>
            
            <form method="post" action="delete.do">
            	<input type="hidden" name="al_num" value="${al_num}"/>
                <div class="button">
                    <label for="chooseFile">
                        👉 상품 삭제! 👈
                    </label>
                </div>
                <div class="fileContainer">
                	<div class="fileInput">
                		<h1>버튼누르면 상품삭제됩니다.</h1>
                	</div> 
             		<input type="submit" id="fileinsert" class="btn btn-primary btn-user btn-blocks" value="상품삭제">
            	</div> 
  
           		 <div class="buttonContainer">
          			<div class="submitButton" id="backlist">상품리스트 페이지로</div>
          		</div>  
           </form>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    
    <script type="text/javascript">
    $(function(){
    	$('#backlist').click(function(){
    		location.href="productList.do";
    	});
    	
    });
    </script>
</body>
</html>