package com.r3sys.appointmentmanager_user;

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
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
			String userEmail = request.getParameter("userEmail");
			String userPass = request.getParameter("userPass");
			
			Connection con = DBConnection.dbCon();
			
			PreparedStatement ps = con.prepareStatement("select * from user where userEmail=? and userPass=?");
			ps.setString(1, userEmail);
			ps.setString(2, userPass);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				response.sendRedirect("welcomeUser.html");
				GeterSeter_User.setUserId(rs.getInt(1));
				
			}else{
				response.sendRedirect("userLogin.html");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
