package com.r3sys.appointmentmanager_user;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.r3sys.dbconnection.DBConnection;


/**
 * Servlet implementation class UserSignUp
 */
public class UserSignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserSignUp() {
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
		try{
			String userName = request.getParameter("userName");
			String userDesignation = request.getParameter("userDesignation");
			String userDep = request.getParameter("userDep");
			String companyName = request.getParameter("companyName");
			String userContact = request.getParameter("userContact");
			String userAddress = request.getParameter("userAddress");
			String userEmail = request.getParameter("userEmail");
			String userPass = request.getParameter("userPass");
			
			Connection con = DBConnection.dbCon();
			PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, 0);
			ps.setString(2, userName);
			ps.setString(3, userDesignation);
			ps.setString(4, userDep);
			ps.setString(5, companyName);
			ps.setString(6, userContact);
			ps.setString(7, userAddress);
			ps.setString(8, userEmail);
			ps.setString(9, userPass);

			int i = ps.executeUpdate();
			
			if(i>0)
			{
				response.sendRedirect("welcomeUser.html");
				
			}else{
				response.sendRedirect("userSignUp.html");
			}
	
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
