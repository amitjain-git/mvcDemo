<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>My page</title>
  </head>  
  <body>
<c:if test="${not empty e}" >
		EmpId :${e.empId }
<br>
		Name : ${e.name}

<br>
		City : <c:out  value="${e.city}" default="Not Specified"></c:out>  

<br>
		Salary :${e.salary }
</c:if>
<c:if test="${empty e}">
No Data Found
</c:if>
<br>
<hr>
<br>
<a href="index.jsp">Home</a>
</body>
</html>
