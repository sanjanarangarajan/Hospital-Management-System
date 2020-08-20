
//javax.servlet.http.HTTPServlet not found in buildpath error 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<% 
String ds=request.getParameter("doc");
int d=Integer.parseInt(ds);
String dna=request.getParameter("dn");
String da_s=request.getParameter("da");
int da=Integer.parseInt(da_s);
String de_s=request.getParameter("de");
int de=Integer.parseInt(de_s);
String p_s=request.getParameter("phone_no");
int p=Integer.parseInt(p_s);
String ded=request.getParameter("ded");
String des=request.getParameter("des");
String dc=request.getParameter("dc");
String dem=request.getParameter("dem");
String dad=request.getParameter("dad");
String dbn=request.getParameter("dbn");
String dac_s=request.getParameter("dac");
int dac=Integer.parseInt(dac_s);
String dep=request.getParameter("dep");
String dst=request.getParameter("dst");
String dest=request.getParameter("dest");
String dpd=request.getParameter("dpd");
//String s=request.getParameter("sal");
String sals=request.getParameter("sal");
int sal=Integer.parseInt(sals);
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");  
			  
			//step2 create  the connection object  
			Connection con=DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:xe","HR","hr");
			//step3 create the statement object  
			Statement stmt=con.createStatement();  
			  stmt.executeUpdate("insert into EMPLOYEE(EMP_NAME,DESIGNATION,MOBILE_NO,EMAIL,ADDRESS,DEPARTMENT,SHIFT_TIME,SALARY,ACC_NO,BANK,DOC_PASSWORD,SHIFT_END)VALUES('"+dna+"','"+des+"','"+p+"','"+dem+"','"+dad+"','"+dep+"','"+dst+"','"+sal+"','"+dac+"','"+dbn+"','"+dpd+"','"+dest+"')"); 
			  stmt.executeUpdate("insert into DOCTOR(DID,DOCNAME,AGE,EXP,DEPID,DESIGNATION,SPECIALIZATION,COLLEGE,SHIFT_END)VALUES('"+d+"','"+dna+"','"+da+"','"+de+"','"+dep+"','"+ded+"','"+des+"','"+dc+"','"+dest+"')"); 

			  con.close();
  out.println("GET WELL SOON,YOU ARE IN SAFE HANDS");


}
catch(Exception e)
{
	out.print(e);
}


%>