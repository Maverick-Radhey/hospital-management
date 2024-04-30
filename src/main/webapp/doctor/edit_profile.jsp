<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecalistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<c:redirect url="../docter_login.jsp"></c:redirect>
	</c:if>
	
	
<div class="container p-4">

	
<c:if test="${ not empty succMsg }">
 <p class="text-center text-success fs-4">${succMsg }</p>
                         <c:remove var="succMsg" scope="session"/>
</c:if>	
		
<c:if test="${ not empty failedMsg }">
 <p class="text-center text-danger fs-4">${failedMsg }</p>
                         <c:remove var="failedMsg" scope="session"/>
</c:if>

<div class="row">

<div class="col-md-4 ">
<div class="card point-card">
<p class="text-center fs-3">Change Password</p>
<div class="card-body">
<form action="../doctor_passwordChange" method="post">
<div class="mb-3">
<label>Enter New Password</label> <input type="text"
name="newPassword" class="form-control" required>
</div>

<div class="mb-3">
<label>Enter Old Password</label> <input type="text"
name="oldPassword" class="form-control" required>
</div>
<input type="hidden" value="${doctObj.id }" name="uid">
<button class="btn btn-success col-md-12">Change Password</button>

</form>

</div>
</div>
</div>

<div class="col-md-8">
<div class="card point-card">
<p class="text-center fs-3">Edit Profile</p>
<div class="card-body">

<form action="../doctor_updateProfile" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text" 
									required name="fullName" class="form-control" value="${doctObj.fullName }">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control"  value="${doctObj.dob }">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" required name="qualification" class="form-control"  value="${doctObj.qualification }">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									name="specalist" required class="form-control">
									<option>${doctObj.specalist }</option>

									<%
									SpecalistDao dao = new SpecalistDao(DBConnect.getConn());
									List<Specalist> list = dao.getAllSpecalist();
									for (Specalist s : list) {
									%>

									<option><%=s.getSpecalistName()%></option>
									<%
									}
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text" 
									required name="email" class="form-control"  value="${doctObj.email }">
							</div>

							<div class="mb-3">
								<label class="form-label">Phone No</label> <input type="text"
									required name="phone" class="form-control"  value="${doctObj.phone }">
							</div>

							<input type="hidden" name="id" value="${doctObj.id }">

							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>

</div>
</div>
</div>

</div>
</div>
	

</body>
</html>