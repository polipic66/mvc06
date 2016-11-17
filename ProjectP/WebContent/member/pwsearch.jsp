<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function pwsearch(){
	
	var pwid=$("#pwid").val();
	var pwname=$("#pwname").val();
	var pwtel1=$("#pwtel1").val();
	var pwtel2=$("#pwtel2").val();
	var pwtel3=$("#pwtel3").val();
	
	if(pwid==""){
		alert("아이디를 입력해주세요.");
	}else if (pwname==""){
		alert("이름을 입력해주세요.");	
	}else if(pwtel1==""){
		alert("전화번호 앞자리 입력해주세요.")
	}else if(pwtel1.length!=3){
		alert("전화번호 앞자리는 3자리로 입력해주세요.")
	}else if(pwtel2==""){
		alert("전화번호 가운데자리 입력해주세요.")
	}else if(pwtel2.length<3){
		alert("전화번호 가운데자리는 3자리 혹은 4자리입니다.")
	}else if(pwtel2.length>4){
		alert("전화번호 가운데자리는 3자리 혹은 4자리입니다.")
	}else if(pwtel3==""){
		alert("전화번호 끝자리를 입력해주세요.")
	}else if(pwtel3.length!=4){
		alert("전화번호 끝자리는 4자리입니다.");	
	}else {
		document.pwsc.submit();
	}
	}
	 

</script> 
</head>
<body>
<div id="joinform"><p style="color:blue;"><b>비밀번호찾기</b></p></div>                
                
                    <div id="privacy">
          	<form action="pwsearch1.do" name="pwsc">
			
            <div class="id"><label class="id"><b>ID</b>&nbsp;&nbsp;&nbsp;<input id="pwid" name="pwid" type="text" size="16" ></label>          
            </div>  
            <div class="name"><b>이름</b>&nbsp;&nbsp;&nbsp;<input id="pwname" name="pwname" type="text" size="16"></div>
            <div class="tel"><b>전화번호</b>&nbsp;&nbsp;&nbsp;<input id="pwtel1" name="pwtel1" type="text" size="1"><b>-</b><input id="pwtel2" name="pwtel2" type="text" size="1"><b>-</b><input id="pwtel3" name="pwtel3" type="text" size="1"></div>
          	</form>
            
            <div class="button">
                 <button class="bbt" type="button" onclick="pwsearch();">확 인</button>
                 <a href="index.do"><button class="btn2" type="reset"> 취 소 </button></a>
            </div>
           
                </div>
</body>
</html>