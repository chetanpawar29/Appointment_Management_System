<%@page import="com.r3sys.dbconnection.DBConnection"%>
<%@page import="com.r3sys.appointmentmanager_user.*" %>
<%@page import="java.sql.*" %>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


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
	.logo a h1 i{
	color:red;
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
							<a href="welcomeUser.html"><i class="fa fa-home nav_icon"></i>Home</a>
						</li>
						<li>
							<a href="u_1_viewEmployee.jsp"><i class="fa fa-check-square-o nav_icon"></i>View Staff</a>
						</li>
						<li>
							<a href="u_2_bookAppointment.jsp"><i class="fa fa-check-square-o nav_icon"></i>Book Appointment</a>
						</li>
						<li>
							<a href="u_3_viewStatusofdAppo.jsp"><i class="fa fa-check-square-o nav_icon"></i>Status of Appointment</a>
						</li>
						<li>
							<a href="u_4_viewTodayApprovedAppo.jsp"><i class="fa fa-check-square-o nav_icon"></i>Today's Appointments</a>
						</li>
						<li>
							<a href="u_5_changePassword.jsp"><i class="fa fa-table nav_icon"></i>Change Password</a>
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
										<span>Client</span>
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
					<h3 class="title1">Book Appointment</h3>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
						<div class="form-title">
							<h4>Enter Following Details :</h4>
						</div>
						<div class="form-body">
							<form action="u_6_bookAppointment.jsp" method="post"> 
								<div class="form-group"> 
									<label for="exampleInputEmail1">Staff Id</label> 
									<input type="text" name="empId" class="form-control" id="exampleInputEmail1" placeholder="Enter Staff Id"> 
								</div>
								<div class="form-group"> 
									<label for="exampleInputEmail1">Purpose</label> 
									<input type="text" name="purpose" class="form-control" id="exampleInputEmail1" placeholder="Enter Purpose"> 
								</div>
								
								<div class="form-group"> 
									<label for="exampleInputEmail1">Description</label> 
									<input type="text" name="description" class="form-control" id="exampleInputEmail1" placeholder="Enter Discription"> 
								</div>
								
								<div class="form-group"> 
									<label for="exampleInputEmail1">Date</label> 
									<input type="date" name="date" class="form-control" id="exampleInputEmail1" placeholder="Enter Date"> 
								</div> 
								<div class="form-group"> 
									<label for="exampleInputEmail1">Time</label> 
									<input type="time" name="time" class="form-control" id="exampleInputEmail1" placeholder="Enter Time"> 
								</div> 
								
								
							<button type="submit" class="btn btn-default">Book</button> 
							</form> 
						</div>
					</div>
				</div>
			</div>
		</div>
		<%
	try
	{
		int empId = Integer.parseInt(request.getParameter("empId"));
		 String purpose = request.getParameter("purpose");
		 String description = request.getParameter("description");
		 String date = request.getParameter("date");
		 String time = request.getParameter("time");
		 
		 
		 int userId= GeterSeter_User.getUserId();
		 Connection con = DBConnection.dbCon();
		 PreparedStatement ps = con.prepareStatement("select * from user where userId=?");
		 ps.setInt(1, userId);
		 ResultSet rs = ps.executeQuery();
		 
		 
		 if(rs.next())
		 {
		 	
			 String userName= rs.getString(2);
			 String userDesignation= rs.getString(3);
			 String userDep= rs.getString(4);
			 String companyName= rs.getString(5);
			 String userContact= rs.getString(6);
			 String userAddress= rs.getString(7);
			 String userEmail= rs.getString(8);
		
		 
			 PreparedStatement ps1 = con.prepareStatement("insert into appointment values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			 ps1.setInt(1, 0);
			 ps1.setInt(2, empId);
			 ps1.setInt(3,userId);
			 ps1.setString(4, userName);
			 ps1.setString(5, userDesignation);
			 ps1.setString(6, userDep);
			 ps1.setString(7, companyName);
			 ps1.setString(8, userContact);
			 ps1.setString(9, userAddress);
			 ps1.setString(10, purpose);
			 ps1.setString(11, description);
			 ps1.setString(12, date);
			 ps1.setString(13, time);
			 ps1.setString(14, userEmail);
			 ps1.setString(15, "Pending");
		 
		 }else{
			 
			 response.sendRedirect("u_1_viewEmployee.jsp");
		 }
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
		<div class="footer">
		   <p>&copy; 2024 RCPIT Book Appoint. All Rights Reserved | Design by <a href="https://www.linkedin.com/in/chetan-pawar-a023a2240">Chetan Pawar</a></p>
		</div>
        <!--//footer-->
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