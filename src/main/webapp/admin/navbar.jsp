<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="../index.jsp"><i
			class="fa-solid fa-hospital"></i> Medi Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link active" href="doctor.jsp">Doctor</a></li>
				<li class="nav-item"><a class="nav-link active" href="view_doctor.jsp">View Doctors</a></li>
				<li class="nav-item"><a class="nav-link active" href="patient.jsp">Patient</a></li>

			</ul>

			<form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-success dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../admin_logout">Logout</a>
					</ul>
				</div>
			</form>
		</div>
	</div>
</nav>