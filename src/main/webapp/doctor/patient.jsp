<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Page</title>
<%@include file="allcss_doctor.jsp"%>


<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
.point-card:hover {
	background-color: #efebe9;
}
</style>
</head>
<body style="background-color: #e8f5e9;">
<%@include file="navbar_doctor.jsp"%>

<c:if test="${empty doctObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>

<div class="container p-3">
<div class="row">

<div class="col-md-12">
<div class="card point-card">
<div class="card-body">
<p class="fs-3 text-center">Patient Details</p>
     
     
				<c:if test="${ not empty succMsg }">
					<p class="text-center text-success fs-4">${succMsg }</p>
					<c:remove var="succMsg" scope="session" />
				</c:if>

				<c:if test="${ not empty failedMsg }">
					<p class="text-center text-danger fs-4">${failedMsg }</p>
					<c:remove var="failedMsg" scope="session" />
				</c:if>
				
				<table class="table">
				<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Email</th>
									<th scope="col">Phone No</th>
									<th scope="col">Diseases</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>

								</tr>
							</thead>
							<tbody>
							
							<%
						Doctor d=(Doctor)session.getAttribute("doctObj");
							AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
							List<Appointment> list = dao.getAllAppointmentByDoctorLogin(d.getId());
							for(Appointment ap : list){%>
								
							
							<tr>
							<th><%=ap.getFullName() %></th>
							<td><%=ap.getGender() %></td>
							<td><%=ap.getAge() %></td>
							<td><%=ap.getAppointDate() %></td>
							<td><%=ap.getEmail() %></td>
							<td><%=ap.getPhone() %></td>
							<td><%=ap.getDiseases() %></td>
							<td><%=ap.getStatus() %></td>
							<td>
							
							<%
							if("Pending".equals(ap.getStatus())){%>
								<a href="comment.jsp?id=<%=ap.getId() %>" class="btn  btn-success btn-sm">Comment</a>
						<%	}else{%>
							<a href="#" class="btn btn-sm btn-disabled">Comment</a>
								
						<%	}
							
							%>
							
				</td>
							</tr>	
								
						<%	}
							%>
							
							</tbody>
				</table>
     
</div>
</div>
</div>

</div>
</div>

</body>
</html>