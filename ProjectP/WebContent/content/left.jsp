<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<% String position = (String) session.getAttribute("position"); %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="admin/admincss/admin.css">
</head>
<body>
<!-- ul>
   <li>공지사항</li>
   <li>menu1</li>
   <li>menu2</li>
   <li>menu3</li>
   <li>menu4</li>
</ul-->
<ul>
    <li><a href="index.do">한빛ENI 천호점</a></li>
    <li><a href="not.do">공지사항</a></li>
    <li>
        <% if (position != null && position.equals("강사")) { %>
        <a style="cursor:hand;cursor:pointer;" href="curr.do">강의</a>
        <%} else if (position != null && position.equals("학생")) { %>
        <a style="cursor:hand;cursor:pointer;" href="stucurr.do">강의</a>
        <%} else { %>
        <a style="cursor:hand;cursor:pointer;" onclick="alert('로그인하셔야 가능합니다!');return false;">강의</a>
        <%} %>
    </li>
    <% if (position != null && position.equals("관리")) { %>
    <li><a style="cursor:hand;cursor:pointer;" href="adminmain.do">관리</a></li>
    <%} else { %>
    <li><a style="cursor:hand;cursor:pointer;" onclick="alert('관리자로 로그인하셔야 가능합니다!');return false;">관리</a></li>
    <%} %>
    <li><a style="cursor:hand;cursor:pointer;" href="info.do">안내</a></li>
</ul>
</body>
</html>