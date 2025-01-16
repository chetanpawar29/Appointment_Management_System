package com.r3sys.appointmentmanager_employee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.dbconnection.DBConnection;

/**
 * Servlet implementation class Employee_Login
 */
public class Employee_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employee_Login() {
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
			String empEmail = request.getParameter("empEmail");
			String empPass = request.getParameter("empPass");
			
			Connection con = DBConnection.dbCon();
			
			PreparedStatement ps = con.prepareStatement("select * from employee where empEmail=? and empPass=?");
			ps.setString(1, empEmail);
			ps.setString(2, empPass);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				response.sendRedirect("welcomeEmployee.html");
				GeterSeter_Employee.setEmpId(rs.getInt(1));
				
			}else{
				response.sendRedirect("employeeLogin.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
