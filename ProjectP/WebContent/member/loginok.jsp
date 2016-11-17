<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  		<%
        	String userid = (String)session.getAttribute("userid");	
  			String name = (String)session.getAttribute("name");	
        	if(userid==null)userid="학생";
        	if(name==null)name="군인";
        %>
		<%=userid%>(<%=name %>)님
            <br>
            환영합니다.
        <div id="login">
            </div>
        <div id="insert">
        <a href="update.do"><button>정보수정</button></a>
            </div>
        <div id="search">
        <a href="logout.do"><button>로그아웃</button></a>
        </div>
</body>
<script type="text/javascript">
//alert(<%=(String)session.getAttribute("count")%>);
var count = "<%=(String)session.getAttribute("count")%>";
if(<%=(String)session.getAttribute("count")%>){
	//alert(count);
    parent.location.reload();
}else{
	//alert('false');
}
</script>
</html>
<%session.setAttribute("count",null); %>
