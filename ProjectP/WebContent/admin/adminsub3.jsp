<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="fproject.admin.model.GraDto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리 > LMS 성적통계 페이지</title>
<link rel="stylesheet" href="admin/admincss/adminsub3.css">
<script type="text/javascript" src="admin/adminjs/canvasjs.min.js"></script>
<script type="text/javascript">
window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer",
	{
		title:{
			text: ""
		},
                animationEnabled: true,
		legend:{
			verticalAlign: "center",
			horizontalAlign: "left",
			fontSize: 20,
			fontFamily: "Helvetica"        
		},
		theme: "theme2",
		data: [
		{        
			type: "pie",       
			indexLabelFontFamily: "Garamond",       
			indexLabelFontSize: 20,
			indexLabel: "{label} {y}%",
			startAngle:-20,      
			showInLegend: true,
			toolTipContent:"{legendText} {y}%",
			dataPoints: [
				{  y: 83.24, legendText:"Google", label: "Google" },
				{  y: 8.16, legendText:"Yahoo!", label: "Yahoo!" },
				{  y: 4.67, legendText:"Bing", label: "Bing" },
				{  y: 1.67, legendText:"Baidu" , label: "Baidu"},       
				{  y: 0.98, legendText:"Others" , label: "Others"}
			]
		}
		]
	});
	chart.render();
}
</script>
</head>
<body>     
   <div id="ad">
   		<header id="adheader">
   			<h2>성적 통계</h2>
   		</header>    
   		<div id="adcontent">
   			<section id="insertAd">
   			  <div id="chartContainer" style="height: 270px; width: 90%;"></div>
   			</section>
   			<section id="list">
   				<table id="tbl">
   					<tr id="th">
   						<th class="grtblcol1">번호</th>
   						<th class="grtblcol2">학생 이름</th>
   						<th class="grtblcol3">커리큘럼명</th>
   						<th class="grtblcol4">점수</th>
   						<th class="grtblcol5">등수</th>
   						<th class="grtblcol6">기록일시</th>
   					</tr>
   					<c:if test="${!empty graList }">
   					<tr class="tr">
   						<td>1</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   					</tr>	
   					<tr class="tr">
   						<td>2</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   					</tr>
   					<tr class="tr">
   						<td>3</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   					</tr>
   					<tr class="tr">
   						<td>4</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   					</tr>
   					<tr class="tr">
   						<td>5</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   					</tr>
   					<tr>
   						<td colspan="6" id="paging" style="align:center;"><!-- center>◀ 1 2 3 4 5 6 7 8 9 10 ▶</center--></td>
   					</tr>
   					</c:if>
   					<c:if test="${empty graList }">
   					<tr>
   						<td colspan="6" style="align:center;">데이터가 없습니다</td>
   					</tr>
   					</c:if>
   				</table>
   			</section>
   		</div>
           
    </div>
</body>
</html>