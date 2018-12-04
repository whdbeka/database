<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>

<%

Class.forName("com.mysql.jdbc.Driver");

Connection conn = null;
PreparedStatement psmt = null;


String jdbcDriver = "jdbc:mysql://localhost:3306/mysql?serverTimezone=UTC";

String dbUser = "root";
String dbPass = "0000";


request.setCharacterEncoding("utf-8");

String cID = request.getParameter("cID");
String password = request.getParameter("password");


%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>비밀번호 수정</title>  

 </head> 
 <body>   
  	<form action = "submit_password.jsp" method = "POST">  
      	기존의 id: <input type = "text" name = "cID"><br></br>  
  		new_password: <input type = "text" name = "new_password"><br></br>  
		
  		<input type = "submit" value="비밀번호 수정"/>  
    
  	</form>  
  </body>  

</html>
