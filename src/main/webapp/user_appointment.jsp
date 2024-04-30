<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Appointment</title>
<%@include file="component/all_css.jsp"%>


<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
.point-card:hover {
	background-color: #efebe9;
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/hos.jpg");
	height: 60vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body style="background-color: #efebe9;">
	<%@include file="component/navbar.jsp"%>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	
	<div class="container p-3">
	<div class="row">
	<div class="col-md-6 p-3">
	<img alt="" src="img/db2.jpg"  height="590px" width="100%">
	</div>
	
	
	<div class="col-md-6 p-3">
		<div class="card point-card">
			<div class="card-body">
				<p class="text-center fs-3" style="color:green">User Appointment</p>


				<c:if test="${ not empty succMsg }">
					<p class="text-center text-success fs-4">${succMsg }</p>
					<c:remove var="succMsg" scope="session" />
				</c:if>

				<c:if test="${ not empty failedMsg }">
					<p class="text-center text-danger fs-4">${failedMsg }</p>
					<c:remove var="failedMsg" scope="session" />
				</c:if>

				<form class="row g-3" action="add_appointment" method="post">

					<input type="hidden" name="userid" value="${userObj.id }">

					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Full Name</label><input
							required type="text" class="form-control" name="fullName">
					</div>

					<div class="col-md-6">
						<label>Gender</label><select class="form-control" name="gender"
							required>
							<option value="male">Male</option>
							<option value="female">Female</option>
						</select>
					</div>


					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Age</label><input
							required type="number" class="form-control" name="age">
					</div>


					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Appointment</label><input
							required type="date" class="form-control" name="appointDate">
					</div>


					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Email</label><input
							required type="email" class="form-control" name="email">
					</div>


					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Phone No</label><input
							required type="number" class="form-control" name="phone">
					</div>


					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Diseases</label><input
							required type="text" class="form-control" name="diseases">
					</div>


					<div class="col-md-6">
						<label for="inputPasswordclass4" class="form-label">Doctor</label><select
							class="form-control" name="doctorId" required>
							<option value="">----Select Doctor----</option>
							
							<%
							DoctorDao dao=new DoctorDao(DBConnect.getConn());
								List<Doctor>list=dao.getAllDoctor();
								for(Doctor d: list){%>
								<option value="<%=d.getId()%>"><%=d.getFullName() %>(<%=d.getSpecalist() %>)</option>
								<%}
							%>
							
							
							
						</select>
					</div>

					<div class="col-md-12">
						<label>Full Address</label>
						<textarea required name="address" class="form-control" rows="3"
							cols=""></textarea>
					</div>

					<c:if test="${empty userObj }">
						<a href="user_login.jsp"
							class="col-md-12 offSet-md-3 btn btn-success">Submit</a>
					</c:if>

					<c:if test="${not empty userObj }">
						<button class="col-md-12 offSet-md-3 btn btn-success">Submit</button>
					</c:if>
					
				</form>

			</div>
		</div>
	</div>
	</div>
	</div>
	

	<%@include file="../component/footer.jsp"%>
</body>
</html>