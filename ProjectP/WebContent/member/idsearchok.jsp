<%@page import="org.apache.catalina.connector.Request"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="fproject.member.model.MemberDto" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	li{
		   list-style:none;
		   font-size: 30px;
	}
	li:nth-child(2){ 
			font-size: 70px;
			color: red; 
			font-weight: 900;
	}
</style>
</head>
<body>
<div id="privacy">
            <div class="searchid">
                <ul>
                    <li>찾으시려는 아이디는</li>
                    <li><%=request.getAttribute("userid")%></li>
                    <li>입니다.</li>
                </ul>
                <br>
            </div>
              <br><br><br>
            <div class="button">
                 <a href="index.do"><button class="btn1" type="submit">확 인</button></a>
                 <a href="pwsearch.do"><button class="btn2" type="reset"> PW찾기 </button></a>
            </div>
           
                </div>
</body>
</html>