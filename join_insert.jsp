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
<title>ȸ�� ����</title>  

 </head> 
 <body>   
  	<form action = "join.jsp" method = "POST">  
    
  		ID: <input type = "text" name = "cID"><br></br>  
  		Password: <input type = "password" name = "password"><br></br>  
  		�̸�: <input type = "text" name = "name"><br></br>
  		����: <input type = "text" name = "age"><br></br>
  		����: <input type = "checkbox" name = "sex" value = "male"/>male
			 <input type = "checkbox" name = "sex" value = "female"/>female
		����: <input type = "text" name = "job"><br></br>
		������,��: <input type = "text" name = "city"><br></br>
		�������ּ�:	 <input type = "text" name = "street"><br></br>
		��ȣ: <input type = "text" name = "phone_no"><br></br>
		
  		<input type = "submit" value="ȸ������"/>  
    
    
    
    
  	</form>  
  </body>  

</html>