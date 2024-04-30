<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-hospital"></i> Medi Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			
			

			<c:if test="${empty userObj }">
			
			<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="admin_login.jsp"><i class="fa-solid fa-right-to-bracket"></i>  Admin</a>
					
					
					</li>
					
					<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="docter_login.jsp"><i class="fa-solid fa-user-doctor"></i> Doctor</a>
					
					
					</li>
					<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="user_appointment.jsp"><i class="fa-solid fa-bed-pulse"></i> Appointment</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="user_login.jsp"><i class="fa-solid fa-hospital-user"></i> User</a>
					</li>
			
			
			</c:if>
			
			<c:if test="${not empty adminObj }">
<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="admin/index.jsp"><i class="fa-solid fa-house-user"></i> Admin Home</a>
					</li>

</c:if>
<c:if test="${ empty adminObj }">



				
			<c:if test="${not empty userObj }">
			<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="user_appointment.jsp"><i class="fa-solid fa-file-pen"></i> Appointment</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="all_docter.jsp"><i class="fa-solid fa-user-doctor"></i> All Doctor</a>
					
					
					</li>
					<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="view_appointment.jsp"><i class="fa-solid fa-file-circle-check"></i>View Appointment</a>
					</li>
			
			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-success dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false"> <i class="fa-solid fa-circle-user"></i>  ${userObj.fullName }</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="change_password.jsp">Change Password</a>
						<li><a class="dropdown-item" href="user_logout">Logout</a>
						
					</ul>
				</div>
			</form>
			
			</c:if>
			</c:if>
				
					
					
				
			</ul>

		</div>
	</div>
</nav>