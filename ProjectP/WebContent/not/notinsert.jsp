<%@ page import="fproject.not.dao.NotDao" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    NotDao dao = null;
    try {
        dao = new NotDao();
    } catch (Exception e) {
        e.printStackTrace();
    }
//    String idx = request.getParameter("idx");   // userid
    String idx = "aa";   // userid
    String name = null;
    try {
        name = dao.getName(idx);
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>공지사항 입력</title>
    <link rel="stylesheet" href="css/not/notinsert.css">
</head>
<body>
<h1>입력페이지</h1>
<form action="notinsert.do" method="post">
    <p>
        <label for="userid"></label>
        <input type="text" value="<%=idx%>" name="userid" id="userid" hidden="hidden">
    </p>
    <p class="content_form">
        <label for="title">제 목</label>
        <input type="text" name="title" id="title"/>
    </p>
    <p class="content_form">
        <label for="name">이 름</label>
        <input type="text" value="<%=name%>" name="name" id="name" disabled="disabled"/>
    </p>
    <p>
        <label for="content">내 용</label>
        <textarea class="content" name="content" id="content"></textarea>
    </p>
    <p class="btn">
        <button type="submit">공지등록</button>
        <button type="reset">취 소</button>
    </p>
</form>
</body>
</html>
