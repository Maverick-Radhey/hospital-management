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
<title>Admin Index Page</title>
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
<body  style="background-color: #e8f5e9;">
<%@include file="navbar.jsp" %>

<c:if test="${ empty adminObj }">
<c:redirect url="../admin_login.jsp"></c:redirect>
</c:if>

<div class="container p-2">
		<p class="text-center fs-2" style="color: green">Admin Dashboard</p>
		
		
	
<c:if test="${ not empty succMsg }">
 <p class="text-center text-success fs-4">${succMsg }</p>
                         <c:remove var="succMsg" scope="session"/>
</c:if>	
		
<c:if test="${ not empty failedMsg }">
 <p class="text-center text-danger fs-4">${failedMsg }</p>
                         <c:remove var="failedMsg" scope="session"/>
</c:if>


<%
DoctorDao dao=new DoctorDao(DBConnect.getConn());

%>
		
		<div class="row">
			<div class="col-md-4 mt-3">
				<div class="card point-card">
					<div class="card-body text-center text-success">
						
						<i  class="fas fa-user-md fa-3x" ></i><br>
						<p class="fs-4 text-center">Doctor<br><%=dao.countDoctor() %></p>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-4 mt-3">
				<div class="card point-card">
					<div class="card-body text-center text-success">
						
						<i class="fa-solid fa-bed-pulse fa-3x"></i><br>
						<p class="fs-4 text-center">Patient<br><%=dao.countUser() %></p>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-4 mt-3">
				<div class="card point-card">
					<div class="card-body text-center text-success">
						
						<i class="fa-solid fa-file-circle-check fa-3x"></i><br>
						<p class="fs-4 text-center">Total Appointment<br><%=dao.countAppointment() %></p>
					</div>
				</div>
			</div>
			
			
			<div class="col-md-4 mt-3">
				<div class="card point-card"  data-bs-toggle="modal" data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
						
						<i class="fa-solid fa-user-tie fa-3x"></i><br>
						<p class="fs-4 text-center">Specialist<br><%=dao.countSpecialist() %></p>
					</div>
				</div>
			</div>


		</div>
	</div>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../add_spec" method="post">
        
        <div class="form-group">
        <label>Enter Specialist Name</label>
        <input type="text" name="specName" class="from-control">
        </div>
       <div class="mt-3 ml-3"> <button type="submit" class="btn btn-primary ">Add Specialist</button></div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>

</body>
</html>