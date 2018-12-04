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

conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>회원 가입</title>  

 </head> 
 <body>   
  	<form action = "login_check.jsp" method = "POST">  
    
  		ID: <input type = "text" name = "cID"><br></br>  
  		Password: <input type = "text" name = "password"><br></br>  
		
  		<input type = "submit" value="로그인"/>  
    
  	</form>  
  </body>  

</html>