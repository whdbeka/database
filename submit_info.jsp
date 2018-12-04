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
String cID =  request.getParameter("cID");
String new_name = request.getParameter("new_name");
String new_age = request.getParameter("new_age");
String new_sex = request.getParameter("new_sex");
String new_job = request.getParameter("new_job");
String new_city = request.getParameter("new_city");
String new_street = request.getParameter("new_street");
String new_phone_no = request.getParameter("new_phone_no");


try{
	
	Class.forName("com.mysql.jdbc.Driver");

	ResultSet rs;
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

		  String query = "UPDATE CUSTOMER SET City = \"" + new_city + "\", Street = \"" + new_street + "\", Name = \"" + new_name + "\", Phone_no = \"" + new_phone_no + "\", Age = \"" + new_age + "\", Sex = \"" + new_sex + "\", Job = \"" + new_job + "\" WHERE Id = \"" + cID + "\";";
		
		//System.out.println(query);
	   PreparedStatement stat = conn.prepareStatement(query);
	   stat.executeUpdate();
	  
	   stat.close();
	   conn.close();
	  }
	  catch(Exception e){
	   out.println( e );
	  }
	%>
<h2>--회원정보 수정 완료---</h2>


