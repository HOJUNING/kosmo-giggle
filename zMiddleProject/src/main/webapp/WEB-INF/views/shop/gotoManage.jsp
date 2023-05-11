<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">

	var uid = '<%=(String)session.getAttribute("user_role")%>';
	
	if(uid=="ROLE_ADMIN") {
		window.location="http://192.168.0.69:8080/basic/manage/manageMain.do";
	}else{
		window.location="http://192.168.0.69:8080/basic/shop/index.do";
	}
	
</script>
</head>
<body>
</body>
</html>