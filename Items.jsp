<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%@ page language="java" import="java.text.*, java.sql.*,jungdammarket.ItemDTO, jungdammarket.ItemMgr
 , java.util.ArrayList" %>
 <%@ page import = "jungdammarket.ItemDTO" %>

 <jsp:useBean id="ItemMgr" class="jungdammarket.ItemMgr" />
<html>
<head>
<meta charset="UTF-8">
<title>Item List</title>
</head>
<body>

<h2>JDM Market</h2>
 <jsp:include page="Top.jsp" />
<!-- < % @include file=   -->

<table style="width:90%">
	<Tr style="background-color: silver">
		<th>상품</th><th>가격</th><th>상세보기</th>
	</Tr>
<% 
ArrayList<ItemDTO> list = ItemMgr.getItemAll();
//ArrayList<ItemDTO> list = ItemMgr.getItems(request.getParameter(Cno));

	
for(ItemDTO d:list){
%>

<tr style="text-align: center;">
	<td><%=d.getItem_Name() %></td>
	<td><%=d.getPrice() %></td>
	<td><a href="ItemDetailPage.jsp?Ino=<%=d.getItem_no()%>">보기</a></td>
</tr>

<%
}
%>
</table>
<!-- < % @include file="guest_bottom.jsp" %> -->
</body>
</html>