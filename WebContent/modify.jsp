<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.guenther.hibexample.DAO"%>  
<%@ page import="com.guenther.hibexample.Product"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Hibernate Example: Category Listing</h1>

<table>
<%  
String cat = request.getParameter("category");
List<Product> products = DAO.getProductsByCategory(cat); 

for (Product p: products) {
	out.println ("<tr><td>" + p.getId() + "</td><td>" +
		p.getName() + "</td><td><a href=\"modify.jsp?category=" + p.getCategory() + "\">"+ p.getCategory() +"</a>" 
		+ "</td><td>" + p.getPrice() + "</td>" + "<td><a href=\"delete.jsp?id=" + p. getId() + "\">Delete</a>"+ "</td></tr>");
}
%>  
</table>
</body>
</html>