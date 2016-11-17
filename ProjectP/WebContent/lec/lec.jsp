<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
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
	.curri{
		padding: 30px 100px;
		border-bottom: 3px solid skyblue;
		text-align: center;
		font-size: 12px;
	}
	#currlist{
		width: 200px;
	}
	.leclist{
		text-align: center;
	}
	.leclistborder{
		margin: 0px auto;
		width: 425px;
		height: 220px;
		border: 2px solid #eeeeee;
		overflow-X: hidden;
		overflow-Y: scroll;
	}
	#leclisttable{
		margin: 0px auto;
		width: 403px;
	}
	#col1{
		width: 80px;
	}
	#col2{
		width: 240px;
	}
	#col3{
		width: 80px;
	}
	table, th, td{
		border: 1px solid black;
		border-collapse: collapse;
	}
	#col1, #col2, #col3{
		font-size: 10px;
		height: 20px;
	}
	#leclistcol{
		margin: 30px 65px 0px;
	}
	td{
		font-size: 10px;
		height: 20px;
	}
	td:first-child{
		width: 84px;
	}
	td:nth-child(2){
		width: 250px;
	}
	td:last-child{
		width: 80px;
	}
	#btn{
		margin: 20px auto;
		height: 30px;
		width: 70px;
		font-size: 10px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/jqeury.bxslider.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="container">
		<h1 id="pagetitle">강의 목록</h1>
		<div class="curri">
			커리큘럼&nbsp;&nbsp;&nbsp;
			<select name="currlist" id="currlist">
				<option value="java">Java</option>
				<option value="java">Java</option>
				<option value="java">Java</option>
			</select>
		</div>
		<table id="leclistcol">
			<tr>
				<th id="col1">강의 ID</th>
				<th id="col2">강의 제목</th>
				<th id="col3">승인 여부</th>
			</tr>
		</table>
		<div class="leclistborder">
			<table id="leclisttable">
				<tr>
					<td>강의</td>
					<td>제목</td>
					<td>승인여부</td>
				</tr>
				<tr>
					<td>강의</td>
					<td>제목</td>
					<td>승인여부</td>
				</tr>
				<tr>
					<td>강의</td>
					<td>제목</td>
					<td>승인여부</td>
				</tr>
				<tr>
					<td>강의</td>
					<td>제목</td>
					<td>승인여부</td>
				</tr>
			</table>
		</div>
		<input type="button" id="btn" value="강의 등록" onclick="" />
		&nbsp;&nbsp;
		<input type="button" id="btn" value="성적 관리" onclick="" />
	</div>
</body>
</html>