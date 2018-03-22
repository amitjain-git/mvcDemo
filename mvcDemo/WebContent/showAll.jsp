<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>My JSP 'next.jsp' starting page</title>
  </head>  
  <body>   
<c:if test="${not empty elist}" >
<table border="1">
	<c:forEach var="e" items="${elist}" varStatus="s">
	<tr>
		<td>${s.count }</td>
		<td>${e.empId }</td>
		<td>${e.name}</td>
		<td> 
			<c:url value="search" var="u">
				<c:param name="empId" value="${e.empId}"></c:param>
			</c:url>
			<a href="${u}">detail</a> 
		</td>
</tr>
</c:forEach>
</table>
</c:if>
<c:if test="${empty elist}">
No Data Found
</c:if>

<br>
<hr>
<br>
<a href="index.jsp">Home</a>
</body>
</html>
