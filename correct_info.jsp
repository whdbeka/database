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
<title>ȸ������ ����</title>  

 </head> 
 <body>   
  	<form action = "submit_info.jsp" method = "POST">  
  		������ ID: <input type = "text" name = "cID"><br></br>
		new_�̸�: <input type = "text" name = "new_name"><br></br>
  		new_����: <input type = "text" name = "new_age"><br></br>
  		new_����: <input type = "checkbox" name = "new_sex" value = "male"/>male
			 <input type = "checkbox" name = "new_sex" value = "female"/>female
		new_����: <input type = "text" name = "new_job"><br></br>
		new_������,��: <input type = "text" name = "new_city"><br></br>
		new_�������ּ�:	 <input type = "text" name = "new_street"><br></br>
		new_��ȭ��ȣ: <input type = "text" name = "new_phone_no"><br></br>
		
  		<input type = "submit" value="ȸ������ ����"/>  
    
  	</form>  
  </body>  

</html>
