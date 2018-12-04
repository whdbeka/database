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
String name = request.getParameter("name");
String age = request.getParameter("age");
String sex = request.getParameter("sex");
String job = request.getParameter("job");
String city = request.getParameter("city");
String street = request.getParameter("street");
String phone_no = request.getParameter("phone_no");




//


try{
	
	Class.forName("com.mysql.jdbc.Driver");

	ResultSet rs;
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

	   String query = "INSERT INTO CUSTOMER (City,Street,Pass_word,Name,Membership,Id,Phone_no,Age,Sex,Job,Discount) VALUES (\"" + city + "\",\"" + street + "\",\"" + password + "\",\"" + name + "\",NULL,\"" + cID + "\",\"" + phone_no + "\",\"" + age + "\",\"" + sex+ "\",\"" + job + "\",NULL)";

	   PreparedStatement stat = conn.prepareStatement(query);
	   stat.executeUpdate();
	  
	   stat.close();
	   conn.close();
	  }
	  catch(Exception e){
	   out.println( e );
	  }
	%>
<h2>--가입 완료---</h2>


