<%@page import="com.entity.Doctor"%>
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
<title>Doctor Home</title>
<%@include file="allcss_doctor.jsp"%>


<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}

.point-card:hover {
	background-color: #b2ebf2;
}
</style>
</head>
<body style="background-color: #e8f5e9;">
<%@include file="navbar_doctor.jsp"%>
	<c:if test="${empty doctObj }">
		<c:redirect url="../docter_login.jsp"></c:redirect>
	</c:if>
	
	<p class="text-center fs-3 text-green" >Doctor Dashbord</p>

<%
  Doctor d=(Doctor)session.getAttribute("doctObj");
DoctorDao dao=new DoctorDao(DBConnect.getConn());
%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-2">
				<div class="card point-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-4x"></i><br>
						<p class="fs-5 text-center">
							Doctor<br><%=dao.countDoctor() %>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 ">
			<a href="patient.jsp">
				<div class="card point-card">
				
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-4x"></i><br>
						<p class="fs-5 text-center">
							Total Appointment<br><%=dao.countAppointmentByDoctorId(d.getId()) %>
						</p>
					</div>	
				</div>
				</a>
			</div>

		</div>
	</div>


	
</body>
</html>