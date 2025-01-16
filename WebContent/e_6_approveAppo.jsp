<%@page import="java.sql.*"%>
<%@page import="com.r3sys.dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RCPIT Book Appoint</title><title>Insert title here</title>
</head>
<body>
	<%
	try
	{
		int apoId= Integer.parseInt(request.getParameter("apoId"));
		Connection con = DBConnection.dbCon();
		PreparedStatement ps = con.prepareStatement("Update appointment set status=? where apoId=?");
		ps.setString(1, "Approve");
		ps.setInt(2, apoId);
		int i=ps.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("e_1_viewPendingAppo.jsp");
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
</body>
</html>