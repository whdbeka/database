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
<title>회원정보 수정</title>  

 </head> 
 <body>   
  	<form action = "submit_info.jsp" method = "POST">  
  		기존의 ID: <input type = "text" name = "cID"><br></br>
		new_이름: <input type = "text" name = "new_name"><br></br>
  		new_나이: <input type = "text" name = "new_age"><br></br>
  		new_성별: <input type = "checkbox" name = "new_sex" value = "male"/>male
			 <input type = "checkbox" name = "new_sex" value = "female"/>female
		new_직업: <input type = "text" name = "new_job"><br></br>
		new_광역시,도: <input type = "text" name = "new_city"><br></br>
		new_나머지주소:	 <input type = "text" name = "new_street"><br></br>
		new_전화번호: <input type = "text" name = "new_phone_no"><br></br>
		
  		<input type = "submit" value="회원정보 수정"/>  
    
  	</form>  
  </body>  

</html>
