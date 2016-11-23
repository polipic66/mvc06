<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</head>
<body>
	<h1>로그인페이지</h1>
	<h3>${msg }</h3>
	<form action="test12.action">
	<p>id:<input type="text" name="id" /></p>
	<p>pw:<input type="text" name="pw"/></p>
	<p>
		<button type="submit">LOGIN</button>
		<button type="reset">RESET</button>
	</p>
	</form>
</body>
</html>