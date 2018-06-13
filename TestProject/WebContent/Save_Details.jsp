<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<%
String WDS_Number=request.getParameter("ID");
String Name=request.getParameter("Name");
String payrollID=request.getParameter("payrollID");
String CostCenter=request.getParameter("CostCenter");
String Department=request.getParameter("Department");
String AddressLine1=request.getParameter("AddressLine1");
String AddressLine2=request.getParameter("AddressLine2");
String Suburb=request.getParameter("Suburb");
String State=request.getParameter("State");
String PostCode=request.getParameter("PostCode");
String HostOPIN=request.getParameter("HostOPIN");
String RegisteredDevice=request.getParameter("RegisteredDevice");
String Notes=request.getParameter("Notes");

try
{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into Employee(ID,Name,payrollID,CostCenter,Department,AddressLine1,AddressLine2,Suburb,State,PostCode,HostOPIN,RegisteredDevice,Notes)values('"+WDS_Number+"','"+Name+"','"+payrollID+"','"+CostCenter+"','"+Department+"','"+AddressLine1+"','"+AddressLine2+"','"+Suburb+"','"+State+"','"+PostCode+"','"+HostOPIN+"','"+RegisteredDevice+"','"+Notes+"','"+CostCenter+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>