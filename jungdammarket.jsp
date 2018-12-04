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
<title>welcome!</title>  

 </head> 
 <body>   
  	<form action = "login_insert.jsp" method = "POST">    	
		
  		<input type = "submit" value="login">
    
  	</form> 
  	<input type = "button" value="회원가입" onclick="location.href='join_insert.jsp'"/>
  
  </body>  

</html>


