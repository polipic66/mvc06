<%@ page import="fproject.lec.model.CurrDto" %>
<%@ page import="fproject.lec.dao.CurrDao" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    CurrDto bean = (CurrDto) request.getAttribute("bean");
    CurrDao dao = null;
    try {
        dao = new CurrDao();
    } catch (Exception e) {
        e.printStackTrace();
    }
    String name = null;
    try {
        name = dao.getName(bean.getUserid());
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>커리큘럼 보기</title>
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/currdel.js"></script>
    <%--<link rel="stylesheet" href="../css/currinsert.css">--%>
    <%--Modal--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="css/currinsertmodal.css">
    <link rel="stylesheet" href="css/modalbtn.css">
    <%--Modal--%>
</head>
<body>
<div class="context_one">
    <div class="curr_table_l">커리큘럼</div>
    <div class="curr_table_half"></div>
    <%--Modal--%>
    <div class="curr_table_r">
        <div class="w3-container">
            <button onclick="document.getElementById('id01').style.display='block'" class="w3-btn">커리큘럼 수정
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
                        <form action="currupdate.do" method="post">
                            <div class="curr_table_line"></div>
                            <p>
                                <label for="currid"></label>
                                <input type="text" value="<%=bean.getCurrid()%>" name="currid" id="currid"
                                       hidden="hidden">
                            </p>
                            <p>
                                <label for="userid"></label>
                                <input type="text" value="<%=bean.getUserid()%>" name="userid" id="userid"
                                       hidden="hidden">
                            </p>
                            <%--<input type="text" value="<%=idx%>" name="userid" id="userid" hidden="hidden">--%>
                            <div class="warp">
                                <div class="content_form_l">
                                    <label for="title">제 목</label>
                                    <input class="text_color_l" value="<%=bean.getTitle()%>" type="text" name="title"
                                           id="title"/>
                                </div>
                                <div class="content_form_c">
                                    <label for="name">&nbsp;이 름</label>
                                    <input class="text_color_r" type="text" value="<%=name%>" name="name" id="name"
                                           disabled="disabled"/>
                                </div>
                                <div class="content_form_r">
                                    <label for="numofperson">수강 인원</label>
                                    <input class="content_form_numof" value="<%=bean.getNumofperson()%>" type="text"
                                           name="numofperson" id="numofperson"/>
                                </div>
                            </div>
                            <div class="curr_table_line"></div>
                            <p class="content_center">
                                <label for="content"></label>
                                <textarea class="content" name="content" id="content"><%=bean.getContent()%></textarea>
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
    </div>
    <%--Modal--%>
    <div class="curr_table_half"></div>
    <div class="wrap">
        <div class="content_form_l">
            <span class="label">커리큘럼 명 : </span><span id="subtitle"><%=bean.getTitle() %></span>
        </div>
        <div class="content_form_c">
            <span class="label">강사 : </span><span><%=name %></span>
        </div>
        <div class="content_form_r">
            <span class="label">수강 인원 : </span><span><%=bean.getNumofperson() %></span>
        </div>
    </div>
    <%--<div class="curr_table_line"></div>--%>
    <div class="content_ori">
        <span class="label">내용:&nbsp;&nbsp;</span><span><%=bean.getContent() %></span>
    </div>
    <div class="curr_table_half"></div>
    <div class="btn">
        <a id="del" href="currdel.do?idx=<%=bean.getCurrid() %>">삭 제</a>
    </div>
</div>
</body>
</html>
