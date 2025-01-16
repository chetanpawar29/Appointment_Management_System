package com.r3sys.appointmentmanager_admin;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.dbconnection.DBConnection;

/**
 * Servlet implementation class AddEmployee
 */
public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployee() {
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
			String empName = request.getParameter("empName");
			String empDesignation = request.getParameter("empDesignation");
			String empDep = request.getParameter("empDep");
			String empContact = request.getParameter("empContact");
			String empEmail = request.getParameter("empEmail");
			String empPass = request.getParameter("empPass");
			
			Connection con = DBConnection.dbCon();
			PreparedStatement ps = con.prepareStatement("insert into employee values(?,?,?,?,?,?,?)");
			ps.setInt(1, 0);
			ps.setString(2, empName);
			ps.setString(3, empDesignation);
			ps.setString(4, empDep);
			ps.setString(5, empContact);
			ps.setString(6, empEmail);
			ps.setString(7, empPass);
			int i=ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("welcomeAdmin.html");
			}
			else{
				response.sendRedirect("a_1_addEmployee.html");
			}
		}
	catch(Exception e)
	{
		
	}
	}

}
