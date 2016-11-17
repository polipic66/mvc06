<%@ page import="fproject.not.dao.NotDao" %>
<%@ page import="fproject.not.model.NotDto" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  @SuppressWarnings("unchecked")
    List<NotDto> list = (List<NotDto>) request.getAttribute("list");
    String idx = (String) request.getSession().getAttribute("userid");   // 세션으로부터 userid 받아오기
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
        name = dao.getName(idx);
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>공지사항</title>
    <%--Modal--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="css/not/notinsert.css">
    <link rel="stylesheet" href="css/modalbtn.css">
    <link rel="stylesheet" href="css/not/not.css">
    <%--Modal--%>
    <%--<script type="text/javascript" src="../js/jquery-1.11.3.js"></script>--%>
</head>
<%--<script>--%>
    <%--$(document).ready(function () {--%>
        <%--var posi = <%=position%>;--%>
        <%--$('.w3-container').attr("style", "display:block");--%>
        <%--if (posi == '학생') {--%>
            <%--$('.w3-container').attr("style", "display:none");--%>
        <%--}--%>
    <%--});--%>
<%--</script>--%>
<body>
<div>
    <%--<h1 class="not_table_l">공지사항</h1>--%>
    <%--<div class="not_table_half"></div>--%>
    <%--<div class="not_table_r"><a href="notadd.do?idx=aa" id="btn">공지사항 입력</a></div>--%>
    <%--Modal--%>
    <div class="not_table_r">
        <div class="w3-container">
        <c:if test="${sessionScope.position eq '관리' || sessionScope.position eq '강사'}">
            <button onclick="document.getElementById('id01').style.display='block'" class="w3-btn">공지사항 입력
            </button>
        </c:if>

            <div id="id01" class="w3-modal">
                <div class="w3-modal-content w3-animate-top w3-card-8">
                    <header class="w3-container w3-teal">
        <span onclick="document.getElementById('id01').style.display='none'"
              class="w3-closebtn">&times;</span>
                        <h2>공지 사항</h2>
                    </header>
                    <div class="w3-container">
                        <%--<form action="notadd.do">--%>
                        <form action="notinsert.do" method="post">
                            <div class="not_table_line"></div>
                            <p>
                                <label for="userid"></label>
                                <input type="text" value="<%=idx%>" name="userid" id="userid" hidden="hidden">
                            </p>
                            <%--<input type="text" value="<%=idx%>" name="userid" id="userid" hidden="hidden">--%>
                            <div class="warp">
                                <div class="content_form_l">
                                    <label for="title">제 목</label>
                                    <input class="text_color_l" type="text" name="title" id="title"/>
                                </div>
                                <div class="content_form_r">
                                    <label for="name">&nbsp;이 름</label>
                                    <input class="text_color_r" type="text" value="<%=name%>" name="name" id="name"
                                           disabled="disabled"/>
                                </div>
                            </div>
                            <div class="not_table_line"></div>
                            <p class="content_center">
                                <label for="content"></label>
                                <textarea class="content" name="content" id="content"></textarea>
                            </p>
                            <div class="not_table_line"></div>
                            <p class="btn">
                                <button type="submit">등 록</button>
                            </p>
                            <div class="not_table_line"></div>
                        </form>
                    </div>
                    <footer class="w3-container w3-teal">
                        <p>한빛교육센터 천호점</p>
                    </footer>
                </div>
            </div>
        </div>
        <%-- idx 는 세션 값으로, userid--%>
        <div class="not_table_line"></div>
        <table class="not_table">
            <tr>
                <th align="center">번호</th>
                <th align="center">제목</th>
                <th align="center">글쓴이</th>
                <th align="center">날짜</th>
            </tr>
            <% for (NotDto bean : list) {
            %>
            <tr>
                <td><%=bean.getIdx()%>
                </td>
                <td class="not_table_title"><a
                        href="${pageContext.request.contextPath}/notone.do?idx=<%=bean.getIdx()%>"><%=bean.getSubject()%>
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
