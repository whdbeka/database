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
String new_password = request.getParameter("new_password");


try{
	
	Class.forName("com.mysql.jdbc.Driver");

	ResultSet rs;
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

		String query = "update CUSTOMER set pass_word = \"" + new_password + "\"" +" WHERE ID = \"" + cID + "\"";
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
<h2>--비밀번호 수정 완료---</h2>


