package com.r3sys.appointmentmanager_admin;

import java.io.IOException;
import java.sql.*;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.dbconnection.DBConnection;


/**
 * Servlet implementation class AdminLogin
 */
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try
		{
			String aemail = request.getParameter("aemail");
			String apass = request.getParameter("apass");
			
			Connection con = DBConnection.dbCon();
			
			PreparedStatement ps = con.prepareStatement("select * from admin where aemail=? and apass=?");
			ps.setString(1, aemail);
			ps.setString(2, apass);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				response.sendRedirect("welcomeAdmin.html");
				
				
			}else{
				response.sendRedirect("adminLogin.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
