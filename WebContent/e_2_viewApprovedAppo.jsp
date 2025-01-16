
<%@page import="java.sql.*"%>
<%@page import="com.r3sys.appointmentmanager_employee.*" %>
<%@page import="com.r3sys.dbconnection.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>RCPIT Book Appoint</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
table {
            paddding: 50px;
            width: 100%;
            border-collapse: collapse;
         
           
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
           
        }
        td {
            background-color: #f4f4f4;
        }
        th{
        	 background-color: #FF6969
        }
          .footer{
        margin-top:180px;
        }
 </style>
</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					
					<ul class="nav" id="side-menu">
						<li>
							<a href="welcomeEmployee.html"><i class="fa fa-home nav_icon"></i>Home</a>
						</li>
						<li>
							<a href="e_1_viewPendingAppo.jsp"><i class="fa fa-check-square-o nav_icon"></i>Pending Appointments</a>
						</li>
						<li>
							<a href="e_2_viewApprovedAppo.jsp"><i class="fa fa-check-square-o nav_icon"></i>Approved Appointments</a>
						</li>
						<li>
							<a href="e_3_viewDisapprovedAppo.jsp"><i class="fa fa-check-square-o nav_icon"></i>Disapproved Appointments</a>
						</li>
						<li>
							<a href="e_4_viewTodayApprovedAppo.jsp"><i class="fa fa-check-square-o nav_icon"></i>Today's Appointments</a>
						</li>
						<li>
							<a href="e_5_changePassword.jsp"><i class="fa fa-table nav_icon"></i>Change Password</a>
						</li>	
					
					</ul>
					<div class="clearfix"> </div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a >
						<h1>RCPIT</h1>
						<span>Book Appoint</span>
					</a>
				</div>
				<!--//logo-->
				
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				<div class="profile_details_left"><!--notifications of menu start -->
					
					
					
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/user.png" alt=""> </span> 
									<div class="user-name">
										<p>Welcome</p>
										<span>Staff</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="index.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<h3 class="title1">Approved Appointments</h3>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
<table>
		<%
		try
		{%>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Designation</th>
				<th>Department</th>
				<th>Company Name</th>
				<th>Contact No</th>
				<th>Address</th>
				<th>Purpose</th>
				<th>Description</th>
				<th>Purpose</th>
				<th>Date and Time</th>
				<th>Status</th>
			</tr>
			<% 
			int empId = GeterSeter_Employee.getEmpId();
			Connection con = DBConnection.dbCon();
			PreparedStatement ps = con.prepareStatement("select * from appointment where empId=? and status=?");	
			ps.setInt(1, empId);
			ps.setString(2, "Approve");
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{%>
				<tr>
				
					<td><%=rs.getInt(1)%></td>
					
					<td><%=rs.getString(4) %></td>
					
					<td><%=rs.getString(5) %></td>
					
					<td><%=rs.getString(6) %></td>
					
					<td><%=rs.getString(7) %></td>
					
					<td><%=rs.getString(8) %></td>
					
					<td><%=rs.getString(9) %></td>
					
					<td><%=rs.getString(10) %></td>
					
					<td><%=rs.getString(11) %></td>
					
					<td><%=rs.getString(14) %></td>
					
					<td>Date: <%=rs.getDate(12) %>, Time: <%=rs.getTime(13) %></td>
					
					<td><%=rs.getString(15) %></td>
				</tr>
			<% }
		}
		catch(Exception e)
		{
			e.printStackTrace();	
		}
		%>
	</table>
	</div>
	</div>
	</div>
	</div>
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2024 RCPIT Book Appoint. All Rights Reserved | Design by <a href="https://www.linkedin.com/in/chetan-pawar-a023a2240">Chetan Pawar</a></p>
		</div>        <!--//footer-->
	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js"> </script>
</body>
</html>