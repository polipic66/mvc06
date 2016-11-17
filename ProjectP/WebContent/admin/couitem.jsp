<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>
		<c:if test="${null ne couitem.wcontent }">
			<div class="title">
				<c:if test="${null ne couitem.wtitle }">
				<div>
					<label class="label">질문 제목</label><span class="text">${couitem.wtitle }</span>
				</div>
				</c:if>
				<c:if test="${null ne couitem.wname }">
				<div>
					<label class="label">질문자</label><span class="text">${couitem.wname }</span>
				</div>
				</c:if>
				<c:if test="${null ne couitem.wid }"> 
				<div>
					<label class="label">질문자ID</label><span class="text">${couitem.wid }</span>
				</div>
				</c:if>
				<c:if test="${null ne couitem.wemail }">
				<div>
					<label class="label">질문자Email</label><span class="text">${couitem.wemail }</span>
				</div>
				</c:if>
				<c:if test="${null ne couitem.wtel }">
				<div>
					<label class="label">질문자 연락처</label><span class="text">${couitem.wtel }</span>
				</div>
				</c:if>
				<c:if test="${null ne couitem.wregdate }">
				<div>
					<label class="label">질문일시</label><span class="text">${couitem.wregdate }</span>
				</div>
				</c:if>
			</div>
		</c:if>
		</li>
		
		<li>
			<div class="content">
				<label class="label">질문내용</label>
				<div class="textarea"><c:if test="${null ne couitem.wcontent }">${couitem.wcontent }</c:if>
				<c:if test="${null eq couitem.wcontent }">질문내용이 없습니다</c:if>
				</div>
			</div>
		</li>
		<!-- li>
	   				<div class="date">
	   					<label class="label">질문일시</label><span class="text">2016-11-08</span>
	   				</div>
	   			   </li-->
	</ul>
</body>
</html>