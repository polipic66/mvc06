<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>중복확인</title>
  
  <script type="text/javascript">
  
  function sayong(ID){
   opener.f1.idin.value = ID;
   opener.f1.name.focus();
   opener.f1.idin.readOnly = true;
   self.close();
  }
  
  function space(){
   if (event.keyCode==32){
    event.returnValue=false;
   }
  }
  
  function idcheck(){
   if (document.idcheck1.ID.value.length<4){
    window.alert("아이디를 4글자 이상 입력해주세요.");
    document.jbcheck.checkid.focus();
    return true;
   }else{
	   document.idcheck1.submit();
   }
  }
    
  
  </script>
  
  </head>

  <body>

  <form name="idcheck1" action="idcheck.jsp">
  
  <%
  	Connection conn=null;
	PreparedStatement pstmt;
	ResultSet rs;  
  	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	
	String tmp = request.getParameter("ID");
	
  	String sql = "select count(*) as imsi from member Where userid=?";
	int count=0;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, tmp);
		rs = pstmt.executeQuery();
		if(rs.next()){
			count = rs.getInt("imsi");
		}
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	if(count==0){	
  %>

    <!-- table onselcetstart="return false" style="margin:0 auto;align:center;border:none;"-->
    <table style="margin:0 auto;align:center;border:none;">
     <tr>
      <td style="align:center;"><%=tmp %></td>
     </tr>
     <tr>
      <td>사용 가능한 아이디입니다.</td>
     </tr>
    </table>
    <input type="button" name="sayongid" onclick="sayong('<%=tmp %>');" value='사용하기'>
 

  <%
	}else{
  %>
  
    <!--  table onselectstart="return false" style="margin:0 auto;align:center;border:none;"-->
    <table style="margin:0 auto;align:center;border:none;">
     <tr>
      <td style="align:center;"><input type=text name="ID" size=20 onkeypress="space();" value="<%=tmp %>"/></td>
     </tr>
     <tr>
      <td><font color=red>이미 사용중인 아이디입니다.</font></td>
     </tr>
     <tr>
      <td>다른 아이디를 입력해주세요.</td>
     </tr>
    </table>
    <input type="button" name="dasiid" onclick="idcheck('<%=tmp %>');" value='중복체크'/>
   <%
	}
   %>
  </form>
	
  </body>
</html>