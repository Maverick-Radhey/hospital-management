<%@page import="com.entity.Appointment"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Comment</title>
<%@include file="allcss_doctor.jsp"%>


<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
.point-card:hover {
	background-color: #efebe9;
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../img/hos.jpg");
	height: 60vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>
</head>
<body style="background-color: #e8f5e9;">
<%@include file="navbar_doctor.jsp"%>

<c:if test="${empty doctObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>

<div class="container-fulid backImg p-5">
<p class="text-center fs-2 text-white"></p>
</div>

<div class="container p-3">
<div class="row">

<div class="col-md-6 offset-md-3">
<div class="card point-card">
<div class="card-body">
<p class="text-center fs-4">Patient Comment</p>

<%
int id=Integer.parseInt(request.getParameter("id"));
AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
 Appointment ap=dao.getAppointmentById(id);
%>

<form class="row" action="../update_status" method="post">

<div class="col-md-6">
<label>Patient Name</label><input type="text" readonly value="<%=ap.getFullName() %>" class="form-control">
</div>

<div class="col-md-6">
<label>Age</label><input type="text" value="<%=ap.getAge() %>" readonly
 class="form-control">
</div>

<div class="col-md-6">
<br><label>Phone No</label><input type="text"  value="<%=ap.getPhone() %>"readonly 
 class="form-control">
</div>

<div class="col-md-6">
<br><label>Diseases</label><input type="text"  value="<%=ap.getDiseases() %>"readonly
 class="form-control">
</div>

<div class="col-md-12">
<br><label>Comment</label><textarea required name="comment" class="form-control"
 rows="3" cols=""></textarea>
</div>
<input type="hidden" name="id" value="<%=ap.getId() %>">
<input type="hidden" name="did" value="<%=ap.getDoctorId() %>">


<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>

</form>
</div>
</div>
</div>
</div>
</div>



</body>
</html>