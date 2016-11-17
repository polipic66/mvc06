<%@ page import="fproject.not.dao.NotDao" %>
<%@ page import="fproject.not.model.NotDto" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  @SuppressWarnings("unchecked")
    List<NotDto> list = (List<NotDto>) request.getAttribute("list");
//    String idx = (String) request.getSession().getAttribute("idx");   // 세션으로부터 userid 받아오기
    NotDao dao = null;
    try {
        dao = new NotDao();
    } catch (Exception e) {
        e.printStackTrace();
    }
    String idx = "aa"; // userid
    String name = null;
    try {
        name = dao.getName(idx);
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>공지사항</title>
</head>
<link rel="stylesheet" href="css/not/not.css">
<body>
<div>
    <div class="not_table_l">공지사항</div>
    <div class="not_table_r"><a href="notadd.do?idx=<%=idx%>" id="btn">공지사항 입력</a></div>
    <div class="not_table_r">
        <div class="not_table_line"></div>
        <table class="not_table">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>글쓴이</th>
                <th>날짜</th>
            </tr>
            <% for (NotDto bean : list) {
            %>
            <tr>
                <td><%=bean.getIdx()%>
                </td>
                <td class="not_table_title"><a href="notone.do?idx=<%=bean.getIdx()%>"><%=bean.getSubject()%>
                </a>
                </td>
                <td><%=bean.getUserid()%>
                </td>
                <td><%=bean.getNotdate()%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        <div class="not_table_line"></div>
        <p>
        <ul class="not_table_ul">
            <%
                int tot = (Integer) request.getAttribute("ptot");
                for (int i = 1; i <= tot; i++) {
            %>
            <li><a href="${pageContext.request.contextPath}/not.do?p=<%=i %>"><%=i %>
            </a></li>
            <%} %>
        </ul>
    </div>
</div>
</body>
</html>
