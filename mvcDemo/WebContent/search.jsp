<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
   <title>'search.jsp'</title>    
  </head>  
  <body>
    <p align="center"><font size="6">Search Page</font></p>
    <p align="center">&nbsp;</p>
    <form method="POST" action="search">

   
 	<font color="RED" size="5"><p align="center"> ${errMsg}</p></font>
       <p align="center"> Enter Employee Id <input type="text" name="empId" size="20"></p>
      <p align="center"><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
    </form>
<br>
<hr>
<br>
<a href="index.jsp">Home</a>
  </body>
</html>