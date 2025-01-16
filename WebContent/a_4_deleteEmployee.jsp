<%@page import="java.sql.*"%>
<%@page import="com.r3sys.dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RCPIT Book Appoint</title>
</head>
<body>
	<%
	try
	{
		int empId= Integer.parseInt(request.getParameter("empId"));
		Connection con = DBConnection.dbCon();
		PreparedStatement ps = con.prepareStatement("Delete from employee where empId=?");
		ps.setInt(1, empId);
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("a_2_viewEmployees.jsp");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
</body>
</html>