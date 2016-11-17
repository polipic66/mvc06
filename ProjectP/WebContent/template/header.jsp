<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header id="main_header">
        <div id="left">
        <img alt="" src="imgs/logo_ai.png" width="400px">
        </div>
        <div id="right">
        <input type="text" class="text1" value="">
        <br>
        <input type="password" class="text2" value="">
        <div id="login">
            <button>로그인</button></div>
        <div id="insert">
        <button>회원가입</button>
            </div>
        <div id="search">
        <button>아이디 찾기<br>/비밀번호 찾기</button>
        </div>
        </div>
        
        </header-->
        <header id="main_header">
        <div id="left">
        <a href="index.do"><img alt="" src="imgs/logo_ai.png" width="400px"></a>
        </div>
        <div id="right">
        <%
        	String loginpg=(String)session.getAttribute("loginpg");	
        	if(loginpg==null)loginpg="/member/login.jsp";
        %>
          <jsp:include page="<%=loginpg %>"></jsp:include>
        </div>
        
        </header>
</body>
</html>