<%@ page import="fproject.lec.model.CurrDto" %>
<%@ page import="fproject.lec.dao.CurrDao" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    CurrDto bean = (CurrDto) request.getAttribute("bean");
//    String uid = (String) session.getAttribute("userid");
    String uid = request.getParameter("uid");
    CurrDao dao = null;
    try {
        dao = new CurrDao();
    } catch (Exception e) {
        e.printStackTrace();
    }
//    String idx = "aa"; // userid
    String name = null;
    try {
        name = dao.getName(uid);
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>커리큘럼 보기</title>
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <link rel="stylesheet" href="css/stu/stucurrone.css">

</head>
<body>
<div class="context_one">
    <h1>수강 신청</h1>
    <div class="curr_table_half"></div>
    <div class="wrap">
        <div class="content_form_l">
            <span class="label">커리큘럼 명 : </span><span><%=bean.getTitle() %></span>
        </div>
        <div class="content_form_c">
            <span class="label">강사 : </span><span><%=name %></span>
        </div>
        <div class="content_form_r">
            <span class="label">수강 인원 : </span><span><%=bean.getNumofperson() %></span>
        </div>
    </div>
    <div class="content_ori">
        <span class="label"></span><span><%=bean.getContent() %></span>
    </div>
    <div class="btn">
        <a id="app" href="lecapp.do?idx=<%=bean.getCurrid() %>&uid=<%=uid%>">수강 신청</a>
        <%-- 학생 아이디, 커리큘럼 아이디--%>
        <a id="app" href="stucurr.do">취 소</a>
    </div>
</div>
</body>
</html>
