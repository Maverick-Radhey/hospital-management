<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Docter Login Page</title>
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
<p class="fs-4 text-center" style="color:green">Doctor Login</p>



<c:if test="${ not empty succMsg }">
 <p class="text-center text-success fs-4">${succMsg }</p>
                         <c:remove var="succMsg" scope="session"/>
</c:if>

<c:if test="${ not empty failedMsg }">
 <p class="text-center text-danger fs-4">${failedMsg }</p>
                         <c:remove var="failedMsg" scope="session"/>
</c:if>

<form action="docter_login" method="post">
  <div class="mb-3">
    <label  class="form-label">Email address</label>
    <input type="email" class="form-control" name="email" required>
  </div>
  <div class="mb-3">
    <label  class="form-label">Password</label>
    <input type="password" class="form-control" name="password">
  </div>
 
  <button type="submit" class="btn btn-primary text-white col-md-12"><i class="fa-solid fa-right-to-bracket"></i> Login</button>

</form>
</div>
</div>
</div>
</div>
</div>


</body>
</html>