<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
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
<title>Admin Patient</title>
<%@include file="allcss.jsp" %>


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
<%@include file="navbar.jsp" %>

<div class="col-md-12">
<div class="card point-card">
<div class="card-body">
<p class="fs-3 text-center">Patient Details</p>
<table class="table">
<thead>
<tr>

<th scope="col">Full Name</th>
<th scope="col"> Gender</th>
<th scope="col">Age</th>
<th scope="col">Appointment</th>
<th scope="col">Email</th>
<th scope="col">Phone</th>
<th scope="col">Diseases</th>
<th scope="col">Doctor Name</th>
<th scope="col">Address</th>
<th scope="col">Status</th>

</tr>
</thead>
<tbody>

<%
AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
DoctorDao dao2=new DoctorDao(DBConnect.getConn());
    List<Appointment> list = dao.getAllAppointment();
    for(Appointment ap:list){
   Doctor d= dao2.getDoctorById(ap.getDoctorId());
    %>
    	<tr>

<th><%=ap.getFullName() %></th>
<td><%=ap.getGender() %></td>
<td><%=ap.getAge() %></td>
<td><%=ap.getAppointDate() %></td>
<td><%=ap.getEmail() %></td>
<td><%=ap.getPhone() %></td>
<td><%=ap.getDiseases() %></td>
<td><%=d.getFullName() %></td>
<td><%=ap.getAddress() %></td>
<td><%=ap.getStatus() %></td>

</tr>
    	
    	
  <%  }
%>



</tbody>
</table>
</div>
</div>
</div>

</body>
</html>