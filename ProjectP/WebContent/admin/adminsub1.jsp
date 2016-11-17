<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="fproject.admin.model.AttDto" %>
<%@ page import="java.util.ArrayList" %>
<% @SuppressWarnings("unchecked")
   ArrayList<AttDto> topList = (ArrayList<AttDto>)request.getAttribute("topList");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리 > LMS 출석통계 페이지</title>
<link rel="stylesheet" href="admin/admincss/adminsub1.css">
<script type="text/javascript" src="admin/adminjs/canvasjs.min.js"></script>
<script type="text/javascript">
<% if(topList.size()==0){%> 
  window.onload = function () {
	
    var chart = new CanvasJS.Chart("chartContainer",
    {
      title:{
        text: "아직 데이터가 없습니다."    
      },
      animationEnabled: true,
      axisY: {
        title: "출석율"
      },
      legend: {
        verticalAlign: "bottom",
        horizontalAlign: "center"
      },
      theme: "theme2",
      data: [

      {        
        type: "column",  
        showInLegend: true, 
        legendMarkerColor: "grey",
        legendText: "Top Five 학생 리스트",
        dataPoints: [  
		   
	          {y: 297571, label: "no Data"},
	          {y: 267017,  label: "no Data"},
	          {y: 175200,  label: "no Data"},
	          {y: 154580,  label: "no Data"},
	          {y: 116000,  label: "no Date"}
	          //{y: 97800, label: "no Data"},
	          //{y: 20682,  label: "no Data"},        
	          //{y: 20350,  label: "China"},        
	          //{y: 20682,  label: "US"},        
	          //{y: 20350,  label: "China"}
	          ]
	        }   
	        ]
	      });
    chart.render();
  }
<% } %>
<% if(topList.size()>0){%> 
window.onload = function () {
	
    var chart = new CanvasJS.Chart("chartContainer",
    {
      title:{
        text: ""    
      },
      animationEnabled: true,
      axisY: {
        title: "출석율"
      },
      legend: {
        verticalAlign: "bottom",
        horizontalAlign: "center"
      },
      theme: "theme2",
      data: [

      {        
        type: "column",  
        showInLegend: true, 
        legendMarkerColor: "grey",
        legendText: "Top Five 학생 리스트",
        dataPoints: [  
		   		
			<%  
			int count = 1; 
			for(AttDto item: topList){
			%>
			{y: <%=item.getPercent()%>, label: "<%=item.getUserid()%>"}
			<% count++;
			if(count<=topList.size()){%><%=","%><%}%>
			<% } %>

	          //{y: 297571, label: "no Data"},
	          //{y: 267017,  label: "no Data"},
	          //{y: 175200,  label: "no Data"},
	          //{y: 154580,  label: "no Data"},
	          //{y: 116000,  label: "no Date"},
	          //{y: 97800, label: "no Data"},
	          //{y: 20682,  label: "no Data"}        
	          //{y: 20350,  label: "China"}        
	          //{y: 20682,  label: "US"},        
	          //{y: 20350,  label: "China"}
	          ]
	        }   
	        ]
	      });
    chart.render();
  }
<% } %>
</script>
</head>
<body>     
   <div id="ad">
   		<header id="adheader">
   			<h2>출석 통계</h2>
   		</header>    
   		<div id="adcontent">
   			<section id="insertAd" style="margin:10px auto;">
   				<div id="chartContainer" style="height: 270px; width: 100%;"></div>
   			</section>
   			<section id="list">
   				<table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호</th>
   						<th class="tblcol2">학생 이름</th>
   						<th class="tblcol3">해당 일시</th>
   						<th class="tblcol4">출석여부</th>
   						<th class="tblcol4">출석율</th>
   						<th class="tblcol4" style="display:none;">출석율</th>
   					</tr>
   					<c:if test="${!empty attList}">
   					<c:set var="i" value="${pageset.total-(pageset.curpage-1)*pageset.pagesize }"/>
   					<c:forEach items="${attList}" var="att">
   					<tr class="tr">
   						<td>${i}</td>
   						<td>${att.userid }</td>
   						<td>${att.attdate }</td>
   						<td>
   						<c:if test="${att.attyn eq 'Y'}">
   						출석
   						</c:if>
   						<c:if test="${att.attyn eq 'N'}">
   						결석
   						</c:if>
   						</td>
   						<td>${att.percent}</td>   	   						
   						<td id="idx" style="display:none;">${att.idx }</td>
   					</tr>
   					<c:set var="i" value="${i-1 }"/>
   					</c:forEach>  	
   					<tr>
   						<td colspan="6" id="paging">
   						<c:set var="startpage" value="${(pageset.pagesetno-1)*pageset.pagesetsize+1 }"/>
   						<c:set var="endpage" value="${startpage + pageset.pagesetsize - 1}"/>
   						<c:if test="${endpage gt pageset.pagecount}">
   							<c:set var="endpage" value="${pageset.pagecount}"/>
   						</c:if>
   						<c:if test="${startpage gt pageset.pagesetsize}">
   							<a href="att.do?pagenum=${startpage-pageset.pagesetsize}">◀</a>&nbsp;
   						</c:if>
   						<c:forEach var="pageno" step="1" begin="${startpage }" end="${endpage }">
   						  <a href="att.do?pagenum=${pageno}">
   						  <c:if test="${pageno eq pageset.curpage}">
   						  <span style="color:blue;font-size:18px;">${pageno }</span>
   						  </c:if>
   						  <c:if test="${pageno ne pageset.curpage}">
   						  	${pageno }
   						  </c:if>
   						  </a>&nbsp;
   						</c:forEach>
   						<c:if test="${endpage lt pageset.pagecount}">
   							<a href="att.do?pagenum=${endpage+1}">▶</a>&nbsp;
   						</c:if>
   						</td>
   						<!-- ◀ 1 2 3 4 5 6 7 8 9 10 ▶-->
   					</tr>
   					</c:if>
   					<c:if test="${empty attList }">
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