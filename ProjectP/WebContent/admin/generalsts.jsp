<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리 > LMS 총괄통계 페이지</title>
<link rel="stylesheet" href="admin/admincss/advertise.css">
</head>
<body>     
   <div id="ad">
   		<header id="adheader">
   			<h2>총괄 통계 </h2>
   		</header>    
   		<div id="adcontent">
   			<section id="insertAd">
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
   			</section>
   			<section id="list1">
   				<table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호</th>
   						<th class="tblcol2">제목</th>
   						<th class="tblcol3">예약일시</th>
   						<th class="tblcol4">상태</th>
   						<th class="tblcol5">승인</th>
   					</tr>
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
   				</table>
   			</section>
   			<section id="list2">
   				<table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호</th>
   						<th class="tblcol2">제목</th>
   						<th class="tblcol3">예약일시</th>
   						<th class="tblcol4">상태</th>
   						<th class="tblcol5">승인</th>
   					</tr>
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
   						<td colspan="5" id="paging" style="align:center"><!-- center>◀ 1 2 3 4 5 6 7 8 9 10 ▶</center--></td>
   					</tr>
   				</table>
   			</section>
   			<section id="list3">
   				<table id="tbl">
   					<tr id="th">
   						<th class="tblcol1">번호</th>
   						<th class="tblcol2">제목</th>
   						<th class="tblcol3">예약일시</th>
   						<th class="tblcol4">상태</th>
   						<th class="tblcol5">승인</th>
   					</tr>
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
   				</table>
   			</section>
   		</div>
           
    </div>
</body>
</html>