<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function repassword(){
			var repwpass1 = $("#repwpass1").val();
			var repwpass2 = $("#repwpass2").val();
			
			if(repwpass1==""){
				alert("변경하실 패스워드를 입력하세요");
			}else if(repwpass1.length<6){
				alert("비밀번호는 6자 이상입니다");
			}else if(repwpass1.length>12){
				alert("비밀번호는 12자 이하 입니다");
			}else if(repwpass2==""){
				alert("비밀번호 확인을 해주세요");
			}else if(repwpass2.length<6){
				alert("비밀번호 확인은 6자 이상입니다");
			}else if(repwpass2.length>12){
				alert("비밀번호 확인은 12자 이하입니다.");
			}else if(repwpass1!=repwpass2){
				alert("비밀번호가 서로 다릅니다.");
			}else{
				document.repass.submit();
			}
			
			
		}
	
	
	
	</script>

</head>
<body>
             <div id="joinform"><b>비밀번호재설정</b></div>       
                   
			     
        <div id="privacy">
          	<form action="pwchange.do" name="repass">
          	
			<input id="repwid" name="repwid" style="display:none;" type="text" value="<%=request.getAttribute("userid") %>">
            <div class="pw"><b>PW</b>&nbsp;&nbsp;&nbsp;<input id="repwpass1" name="repwpass1" type="password" type="text" size="16"></div>    
            <div class="pw2"><b>PW확인</b>&nbsp;&nbsp;&nbsp;<input id="repwpass2" name="repwpass2" type="password" type="text" size="16"></div>
          	</form>
           
            <div class="button">
                 <button class="btn1" type="button" onclick="repassword();">확 인</button>
                 <a href="index.do"><button class="btn2" type="button"> 취 소 </button></a>
            </div>
           
                </div>
</body>
</html>