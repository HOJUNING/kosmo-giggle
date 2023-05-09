<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<!-- 폰트어썸 불러오기 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet" href="./resources/css/gaip.css" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

<!-- 반응형 필수 -->
<meta name="viewport" content="width=device-width, user-scalable=no" />

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
    	
<!-- 제이쿼리 불러오기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$(".btn-check").click(function(){
		
		if($(".btn-check").text()=="중복체크") {
		var new_id = $(this).parent().children().eq(1).val();
		$.ajax({
			
			type 		: 'post',
			url  		: 'idCheck.do',
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8', 
			data 		: { user_id : new_id },
			success 	: idCheck
			
		}); // end of $.ajax
		
		}else{
			var id_locking = $(this).parent().children().eq(1);
			id_locking.prop('readonly', true);
			$(".btn-check").text("완료")
			$('#idcheckResult').empty();
		}
		
		
	}) // end of $(".btn-check")
	
	
	function idCheck(result){
		//alert(result);
		$('#idcheckResult').empty();
		$('#idcheckResult').text(result);
		if(result=="사용가능한 아이디입니다. 사용하시겠습니까?"){
			$(".btn-check").text("네");
		}
	} // end of idCheck
	
	$("#registUser").click(function(){
		
		$('#idcheckResult').empty();
		$('#passResult').empty();
		
		var pass = $("#user_pass").val();
		var passCk = $("#passConfirm").val();
		
		if($(".btn-check").text()!="완료"){
			$('#idcheckResult').text("아이디 중복체크를 해주세요");
			return false;
		}else if (pass!=passCk){
			$('#passResult').text("비밀번호가 일치하지 않습니다");
			return false;
		}
		
		$("#registForm").attr("action","registUser")
		$("#registForm").submit();
		
	});
	
	
}); // end of function 

</script>

</head>

<body>

<!-- 메인 시작 -->
<jsp:include page="./mainHeader.jsp" />

<!-- 사이트 박스 시작 -->
<section class="site-box min-height-100vh flex flex-column">

  <!-- 메인 컨텐츠 박스 시작 -->
  <main class="main-box flex-grow-1 visible-md-up">
    <section class="main-box-section con">
      <!-- 회원가입 페이지 시작 -->
      <div class="section-join min-height-50vh flex flex-jc-c flex-ai-c">

        <form class="flex flex-jc-c flex-ai-c" name="form" id="registForm" method="POST">
          <input type="hidden" name="loginPwReal">
          
          <div>회원가입</div>
          
          <div class="section-join__cell">
            <div class="join_cell__title">
              <span>신규 ID</span>
            </div>
            <div class="join_cell__body">
              <div id='idcheckResult'> </div>
              <input class="idInput" type="text" name="user_id" maxlength="50" placeholder="ID 입력">
              <button class="btn2 btn-check" name="dupIdCheck" type="button">중복체크</button>
            </div>
            <div class="join_cell__title">
              <span>비밀번호</span>
            </div>
            <div class="join_cell__body">
              <div id='passResult'> </div>
              <input type="password" name="user_pass" id="user_pass" maxlength="50" placeholder="PW 입력">
            </div>
            <div class="join_cell__title">
              <span>비밀번호 확인</span>
            </div>
            <div class="join_cell__body">
              <input type="password" id="passConfirm" maxlength="50" placeholder="PW 입력">
            </div>
            <div class="join_cell__title">
              <span>닉네임</span>
            </div>
            <div class="join_cell__body">
              <input type="text" name="user_name" maxlength="50" placeholder="닉네임 입력">
            </div>
            <div class="joinInput-cell">
              <button class="btn2 btn-go" type="button" id="registUser"><i class="fas fa-sign-in-alt"></i> 회원가입</button>
     
            </div>
          </div>
      
          </div>
        </form>
      </div>
      <!-- 회원가입 페이지 끝 -->
    </section>
  </main>
  <!-- 메인 컨텐츠 박스 끝 -->

  <!-- 맨 위 버튼 시작 -->
  <nav class="top-button btn2 flex flex-jc-c flex-ai-c">
    <div class="">
      <a href="#header"><i class="fas fa-chevron-up"></i></a>
    </div>
  </nav>
  <!-- 맨 위 버튼 끝 -->

  <!-- 맨 아래 버튼 시작 -->
  <nav class="bottom-button btn2 flex flex-jc-c flex-ai-c">
    <div class="">
      <a href="#bottom"><i class="fas fa-chevron-down"></i></a>
    </div>
  </nav>
  <!-- 맨 아래 버튼 끝 -->

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
  
</section>
<!-- 사이트 박스 끝 -->

</body>

</html>
