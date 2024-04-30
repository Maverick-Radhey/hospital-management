<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<%@include file="component/all_css.jsp"%>


<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
.point-card:hover {
	background-color: #efebe9;
}
</style>

</head>
<body  style="background-color: #e8f5e9;">
<%@include file="component/navbar.jsp" %>


<div class="container p-5">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card point-card">
<div class="card-body">
<p class="fs-4 text-center" style="color:green">User Registration</p>

<c:if test="${ not empty failedMsg }">
 <p class="text-center text-danger fs-4">${failedMsg }</p>
                         <c:remove var="failedMsg" scope="session"/>
</c:if>

<form action="user_register" method="post">
   <div class="mb-3">
    <label  class="form-label">User Name</label>
    <input type="text" class="form-control" name="fullName" required>
  </div>
  <div class="mb-3">
    <label  class="form-label">Email address</label>
    <input type="email" class="form-control" name="email" required>
  </div>
   <div class="mb-3">
    <label  class="form-label">Phone No</label>
    <input type="number" class="form-control" name="phone" required>
  </div>
  <div class="mb-3">
    <label  class="form-label">Password</label>
    <input type="password" class="form-control" name="password">
  </div>
   <div class="form-check">
							<input type="checkbox" class="form-check-input" name="check"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">Agree terms & Condition</label>
						</div>
 
  <button type="submit" class="btn btn-primary text-white col-md-12"><i class="fa-solid fa-pen-to-square"></i> Register</button>
 
</form>
</div>
</div>
</div>
</div>
</div>



</body>
</html>