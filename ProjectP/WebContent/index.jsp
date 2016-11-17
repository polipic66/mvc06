<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String loginpg = (String)request.getAttribute("loginpg");%>
<% String pg = (String)request.getAttribute("pg");%>
<% String lsidepg = (String)request.getAttribute("lsidepg");%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="This is an LMS admin main page">
    <meta name="keywords" content="LMS, administrator, statistics">
    <title>::: LMS System :::</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/member.css">
    <link rel="stylesheet" href="css/jquery.bxslider.css">
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="js/jquery.bxslider.js"></script>
    <script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
    <script>
    $(document).ready(function() {
		$('.text1').val('아이디 입력하세요.')
        $('.text1').on('focus',function(){         
			$('.text1').val('');  
        });
    });
      $(document).ready(function() {  
        $('.text2').val('패스워드 입력')
        $('.text2').on('focus',function(){
    	$('.text2').val('');
          
         });    

		});
      
      $(document).ready(function() {
      $('.bxslider').bxSlider({
      	  mode: 'fade',
      	  auto:true,
      	  captions: true
      	});
      });
      

    </script>
</head>
<body>
<div id="wrapper">
   <jsp:include page="/template/header.jsp">
   <jsp:param name="loginpg" value="${loginpg }"/>
   </jsp:include>
   <jsp:include page="/template/content.jsp">
   		<jsp:param name="pg" value="${pg }"/>
   		<jsp:param name="lsidepg" value="${lsidepg }"/>
   </jsp:include>
   <jsp:include page="/template/footer.jsp"></jsp:include>
</div>
</body>
</html>