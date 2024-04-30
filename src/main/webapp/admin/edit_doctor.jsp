<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecalistDao"%>
<%@page import="com.db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Docter Page</title>
<%@include file="allcss.jsp"%>


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
	<%@include file="navbar.jsp"%>

	<div class="container-fluid p-3">
		<div class="row">

			<div class="col-md-4 offset-md-4">
				<div class="card point-card">
					<div class="card-body">
						<p class="fs-3 text-center text-success text-bold">Edit Doctor Details</p>


						<c:if test="${ not empty succMsg }">
							<p class="text-center text-success fs-4">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${ not empty failedMsg }">
							<p class="text-center text-danger fs-4">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						
						<%
					int id=	Integer.parseInt(request.getParameter("id"));
						DoctorDao dao2=new DoctorDao(DBConnect.getConn());
					Doctor d=	dao2.getDoctorById(id);
						
						%>

						<form action="../update_doctor" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text" value=<%=d.getFullName() %>
									required name="fullName" class="form-control" >
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date" value=<%=d.getDob() %>
									required name="dob" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" value=<%=d.getQualification() %> required name="qualification" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select
									name="specalist" required class="form-control">
									<option><%=d.getSpecalist() %></option>

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
								<label class="form-label">Email</label> <input type="text" value=<%=d.getEmail() %>
									required name="email" class="form-control" >
							</div>

							<div class="mb-3">
								<label class="form-label">Phone No</label> <input type="text" value=<%=d.getPhone() %>
									required name="phone" class="form-control" >
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="text" value=<%=d.getPassword() %> required name="password" class="form-control">
							</div>
<input type="hidden" name="id" value="<%=d.getId() %>">
							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>


			
		</div>

	</div>

</body>
</html>