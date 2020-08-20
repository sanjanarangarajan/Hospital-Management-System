
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<%@ page import="java.io.*,java.util.*,java.sql.*"%>
	
	
	<% 		Class.forName("oracle.jdbc.driver.OracleDriver");  
			  
			//step2 create  the connection object  
			Connection con=DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:xe","HR","hr");
			//step3 create the statement object  
			Statement stmt=con.createStatement();  
			  
			//step4 execute query  
			ResultSet rs=stmt.executeQuery("select * from donor");  
			while(rs.next())  
				/*
				 * <tr><td><%=rs.getInt(1)</td>
				 * <td><input type=text value=<%=rs.getString(2)</td>
				 */
			
			out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
			  
			//step5 close the connection object  
			con.close(); 
			%>
</body>
</html>