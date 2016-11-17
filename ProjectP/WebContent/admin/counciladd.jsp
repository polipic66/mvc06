<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String msg = (String)request.getAttribute("msg"); %>
<%  String userid = (String)session.getAttribute("userid"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리 > LMS 상담 페이지</title>
<link rel="stylesheet" href="admin/admincss/counciladd.css">
<%if(msg!=null && !"".equals(msg)){ %>
<style type="text/css">
	#insertAd #msg{
	display:inline-block;
	align: center;
	width: 100%;
	margin: 10px auto;
	text-align: center;
	height: 50px;
	border-radius: 12px;
	border-color: 3px solid #97D077;
	background-color: #EA6B66;
	color: white;
	font: bold 18px 맑은 고딕;
	padding-top:19px;
	padding-bottom:0px;
   }
</style>
<%} %>
<script type="text/javascript">
    $(document).ready(function(){
    	$("#edit1").on("click",function(){
    		//alert('edit1');
    		$("#wname").attr("readonly",false);
    		$("#wname").css("background-color","white");
    		return false;
    	});
    	$("#edit2").on("click",function(){
    		//alert('edit2');
    		$("#wtel").attr("readonly",false);
    		$("#wtel").css("background-color","white");
    		return false;
    	});
    	$("#edit3").on("click",function(){
    		//alert('edit3');
    		$("#wemail").attr("readonly",false);
    		$("#wemail").css("background-color","white");
    		return false;
    	});
    });
</script>
</head>
<body>    
<form name="couinsert" id="couinsert" action="couinsert.do" method="post">
   <div id="ad">
   		<header id="adheader">
   			<h2>1:1문의신청</h2>
   			<c:if test="${empty sessionScope.userid}">
   			<h3 style="text-align:center;padding-bottom:6px;">비회원</h3>
   			</c:if>
   			<c:if test="${!empty sessionScope.userid}">
   			<h3 style="text-align:center;padding-bottom:6px;">회원(ID:${sessionScope.userid})</h3>
   			</c:if>
   		</header>    
   		<div id="adcontent">
   			<section id="insertAd">
   				<div id="msg"><%=msg %></div>
   			 	<ul>
   			 	<li>
   				<div class="wtitle">
   					<label class="label">제목</label>
   					<input type="text" value="${cou.wtitle }" id="wtitle" name="wtitle"/>
   				</div>
   				</li>
   				<li>
   				<div class="wname">
   					<label class="label">이름</label>
   					<c:if test="${empty sessionScope.name}">
   						<input type="text" id="wname" name="wname" value="${cou.wname }"/>
   					</c:if>
   					<c:if test="${!empty sessionScope.name}">
   					<c:if test="${empty cou.wname}">
   						<input type="text" id="wname" name="wname" value="${sessionScope.name }" style="background-color:#E6E6E6;border:1px solid gray;" readonly/>
   						<button id="edit1" style="cursor:hand;cursor:pointer;padding:10px;border-radius:4px;border:1px solid brown;background-color:#7EA6E0;color:white;">edit</button>
   					</c:if>
   					<c:if test="${!empty cou.wname}">
   						<input type="text" id="wname" name="wname" value="${cou.wname }"/>
   					</c:if>
   					</c:if>
   				</div>
   				</li>
   				<li>
   				<div class="wtel">
   					<label class="label">전화번호</label>
   					<c:if test="${empty sessionScope.phone}">
   						<input type="text" id="wtel" name="wtel" value="${cou.wtel }"/>
   					</c:if>
   					<c:if test="${!empty sessionScope.phone}">
   					<c:if test="${empty cou.wtel}">
   						<input type="text" id="wtel" name="wtel" value="${sessionScope.phone }" style="background-color:#E6E6E6;border:1px solid gray;" readonly/>
   						<button id="edit2" style="cursor:hand;cursor:pointer;padding:10px;border-radius:4px;border:1px solid brown;background-color:#7EA6E0;color:white;">edit</button>
   					</c:if>
   					<c:if test="${!empty cou.wtel}">
   						<input type="text" id="wtel" name="wtel" value="${cou.wtel }"/>
   					</c:if>
   					</c:if>
   				</div>
   				</li>
   				<li>
   				<div class="wemail">
   					<label class="label">이메일</label>
   					<c:if test="${empty sessionScope.email}">
   						<input type="text" id="wemail" name="wemail" value="${cou.wemail }"/>
   					</c:if>
   					<c:if test="${!empty sessionScope.email}">
   					<c:if test="${empty cou.wemail}">
   						<input type="text" id="wemail" name="wemail" value="${sessionScope.email }" style="background-color:#E6E6E6;border:1px solid gray;" readonly/>
   						<button id="edit3" style="cursor:hand;cursor:pointer;padding:10px;border-radius:4px;border:1px solid brown;background-color:#7EA6E0;color:white;">edit</button>
   					</c:if>
   					<c:if test="${!empty cou.wemail}">
   						<input type="text" id="wemail" name="wemail" value="${cou.wemail }"/>
   					</c:if>
   					</c:if>
   				</div>
   				<hr/>
   				</li>
   				<li>
   				<div id="wcnt">
   					<label class="label">질문내용</label>
   				  <div id="wcntsub">
   					<textarea id="wcontent" name="wcontent" cols="45" rows="5">${cou.wcontent }</textarea>
   				  </div>	
   				</div>	
   				</li>
   				<li>		
   				<div class="regbutton">
   					<button type="submit">질문하기</button>
   					<button type="reset">취소</button>
   				</div>
   				</li>
   				</ul>
   			</section>
   		</div>
    </div>
</form>
</body>
</html>