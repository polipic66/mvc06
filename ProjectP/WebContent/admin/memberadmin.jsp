<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admin/admincss/adminmember.css">
<script type="text/javascript">
  //$(document).ready(function(){
	  	
  //});
</script>
</head>
<body>
	<table id="tbl1">
		<tr id="th">
			<th class="tblcol1">번호</th>
			<th class="tblcol2">이름</th>
			<th class="tblcol3">아이디</th>
			<th class="tblcol4">직책</th>
			<th class="tblcol5">연락처</th>
			<th class="tblcol6">상태</th>
			<th class="tblcol6" style="display:none;">상태</th>
			<th class="tblcol7">승인</th>
		</tr>
				<c:if test="${!empty memList}">
   					<c:set var="i" value="${pageset.total-(pageset.curpage-1)*pageset.pagesize }"/>
   					<c:forEach items="${memList}" var="mem">
   					<tr class="tr">
   						<td>${i}</td>
   						<td>${mem.name }</td>
   						<td>${mem.userid }</td>
   						<td>${mem.position }</td>
   						<td>${mem.phone }</td>
   						<td>
						<c:if test="${mem.permit eq 'Y'}">
   						승인
   						</c:if>
   						<c:if test="${mem.permit eq 'N'}">
   						미승인
   						</c:if>
   						</td>   	   						
   						<td id="userididx" style="display:none;">${mem.userid }</td>
   						<td>
   						<c:if test="${mem.permit eq 'Y'}">
   							<button id="permitN"><span id="curpg" style="display:none;">${pageset.curpage}</span>미승인<span id="userididx" style="display:none;">${mem.userid }</span></button>
   						</c:if>
   						<c:if test="${mem.permit eq 'N'}">
   							<button id="permitY"><span id="curpg" style="display:none;">${pageset.curpage}</span>승인<span id="userididx" style="display:none;">${mem.userid }</span></button>
   						</c:if>
   						</td>
   					</tr>
   					<c:set var="i" value="${i-1 }"/>
   					</c:forEach>  	
   					<tr>
   						<td colspan="8" id="paging">
   						<c:set var="startpage" value="${(pageset.pagesetno-1)*pageset.pagesetsize+1 }"/>
   						<c:set var="endpage" value="${startpage + pageset.pagesetsize - 1}"/>
   						<c:if test="${endpage gt pageset.pagecount}">
   							<c:set var="endpage" value="${pageset.pagecount}"/>
   						</c:if>
   						<c:if test="${startpage gt pageset.pagesetsize}">
   							<!-- a href="adminmain.do?mode=tab1&pagenum=${startpage-pageset.pagesetsize}"--><a><span id="pno" style="display:none;">${startpage-pageset.pagesetsize}</span>◀</a><!-- /a-->&nbsp;
   						</c:if>
   						<c:forEach var="pageno" step="1" begin="${startpage }" end="${endpage }">
   						  
   						  <c:if test="${pageno eq pageset.curpage}">
   						  <span style="color:blue;font-size:18px;">${pageno }</span>
   						  </c:if>
   						  <a>
   						  <!-- a href="adminmain.do?mode=tab1&pagenum=${pageno}"-->
   						  <c:if test="${pageno ne pageset.curpage}">
   						  	<span id="pno">${pageno }</span>
   						  </c:if>
   						  </a>
   						  <!-- /a-->&nbsp;
   						</c:forEach>
   						<c:if test="${endpage lt pageset.pagecount}">
   							<!-- a href="adminmain.do?mode=tab1&pagenum=${endpage+1}"--><a><span id="pno" style="display:none;">${endpage+1}</span>▶</a><!-- /a-->&nbsp;
   						</c:if>
   						</td>
   						<!-- ◀ 1 2 3 4 5 6 7 8 9 10 ▶-->
   					</tr>
   					</c:if>
   					<c:if test="${empty memList }">
   					<tr id="nodata">
   						<td colspan="8" style="align:center;">데이터가 없습니다</td>
   					</tr>
   					</c:if>
   				</table>
</body>
</html>