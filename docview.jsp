<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        	<%@ page import="java.io.*,java.util.*,java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
  <th>DOCTOR DETAILS</th>
  <tr><td>DOCTOR NAME:</td><td>AGE</td><td>EXPERIENCE</td><td>DESIGNATION</td><td>SPECIALISATION</td><td>AGE</td>COLLEGE</tr>
  <%
 Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HR","hr");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("select * from DOCTOR");
  
  while(rs.next()){
     %>
    
    <tr><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td><td><%= rs.getString(4)%></td><td><%= rs.getString(6)%></td><td><%= rs.getString(7)%></td><td><%= rs.getString(8)%></td></tr>
  <%
    }
  %>
  </table>

</body>
</html>