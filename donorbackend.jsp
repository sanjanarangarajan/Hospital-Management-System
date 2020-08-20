<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
String donor_s=request.getParameter("donor_id");
int donor_id=Integer.parseInt(donor_s);
String bank_s=request.getParameter("bank_id");
int bank_id=Integer.parseInt(bank_s);
String name=request.getParameter("name");
String age_s=request.getParameter("age");
int age=Integer.parseInt(age_s);
String donated ="02-jan-09";
String blood_type=request.getParameter("blood_type");
String blood_amount_s=request.getParameter("lc");
int blood_amount=Integer.parseInt(blood_amount_s); 


try
{
	

Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "HR", "hr");
Statement stmt=con.createStatement();

stmt.executeUpdate("insert into DONOR(DONOR_ID,BANK_ID,NAME,AGE,DONATED,BLOOD_TYPE, BLOOD_AMOUNT) values('"+donor_id+"','"+bank_id+"','"+name+"','"+age+"','"+donated+"', '"+blood_type+"', '"+blood_amount+"')");
con.close();
out.println("THANK YOU PURE SOUL");

/*PreparedStatement ps = conn.prepareStatement("insert into DONOR values(?, ?, ?, ?, ?, ?, ?)");
*ps.setString(1, donor_id);
*ps.setString(2, bank_id);
*ps.setString(3, name);
*ps.setString(4, age);
*ps.setString(5, donated);
*ps.setString(6, blood_type);
*ps.setString(7, blood_amount);
*/


}catch(Exception e)
{
	out.print(e);
}


%>