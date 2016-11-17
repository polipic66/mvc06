<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
$(document).ready(function(){
	 $("#login button").on("click",function(){
		 var param = "userid="+$("#idin").val()+"&pw="+$("#pw").val();
		 //alert(param);
		 $.ajax({
			url : "loginok.do",
		  	type :"POST",
		  	data:param,
			dataType: 'text',
			success:function(data){
				//alert(data);
				$("#login1").html(data);
			}, 
			error:function(e){
				alert("아이디 패스워드 확인해주세요.");
			}
			});
	});//로그인버튼클릭시
});//스크립트 
       
</script>
</head>
<body>
		<div id="login1">
		<input id="idin" type="text" class="text1" value="">
        <br>
        <input id="pw" type="password" class="text2" value="">
        <div id="login">
           <!-- a href="loginok.do"--><button>로그인</button><!-- /a--></div>
        <div id="insert">
        <a href="insert.do"><button>회원가입</button>
            </a></div>
        <div id="search">
        <a href="id.do"><button>아이디 찾기<br>/비밀번호 찾기</button></a> 
        </div>             
		</div>
</body>
</html>