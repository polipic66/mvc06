<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//List<LecDto> list = (List<LecDto>) request.getAttribute("list");
	//String userid = (String) session.getAttribute("userid");
	//LecDao dao = null;
	
	//try {
	//   dao = new LecDao();
	//} catch (Exception e) {
	//    e.printStackTrace();
	//}
	
	//String userid = "User1"; // userid
	//String name = null;
	
	//try {
	//    name = dao.getName(userid);
	//} catch (SQLException e) {
	//	e.printStackTrace();
	//}
	String lectitle = "강의 제목";
	String teachid = "teach1";
	String teachname = "강사이름";
	String leccategory = "카테고리";
	String leccontent = "강의 내용";
	int currid = 1;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/jquery.bxslider.css" />
<style type="text/css">
	*{
		margin: 0px;
		position: relative;
	}
	#pagetitle{
		margin: 5px auto;
		width: 100%;
		text-align: center;
		font-size: 25px;
	}
	#titleteachcurr{
		width: 100%;
		height: 40px;
		margin-top: 20px;
		text-align: center;
		border-bottom: 3px solid skyblue;
		font-size: 10px;
	}
	#catefile{
		width: 100%;
		height: 40px;
		text-align: center;
		font-size: 10px;
	}
	.lecinput{
		height: 15px;
		font-size: 10px;
	}
	.divtxtarea{
		width: 100%;
		text-align: center;
	}
	#leccontent{
		margin: 10px auto;
		resize: none;
		font-size: 10px;
		padding: 20px;
		overflow-Y: scroll;
	}
	.divsubcan{
		text-align: center;
	}
	.divsubcan>button{
		width: 80px;
		height: 30px;
		font-size: 10px;
	}
	#lect{
		left: 70px;
		width: 200px;
	}
	#currname{
		width: 180px;
	}
	#curric{
		width: 230px;
		left: 40px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/jqeury.bxslider.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<div class="container">
		<h1 id="pagetitle">강의 등록</h1>
		<form action="lecinsert.do" method="post">
			<input type="hidden" name="teachid" value="<%=teachid %>" />
			<input type="hidden" name="currid" value="<%=currid %>" />
			<table id="titleteachcurr">
				<tr>
					<td id="lect">
						<label for="lectitle">제목&nbsp;</label>
						<input type="text" name="lectitle" id="lectitle" size="30" class="lecinput" value="<%=lectitle %>" />
					</td>
					<td>
						<label for="teacher">강사&nbsp;</label>
						<input type="text" name="teacher" id="teachname" size="10" value="<%=teachname %>" disabled="disabled" class="lecinput"/>
					</td>
				</tr>
			</table>
			<table id="catefile">
				<tr>
					<td id="curric">
						<label for="currname">커리큘럼&nbsp;</label>
						<select name="currname" id="currname" class="lecinput">
							<option value="Java">Java</option>
							<option value="Css">Css</option>
							<option value="HTML5">HTML5</option>
						</select>
					</td>
					<td>
						<label for="leccategory" id="category">카테고리&nbsp;</label>
						<input type="text" name="leccategory" id="leccategory" class="lecinput" value="<%=leccategory %>"/>
					</td>
				</tr>
			</table>
			<div class="divtxtarea">
				<textarea name="leccontent" id="leccontent" cols="90" rows="25" class="test"><%=leccontent %></textarea>
			</div>
			<div class="divsubcan">
				<button type="submit">추 가</button>
				&nbsp;&nbsp;
				<button type="reset">취 소</button>
			</div>
		</form>
	</div>
</body>
</html>