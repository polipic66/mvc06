<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="fproject.admin.model.AdvDto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리 > LMS 광고등록 페이지</title>
<link rel="stylesheet" href="admin/admincss/advertise.css">
</head>
<body>     
   <div id="ad">
   		<header id="adheader">
   			<h2>광고 등록</h2>
   		</header>    
   		<div id="adcontent">
   			<section id="insertAd">
   			<div id="addiv">
   			 <form method="post" name="frmAd" action="adinsert.do">
   				<div class="title">
   					<label class="label">제목</label>
   					<input type="text" value="제목을 입력하세요" id="title" name="title"/>
   				</div>
   				<div class="upload">
   					<label class="label">업로드</label>
   					<input type="file" id="upload" name="upload"/>
   				</div>
   				<div class="revdate">
   					<label class="label">예약일시</label>
   					<div class="revtime">
   						<div class="rev1">
   						<input type="text" id="year" name="year">년&nbsp;&nbsp;
   						<input type="text" id="month" name="month">월&nbsp;&nbsp;
   						<input type="text" id="day" name="day">일
   						</div>
   						<div class="rev2">
   						<input type="text" id="hour" name="hour">시&nbsp;&nbsp;
   						<input type="text" id="minute" name="minute">분&nbsp;&nbsp;
   						<input type="text" id="second" name="second">초
   						</div>
   					</div>
   				</div>			
   				<div class="regbutton">
   					<button>등록</button>
   				</div>
   				</form>
   			   </div>
   			</section>
   			<section id="list">
   				<table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호</th>
   						<th class="tblcol2">제목</th>
   						<th class="tblcol3">예약일시</th>
   						<th class="tblcol4">상태</th>
   						<th class="tblcol5">승인</th>
   					</tr>
   					<c:if test="${!empty advList }">
   					<tr class="tr">
   						<td>1</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>	
   					<tr class="tr">
   						<td>2</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>3</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>미승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>4</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>미승인</button></td>
   					</tr>
   					<tr class="tr">
   						<td>5</td>
   						<td></td>
   						<td></td>
   						<td></td>
   						<td><button>승인</button></td>
   					</tr>
   					<tr>
   						<td colspan="5" id="paging" style="align:center;"><!-- center>◀ 1 2 3 4 5 6 7 8 9 10 ▶</center--></td>
   					</tr>
   					</c:if>
   					<c:if test="${empty advList }">
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