<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>emp.html</title>  
  <body>
  <h1 align="center">New Employee</h1>
  
    <form method="POST" action="add">
     <div align="center">
       <center>
       <font color="RED" size="6"> ${errMsg}</font>
       <table border="0" cellpadding="3" cellspacing="3" style="border-collapse: collapse" bordercolor="#111111" width="27%" id="AutoNumber1">
         <tr>
           <td width="50%">EmpId</td>
           <td width="50%"><input type="text" name="empId" size="20" value="${e.empId}" ></td>
         </tr>
         <tr>
           <td width="50%">Name</td>
           <td width="50%"><input type="text" name="name" size="20" value="${e.name}" ></td>
         </tr>
         <tr>
           <td width="50%">City</td>
           <td width="50%"><input type="text" name="city" size="20" value="${e.city}"></td>
         </tr>
         <tr>
           <td width="50%">Salary</td>
           <td width="50%"><input type="text" name="salary" size="20" value="${e.salary}"></td>
         </tr>
         <tr>
           <td width="50%"><input type="submit" value="Submit" name="B1"></td>
           <td width="50%">&nbsp;</td>
         </tr>
       </table>
       </center>
     </div>
     </form>

  <br>
<hr>
<br>
<a href="index.jsp">Home</a>
  </body>
</html>