<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String pg = request.getAttribute("pg").toString(); %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admin/admincss/admin.css">
<%  if(pg!=null && pg.indexOf("adminmain")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu00.css">
<% }%>
<%  if(pg!=null && pg.indexOf("adminsub1")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu01.css">
<% }%>
<%  if(pg!=null && pg.indexOf("adminsub2")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu02.css">
<% }%>
<%  if(pg!=null && pg.indexOf("adminsub3")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu03.css">
<% }%>
<%  if(pg!=null && pg.indexOf("council")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu04.css">
<% }%>
<%  if(pg!=null && pg.indexOf("advertise")>0){ %>
	<link rel="stylesheet" href="admin/admincss/menu05.css">
<% }%>

<script type="text/javascript">
   $(document).ready(function(){
	   <%  if(pg!=null && pg.indexOf("adminmain")<=0){ %>
	     $(".menu00").on( "mouseover", function() {
	    	 $(".menu00").attr("style","cursor:hand;cursor:pointer;");
	    	 $(".menu00 a").attr("style","color:yellow;");
		 });
	     $(".menu00").on( "mouseout", function() {
	    	 $(".menu00 a").attr("style","color:white;");
		 });
	   <%}%>
	   <%  if(pg!=null && pg.indexOf("adminsub1")<=0){ %>
	     $(".menu01").on( "mouseover", function() {
	    	 $(".menu01").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;");
	    	 $(".menu01 a").attr("style","color:navy;");
		 });
	     $(".menu01").on( "mouseout", function() {
	    	 $(".menu01").attr("style","background-color:#ffffff;");
	    	 $(".menu01 a").attr("style","color:black;");
		 });
	   <%}%>
	   <%  if(pg!=null && pg.indexOf("adminsub2")<=0){ %>
	     $(".menu02").on( "mouseover", function() {
	    	 $(".menu02").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;");
	    	 $(".menu02 a").attr("style","color:navy;");
		 });
	     $(".menu02").on( "mouseout", function() {
	    	 $(".menu02").attr("style","background-color:#ffffff;");
	    	 $(".menu02 a").attr("style","color:black;");
		 });
	   <%}%>
	   <%  if(pg!=null && pg.indexOf("adminsub3")<=0){ %>
	     $(".menu03").on( "mouseover", function() {
	    	 $(".menu03").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;");
	    	 $(".menu03 a").attr("style","color:navy;");
		 });
	     $(".menu03").on( "mouseout", function() {
	    	 $(".menu03").attr("style","background-color:#ffffff;");
	    	 $(".menu03 a").attr("style","color:black;");
		 });
	   <%}%>
	   <%  if(pg!=null && pg.indexOf("council")<=0){ %>
	     $(".menu04").on( "mouseover", function() {
	    	 $(".menu04").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;");
	    	 $(".menu04 a").attr("style","color:navy;");
		 });
	     $(".menu04").on( "mouseout", function() {
	    	 $(".menu04").attr("style","background-color:#ffffff;");
	    	 $(".menu04 a").attr("style","color:black;");
		 });
	   <%}%>
	   <%  if(pg!=null && pg.indexOf("advertise")<=0){ %>
	     $(".menu05").on( "mouseover", function() {
	    	 $(".menu05").attr("style","cursor:hand;cursor:pointer;background-color:#cccccc;");
	    	 $(".menu05 a").attr("style","color:navy;");
		 });
	     $(".menu05").on( "mouseout", function() {
	    	 $(".menu05").attr("style","background-color:#ffffff;");
	    	 $(".menu05 a").attr("style","color:black;");
		 });
	   <%}%>
	     
	     <%  if(pg!=null && pg.indexOf("adminmain")>0){ %>
	     $(".menu00 a").attr("style","color:yellow;");
	     $(".menu00").on( "mouseout", function() {
		 	$(".menu00 a").attr("style","color:yellow;");
	     });
	     $(".menu00").on( "mouseover", function() {
			$(".menu00 a").attr("style","color:yellow;");
		 });
	     <% }%>
	     <%  if(pg!=null && pg.indexOf("adminsub1")>0){ %>
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
	 <%  if(pg!=null && pg.indexOf("adminsub2")>0){ %>
	     $(".menu02 a").attr("style","color:black;");
		 $(".menu02").on( "mouseout", function() {
	    	 $(".menu02").attr("style","background-color:#cccccc;");
	    	 $(".menu02 a").attr("style","color:black;");
		 });
		 $(".menu02").on( "mouseover", function() {
	    	 $(".menu02").attr("style","background-color:#cccccc;");
	    	 $(".menu02 a").attr("style","color:black;");
		 });
	 <% }%>
	 <%  if(pg!=null && pg.indexOf("adminsub3")>0){ %>
	    $(".menu03 a").attr("style","color:black;");
	 	$(".menu03").on( "mouseout", function() {
    	 	$(".menu03").attr("style","background-color:#cccccc;");
    	 	$(".menu03 a").attr("style","color:black;");
	 	});
	 	$(".menu03").on( "mouseover", function() {
    	 	$(".menu03").attr("style","background-color:#cccccc;");
    	 	$(".menu03 a").attr("style","color:black;");
	 	});
	 <% }%>
	 <%  if(pg!=null && pg.indexOf("council")>0){ %>
	     $(".menu04 a").attr("style","color:black;");
		 $(".menu04").on( "mouseout", function() {
	    	 $(".menu04").attr("style","background-color:#cccccc;");
	    	 $(".menu04 a").attr("style","color:black;");
		 });
		 $(".menu04").on( "mouseover", function() {
	    	 $(".menu04").attr("style","background-color:#cccccc;");
	    	 $(".menu04 a").attr("style","color:black;");
		 });
	 <% }%>
	 <%  if(pg!=null && pg.indexOf("advertise")>0){ %>
	     $(".menu05 a").attr("style","color:black;");
		 $(".menu05").on( "mouseout", function() {
	    	 $(".menu05").attr("style","background-color:#cccccc;");
	    	 $(".menu05 a").attr("style","color:black;");
		 });
		 $(".menu05").on( "mouseover", function() {
	    	 $(".menu05").attr("style","background-color:#cccccc;");
	    	 $(".menu05 a").attr("style","color:black;");
		 });
	 <% }%>
    });
</script>
</head>
<body>
	<ul>
      <li class="menu00"><a href="adminmain.do">관리자홈</a></li>
      <li class="menu01"><a href="att.do">출석통계</a></li>
      <li class="menu02"><a href="pro.do">진도통계</a></li>
      <li class="menu03"><a href="gra.do">성적통계</a></li>
      <li class="menu04"><a href="cou.do">1:1문의답변</a></li>
      <li class="menu05"><a href="ad.do">광고등록</a></li>
    </ul>
</body>
</html>