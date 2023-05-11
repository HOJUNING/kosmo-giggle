<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Upload</title>
   <link href=".././resources/css/upload.css" rel="stylesheet">
   <link href=".././resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="image-upload" id="image-upload">
            <form method="post" enctype="multipart/form-data" action ="insertImage.do">
                <div class="button">
                    <label for="chooseFile">
                        👉 CLICK HERE! 👈
                    </label>
                </div>
                <div class="fileContainer">
                <div class="fileInput">
                   <input type="file" name="file">
                </div> 
               	<input type="hidden" name="al_num" value="${al_num}"/>
             	<input type="submit" id="fileinsert" class="btn btn-primary btn-user btn-blocks" value="파일등록">
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