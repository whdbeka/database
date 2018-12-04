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
  	<form action = "join.jsp" method = "POST">  
    
  		ID: <input type = "text" name = "cID"><br></br>  
  		Password: <input type = "password" name = "password"><br></br>  
  		이름: <input type = "text" name = "name"><br></br>
  		나이: <input type = "text" name = "age"><br></br>
  		성별: <input type = "checkbox" name = "sex" value = "male"/>male
			 <input type = "checkbox" name = "sex" value = "female"/>female
		직업: <input type = "text" name = "job"><br></br>
		광역시,도: <input type = "text" name = "city"><br></br>
		나머지주소:	 <input type = "text" name = "street"><br></br>
		번호: <input type = "text" name = "phone_no"><br></br>
		
  		<input type = "submit" value="회원가입"/>  
    
    
    
    
  	</form>  
  </body>  

</html>