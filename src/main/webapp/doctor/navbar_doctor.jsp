<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="doctor_index.jsp"><i class="fa-solid fa-hospital"></i> Medi Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="doctor_home.jsp"><i class="fa-solid fa-house-chimney"></i> Home</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="patient.jsp"><i class="fa-solid fa-hospital-user"></i>Patient</a>
					</li>
			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-success dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false"> <i class="fa-solid fa-circle-user"></i>  ${doctObj.fullName }</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="edit_profile.jsp">Edit</a>
						<li><a class="dropdown-item" href="../doctor_logout">Logout</a>
						
					</ul>
				</div>
			</form>
			</ul>

		</div>
	</div>
</nav>
