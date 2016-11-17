<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function update(){
	
	 	var uppw1 = $('#uppw1').val();
	 	var uppw2 = $('#uppw2').val();
	 	var upname = $('#upname').val();
	 	var upemail = $('#upemail').val();
	 	var uptel1=$('#uptel1').val();
	 	var uptel2=$('#uptel2').val();
	 	var uptel3=$('#uptel3').val();
	 	var upbir1=$('#upbir1').val();
	 	var upbir2=$('#upbir2').val();
	 	var upbir3=$('#upbir3').val();

	if(uppw1==""){
		alert("패스워드를 입력하세요");
	}else if(uppw1.length<6){
		alert("비밀번호는 6자 이상입니다.")
	}else if(uppw1.length>12){
		alert("비밀번호는 12자 이하입니다.")
	}else if(uppw2==""){
		alert("비밀번호 확인 입력해주세요.")
	}else if(uppw2.length<6){
		alert("확인비밀번호는 6자 이상입니다.")
	}else if(uppw2.length>12){
		alert("확인비밀번호는 12자 이하입니다.")
	}else if(uppw1!=uppw2){
		alert("비밀번호가 서로 다릅니다.")
	}else if(upname==""){
		alert("이름을 입력해주세요.")
	}else if(uptel1==""){
		alert("전화번호 앞자리 입력해주세요")
	}else if(uptel1.length!=3){
		alert("전화번호 앞자리는 3자만 입력해주세요")
	}else if(uptel2==""){
		alert("전화번호 가운데 입력해주세요")
	}else if(uptel2.length!=3&&uptel2.length!=4){
		alert("전화번호 가운데는 3자리 혹은 4자리 입니다.")
	}else if(uptel3==""){
		alert("전화번호 끝자리를 입력해주세요")
	}else if(uptel3.length!=4){
		alert("전화번호 끝자리는 4자리입니다.")
	}else if(upbir1==""){
		alert("생년을 입력해주세요")
	}else if(upbir1.length!=4){
		alert("생년은 4자리로 입력하세요")
	}else if(upbir2==""){
		alert("태어난 달을 입력하세요")
	}else if(upbir2.length!=2){
		alert("태어난달 2자리로 입력해주세요")
	}else if(upbir3==""){
		alert("태어난 일자을 입력하세요.")
	}else if(upbir3.length!=2){
		alert("태어난 일자는 2자리로 입력해주세요.")
	}else{
		document.upup.submit();
	}
	 
}


</script>
</head>
<body>
   <div id="joinform"><p style="color:blue;"><b>정보수정</b></p></div>              
            <div id="privacy">
          	<form name="upup" action="update1.do" method="post">
            <div class="id"><label class="id"><b>ID</b>&nbsp;&nbsp;&nbsp;<%=session.getAttribute("userid") %></label>          
            </div>
            <div class="pw"><font style="color:red; font-size:20pt;">*</font><b>PW</b>&nbsp;&nbsp;&nbsp;<input name="uppw1" id="uppw1" type="password" size="16"></div>    
            <div class="pw2"><font style="color:red; font-size:20pt;">*</font><b>PW확인</b>&nbsp;&nbsp;&nbsp;<input name="uppw2" id="uppw2" type="password" size="16"></div>
            <div class="name"><font style="color:red; font-size:20pt;">*</font><b>이름</b>&nbsp;&nbsp;&nbsp;<input name="upname" id="upname"  size="16" value="${mto.name }"></div>
            <div class="email"><b>e-mail</b>&nbsp;&nbsp;&nbsp;<input name="upemail" id="upemail" size="16"></div>
            <div class="tel"><font style="color:red; font-size:20pt;">*</font><b>전화번호</b>&nbsp;&nbsp;&nbsp;<input name="uptel1" id="uptel1" type="text" size="1" value="${tel1 }"><b>-</b><input name="uptel2" id="uptel2" type="text" size="1" value="${tel2 }"><b>-</b><input name="uptel3" id="uptel3" type="text" size="1" value="${tel3 }"></div>
            <div class="birth"><font style="color:red; font-size:20pt;">*</font><b>생년월일</b>&nbsp;&nbsp;&nbsp;<input name="upbir1" id="upbir1" type="text" size="1" value="${bir1 }"><b>년</b><input name="upbir2" id="upbir2" type="text" size="1" value="${bir2 }"><b>월</b><input name="upbir3" id="upbir3" type="text" size="1" value="${bir3 }"> <b>일</b></div>
        
            <div class="button">
                 <button class="btn1" type="button" onclick="update();">확 인</button>
                 <button class="btn2" type="reset"> 취 소 </button>
            </div>
            </form>
                </div>
</body>
</html>