<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admin/admincss/adminlecapp.css">
</head>
<body>
	<table id="tbl3">
		<tr id="th">
			<th class="tblcol1">번호</th>
			<th class="tblcol2">학생명</th>
			<th class="tblcol3">커리큘럼명</th>
			<th class="tblcol4">상태</th>
			<th class="tblcol5">승인</th>
		</tr>
		<c:if test="${!empty lecappList}">
		<c:set var="i" value="${pageset.total-(pageset.curpage-1)*pageset.pagesize }"/>
		<c:forEach items="${lecappList}" var="lecapp">
		<tr class="tr">
			<td>${i}</td>
			<!-- td>${lecapp.name }</td-->
			<td>${lecapp.name }(${lecapp.userid })</td>
			<td>${lecapp.currtitle }</td>
			<!-- td>${lecapp.appdate }</td-->
			<td>
			<c:if test="${lecapp.permit eq 'Y'}">
			승인
			</c:if>
			<c:if test="${lecapp.permit eq 'N'}">
			미승인
			</c:if>
			</td>   	   						
			<td id="lecappidx" style="display:none;">${lecapp.appidx }</td>
			<td style="text-align:center;">
			  <!-- button id="contentView">내용보기<span style="display:none">아이디${lec.lecid }</span></button-->
			<c:if test="${lec.open eq 'Y'}">
   			     <button id="permitNlecapp"><span id="curpg" style="display:none;">${pageset.curpage}</span>미승인<span id="userididx" style="display:none;">${lecapp.appidx }</span></button>
   			</c:if>
   			<c:if test="${lec.open eq 'N'}">
   				 <button id="permitYlecapp"><span id="curpg" style="display:none;">${pageset.curpage}</span>승인<span id="userididx" style="display:none;">${lecapp.appidx }</span></button>
   			</c:if>
			<!-- button id="permit">내용/승인</button-->
			</td>
		</tr>
		<!-- tr>
		<td colspan="7" id="trViewApp${lec.lecid }" style="display:none;">
			<div style="width:98%;margin:3px auto;position:relative;height:90px;border:none;">
		  		<div style="border-radius:5px;text-align:center;padding:0px;background-color:#cccccc;"><span style="font-size:bold 14px 맑은 고딕;">강의제목</span>&nbsp;${lec.title }</div>
		  		<div style="border-radius:5px;text-align:left;vertical-align:top;padding-top:0px;height:60px;overflow-y:auto;">${lec.content }</div>
	    	</div>
		</td>
		</tr-->
		<c:set var="i" value="${i-1 }"/>
		</c:forEach>  	
		<tr>
			<td colspan="5" id="paging">
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
		<c:if test="${empty lecappList }">
		<tr id="nodata">
			<td colspan="5" style="align:center;">데이터가 없습니다</td>
		</tr>
		</c:if>
	</table>
</body>
</html>