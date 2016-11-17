<%@ page import="fproject.not.model.NotDto" %>
<%@ page import="fproject.not.dao.NotDao" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    NotDto bean = (NotDto) request.getAttribute("bean");
    NotDao dao = null;
    try {
        dao = new NotDao();
    } catch (Exception e) {
        e.printStackTrace();
    }
//    String idx = "aa"; // userid
    String name = null;
//    String position = "학생";
//    String position = null;
    try {
        name = dao.getName(bean.getUserid());
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>공지사항</title>
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/notdel.js"></script>
    <link rel="stylesheet" href="css/not/notnot.css">
</head>
<body>
<div class="context_one">
    <h1>공지사항</h1>
    <div class="not_table_line"></div>
    <div class="warp">
        <div class="content_form_l">
            <span class="label">제목 : </span><span id="ntitle"><%=bean.getSubject() %></span>
        </div>
        <div class="content_form_r">
            <span class="label">작성자 : </span><span><%=name %></span>
        </div>
    </div>
    <div class="content">
        <span class="label"></span><span><%=bean.getContent() %></span>
    </div>
    <div class="not_table_line_half"></div>
    <c:if test="${sessionScope.position eq '관리' || sessionScope.position eq '강사'}">
    <div class="btn">
        <a id="del" href="notdel.do?idx=<%=bean.getIdx() %>">삭 제</a>
    </div>
    </c:if>
</div>
</body>
</html>
