<%@ page import="fproject.lec.model.CurrDto" %>
<%@ page import="java.util.List" %>
<%@ page import="fproject.lec.dao.CurrDao" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  @SuppressWarnings("unchecked")
    List<CurrDto> list = (List<CurrDto>) request.getAttribute("list");
    String uid = (String) request.getSession().getAttribute("userid");
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
    <title>커리큘럼</title>
</head>
<link rel="stylesheet" href="css/stu/stucurr.css">
<body>
<div>
    <%--<div id="curr_table_l">커리큘럼 리스트</div>--%>
    <%--<div class="curr_table_r">&nbsp;</div>--%>
    <div class="curr_table_line"></div>
    <table class="curr_table">
        <tr>
            <th>커리큘럼 ID</th>
            <th>커리큘럼 제목</th>
            <th>글쓴이</th>
            <th>수강인원</th>
        </tr>
        <% for (CurrDto bean : list) {
        %>
        <tr>
            <td align="center"><%=bean.getCurrid()%>
            </td>
            <td class="curr_table_title"><a
                    href="stucurrone.do?idx=<%=bean.getCurrid()%>&uid=<%=bean.getUserid()%>"><%=bean.getTitle()%>
            </a>
            </td>
            <td align="center"><%=bean.getUserid()%>
            </td>
            <td align="center"><%=bean.getNumofperson()%>
            </td>
        </tr>
        <%
            }
        %>
    </table>
    <div class="curr_table_line"></div>
    <ul class="curr_table_ul">
        <%
            int tot = (Integer) request.getAttribute("ptot");
            for (int i = 1; i <= tot; i++) {
        %>
        <li><a href="${pageContext.request.contextPath}/stucurr.do?p=<%=i %>"><%=i %>
        </a></li>
        <%} %>
    </ul>
</div>
</body>
</html>