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




conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ī�װ��� ��ǰ ���� / ��й�ȣ ���� / ȸ������ ����</title>  

 </head> 
 <body>   
  	<form action = "category.jsp" method = "POST">    	
		
  		<input type = "submit" value="category">category
    
  	</form> 
  	<input type = "button" value="��й�ȣ ����" onclick="location.href='correct_pass.jsp'"/>correct_pass
  	<input type = "button" value="ȸ������ ����" onclick="location.href='correct_info.jsp'"/>correct_info
  	
  
  </body>  

</html>


