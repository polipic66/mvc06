<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function  idsearch(){
		var name = $('#scname').val();
		var scbir1 = $('#scbir1').val();
		var scbir2 = $('#scbir2').val();
		var scbir3 = $('#scbir3').val();
		
		if(name==""){
			alert("이름을입력해주세요");
		}else if(scbir1==""){
			alert("생년을 입력해주세요")
		}else if(scbir1.length!=4){
			alert("생년은 4자리로 입력해주세요")
		}else if(scbir2==""){
			alert("태어난 달을 입력해주세요")
		}else if(scbir2.length!=2){
			alert("태어난 달은 2자리로입력해주세요")
		}else if(scbir3==""){
			alert("태어난 일짜를 입력해주세요")
		}else {
			document.idsc.submit();
		}
	}

</script>
</head>
<body>
      <div id="joinform"><p style="color:red;"><b>아이디 찾기</b></p></div>                
            <div id="privacy">
            <form name="idsc"action="idsearch.do">
			
            <div class="name" ><b>이름</b>&nbsp;&nbsp;&nbsp;<input type="text" size="16" name="scname" id="scname"></div>
            <div class="birth"><b>생년월일</b>&nbsp;&nbsp;&nbsp;<input name="scbir1" id="scbir1" type="text" size="1"><b>년</b><input name="scbir2" id="scbir2" type="text" size="1"><b>월</b><input name="scbir3" id="scbir3" type="text" size="1"> <b>일</b></div>
            </form>
        
            <div class="button">
            <button class="btn1" type="button" onclick="idsearch();">확 인</button>
            <a href="index.do"><button class="btn2" type="reset" > 취 소 </button></a>
            <a href="pwsearch.do"><button class="btn1" type="button">PW찾기</button></a>
            </div>
                </div>
</body>
</html>