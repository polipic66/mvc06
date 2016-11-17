<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String currname="커리큘럼";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/jquery.bxslider.css" />
<style type="text/css">
	.container{
		text-align: center;
	}
	#pagetitle{
		margin: 5px auto;
		width: 100%;
		text-align: center;
		font-size: 25px;
	}
	#currname{
		margin: 20px auto;
		padding: 30px auto 40px;
		border-bottom: 3px solid skyblue;
	}
	#th{
		margin: 0px auto;
		font-size: 10px;
		height: 20px;
	}
	th:first-child{
		width: 100px;
	}
	th:nth-child(2){
		width: 100px;
	}
	th:last-child{
		width: 100px;
	}
	table, th, td{
		border: 1px solid black;
		border-collapse: collapse;
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/jqeury.bxslider.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="container">
		<h1 id="pagetitle">성적 관리</h1>
		<form action="grasave.do" method="post">
			<div id="submitform">
				<div id="currname">
					<label for="curr">커리큘럼</label>&nbsp;&nbsp;
					<input type="text" name="curr" id="curr" readonly="readonly" value="<%=currname %>"/>
				</div>
				<div>
					<table id="th">
						<tr>
							<th>수강자 ID</th>
							<th>수강자 이름</th>
							<th>점수</th>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</div>
</body>
</html>