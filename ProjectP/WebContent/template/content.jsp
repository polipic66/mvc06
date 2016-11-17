<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String pg = (String)request.getParameter("pg"); %>
<%  String lsidepg = (String)request.getAttribute("lsidepg"); %>
<%  String position = (String)session.getAttribute("position"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
 #main_menu ul li a { text-decoration:none; color:white; }
 #main_menu ul li a:hover { text-decoration:none; color:white;}
</style>
</head>
<body>
 <nav id="main_menu">
            <ul>
                <li><a href="not.do">공지사항</a></li>
                <% if(position != null && position.equals("강사")){ %>
                <li><a style="cursor:hand;cursor:pointer;"  href="curr.do">강의</a></li>
                <%}else if(position != null && position.equals("학생")){ %>
                <li><a style="cursor:hand;cursor:pointer;"  href="stucurr.do">강의</a></li>
                <%}else{ %>
                <li><a style="cursor:hand;cursor:pointer;" onclick="alert('로그인하셔야 가능합니다!');return false;">강의</a></li>
                <%} %>
                <% if(position != null && position.equals("관리")){ %>
                <li><a style="cursor:hand;cursor:pointer;" href="adminmain.do">관리</a></li>
                <%}else{ %>
                <li><a style="cursor:hand;cursor:pointer;" onclick="alert('관리자로 로그인하셔야 가능합니다!');return false;">관리</a></li>
                <%} %>
                <li><a style="cursor:hand;cursor:pointer;" href="info.do">안내</a></li>
            </ul>
        </nav>
        <div id="content">
   
            <div id="lside">
                <jsp:include page="<%=lsidepg %>">
                   <jsp:param name="pg" value="<%=pg %>"/>
                </jsp:include>
                    <!-- ul>
                        <li>공지사항</li>
                        <li>menu1</li>
                        <li>menu2</li>
                        <li>menu3</li>
                        <li>menu4</li>
                    </ul-->
            </div>
            <div id="container">
            <section id="main_section">
                
               <jsp:include page="<%=pg%>"/>
               
                
            </section>
            
            <aside id="main_aside">
               <a href="couadd.do"><img alt="" src="imgs/onlinesangdam.gif" width="100%" height ="200%"/></a>
               <img alt="" src="imgs/tel-main.jpg" width="100%" height ="200%"/>
               <img alt="" src="imgs/cs_center.png" width="100%" height ="200%"/>
            </aside>
            </div>
     
        </div>
</body>
</html>