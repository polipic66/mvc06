<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String pg = request.getAttribute("pg").toString(); %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admin/admincss/admin.css">
<%  if(pg!=null && pg.indexOf("index.do")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu00.css">
<% }%>
<%  if(pg!=null && pg.indexOf("not.do")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu01.css">
<% }%>
<%  if(pg!=null && pg.indexOf("notone.do")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu01.css">
<% }%>

<script type="text/javascript">
   $(document).ready(function(){
	   <%  if(pg!=null && pg.indexOf("index.do")<=0){ %>
	     $(".menu00").on( "mouseover", function() {
	    	 $(".menu00").attr("style","cursor:hand;cursor:pointer;");
	    	 $(".menu00 a").attr("style","color:yellow;");
		 });
	     $(".menu00").on( "mouseout", function() {
	    	 $(".menu00 a").attr("style","color:white;");
		 });
	   <%}%>
	   <%  if(pg!=null && (pg.indexOf("not.do")<=0 || pg.indexOf("not.do")<=0)){ %>
	     $(".menu01").on( "mouseover", function() {
	    	 $(".menu01").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;");
	    	 $(".menu01 a").attr("style","color:navy;");
		 });
	     $(".menu01").on( "mouseout", function() {
	    	 $(".menu01").attr("style","background-color:#ffffff;");
	    	 $(".menu01 a").attr("style","color:black;");
		 });
	   <%}%>
	   
	     
	     <%  if(pg!=null && pg.indexOf("index.do")>0){ %>
	     $(".menu00 a").attr("style","color:yellow;");
	     $(".menu00").on( "mouseout", function() {
		 	$(".menu00 a").attr("style","color:yellow;");
	     });
	     $(".menu00").on( "mouseover", function() {
			$(".menu00 a").attr("style","color:yellow;");
		 });
	     <% }%>
	     <%  if(pg!=null && (pg.indexOf("not.do")>0 || pg.indexOf("not.do")<=0)){ %>
	     $(".menu01 a").attr("style","color:black;");
	     $(".menu01").on( "mouseout", function() {
		 	$(".menu01").attr("style","background-color:#cccccc;");
		 	$(".menu01 a").attr("style","color:black;");
	     });
	     $(".menu01").on( "mouseover", function() {
			 	$(".menu01").attr("style","background-color:#cccccc;");
			 	$(".menu01 a").attr("style","color:black;");
		     });
	 <% }%>
	 
    });
</script>
</head>
<body>
	<ul>
      <li class="menu00"><a href="index.do">홈</a></li>
      <li class="menu01"><a href="not.do">공지 사항</a></li>
      <%--<li class="menu02"><a href="lec.do">강의 관리</a></li>--%>
      <%--<li class="menu03"><a href="gra.do">성적통계</a></li>--%>
      <%--<li class="menu04"><a href="cou.do">1:1문의답변</a></li>--%>
      <%--<li class="menu05"><a href="ad.do">광고등록</a></li>--%>
    </ul>
</body>
</html>