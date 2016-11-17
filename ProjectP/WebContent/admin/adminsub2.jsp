<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="fproject.admin.model.ProDto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리 > LMS 진도통계 페이지</title>
<link rel="stylesheet" href="admin/admincss/adminsub2.css">
<script type="text/javascript" src="admin/adminjs/canvasjs.min.js"></script>
<script type="text/javascript">
	window.onload = function () {
		var chart = new CanvasJS.Chart("chartContainer",
		{

			title:{
				text: "",
				fontSize: 30
			},
                        animationEnabled: true,
			axisX:{

				gridColor: "Silver",
				tickColor: "silver",
				valueFormatString: "DD/MMM"

			},                        
                        toolTip:{
                          shared:true
                        },
			theme: "theme2",
			axisY: {
				gridColor: "Silver",
				tickColor: "silver"
			},
			legend:{
				verticalAlign: "center",
				horizontalAlign: "right"
			},
			data: [
			{        
				type: "line",
				showInLegend: true,
				lineThickness: 2,
				name: "Visits",
				markerType: "square",
				color: "#F08080",
				dataPoints: [
				{ x: new Date(2010,0,3), y: 650 },
				{ x: new Date(2010,0,5), y: 700 },
				{ x: new Date(2010,0,7), y: 710 },
				{ x: new Date(2010,0,9), y: 658 },
				{ x: new Date(2010,0,11), y: 734 },
				{ x: new Date(2010,0,13), y: 963 },
				{ x: new Date(2010,0,15), y: 847 },
				{ x: new Date(2010,0,17), y: 853 },
				{ x: new Date(2010,0,19), y: 869 },
				{ x: new Date(2010,0,21), y: 943 },
				{ x: new Date(2010,0,23), y: 970 }
				]
			},
			{        
				type: "line",
				showInLegend: true,
				name: "Unique Visits",
				color: "#20B2AA",
				lineThickness: 2,

				dataPoints: [
				{ x: new Date(2010,0,3), y: 510 },
				{ x: new Date(2010,0,5), y: 560 },
				{ x: new Date(2010,0,7), y: 540 },
				{ x: new Date(2010,0,9), y: 558 },
				{ x: new Date(2010,0,11), y: 544 },
				{ x: new Date(2010,0,13), y: 693 },
				{ x: new Date(2010,0,15), y: 657 },
				{ x: new Date(2010,0,17), y: 663 },
				{ x: new Date(2010,0,19), y: 639 },
				{ x: new Date(2010,0,21), y: 673 },
				{ x: new Date(2010,0,23), y: 660 }
				]
			}

			
			],
          legend:{
            cursor:"pointer",
            itemclick:function(e){
              if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
              	e.dataSeries.visible = false;
              }
              else{
                e.dataSeries.visible = true;
              }
              chart.render();
            }
          }
		});

chart.render();
}
</script>
</head>
<body>     
   <div id="ad">
   		<header id="adheader">
   			<h2>진도 통계</h2>
   		</header>    
   		<div id="adcontent">
   			<section id="insertAd">
   			  <div id="chartContainer" style="height: 270px; width: 90%;"></div>
   			</section>
   			<section id="list">
   				<table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호</th>
   						<th class="tblcol2">점검 날짜</th>
   						<th class="tblcol3">학생 이름</th>
   						<th class="tblcol4">커리큘럼명</th>
   						<th class="tblcol5">진도율</th>
   					</tr>
   					<c:if test="${!empty proList }">
   					<tr class="tr">
   						<td>1</td>
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
   					</tr>
   					<tr class="tr">
   						<td>3</td>
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
   					</tr>
   					<tr class="tr">
   						<td>5</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td></td>
   					</tr>
   					<tr>
   						<td colspan="5" id="paging" style="align:center;"><!-- center>◀ 1 2 3 4 5 6 7 8 9 10 ▶</center--></td>
   					</tr>
   					</c:if>
   					<c:if test="${empty proList }">
   					<tr>
   						<td colspan="5" style="align:center;">데이터가 없습니다</td>
   					</tr>
   					</c:if>
   				</table>
   			</section>
   		</div>
           
    </div>
</body>
</html>