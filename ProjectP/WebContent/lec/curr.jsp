<%@ page import="fproject.lec.dao.CurrDao" %>
<%@ page import="fproject.lec.model.CurrDto" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  @SuppressWarnings("unchecked")
    List<CurrDto> list = (List<CurrDto>) request.getAttribute("list");
    String idx = (String) session.getAttribute("userid"); //userid
    CurrDao dao = null;
    try {
        dao = new CurrDao();
    } catch (Exception e) {
        e.printStackTrace();
    }
//    String idx = "aa"; // userid
    String name = null;
    try {
        name = dao.getName(idx);
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>커리큘럼</title>
    <link rel="stylesheet" href="css/curr.css">
    <%--Modal--%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="../css/currinsertmodal.css">
    <link rel="stylesheet" href="../css/modalbtn.css">
    <%--Modal--%>
</head>
<body>
<div>
    <div class="curr_table_l">천호점 커리큘럼</div>
    <div class="curr_table_half"></div>
    <%--<div class="curr_table_r"><a href="curradd.do?idx=aa" id="btn">커리큘럼 입력</a></div>--%>
    <%--<p><a href="curradd.do?idx=<%=idx%>" id="btn">커리큘럼 입력</a></p>--%>
    <%--Modal--%>
    <div class="curr_table_r">
        <div class="w3-container">
            <button onclick="document.getElementById('id01').style.display='block'" class="w3-btn">커리큘럼 입력
            </button>

            <div id="id01" class="w3-modal">
                <div class="w3-modal-content w3-animate-top w3-card-8">
                    <header class="w3-container w3-teal">
        <span onclick="document.getElementById('id01').style.display='none'"
              class="w3-closebtn">&times;</span>
                        <h2>커리큘럼</h2>
                    </header>
                    <div class="w3-container">
                        <%--<form action="notadd.do">--%>
                        <form action="currinsert.do" method="post">
                            <div class="curr_table_line"></div>
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
                                <div class="content_form_c">
                                    <label for="name">&nbsp;이 름</label>
                                    <input class="text_color_r" type="text" value="<%=name%>" name="name" id="name"
                                           disabled="disabled"/>
                                </div>
                                <div class="content_form_r">
                                    <label for="numofperson">수강 인원</label>
                                    <input class="content_form_numof" type="text" name="numofperson" id="numofperson"/>
                                </div>
                            </div>
                            <div class="curr_table_line"></div>
                            <p class="content_center">
                                <label for="content"></label>
                                <textarea class="content" name="content" id="content"></textarea>
                            </p>
                            <div class="curr_table_line"></div>
                            <p class="btn">
                                <button type="submit">등 록</button>
                            </p>
                            <div class="curr_table_line"></div>
                        </form>
                    </div>
                    <footer class="w3-container w3-teal">
                        <p>한빛교육센터 천호점</p>
                    </footer>
                </div>
            </div>
        </div>
        <%-- idx 는 세션 값으로--%>
        <div class="curr_table_line"></div>
        <table class="curr_table">
            <tr>
                <th align="center">커리큘럼 ID</th>
                <th align="center">커리큘럼 제목</th>
                <th align="center">글쓴이</th>
                <th align="center">수강인원</th>
            </tr>
            <% for (CurrDto bean : list) {
            %>
            <tr>
                <td align="center"><%=bean.getCurrid()%>
                </td>
                <td class="curr_table_title"><a href="currone.do?idx=<%=bean.getCurrid()%>"><%=bean.getTitle()%>
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
            <li>
                <a href="${pageContext.request.contextPath}/curr.do?p=<%=i %>"><%=i %>
                </a>
            </li>
            <%} %>
        </ul>
    </div>
</div>
</body>
</html>
