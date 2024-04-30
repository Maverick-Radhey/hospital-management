<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
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
<body style="background-color: #efebe9;">
<%@include file="component/navbar.jsp"%>

<div class="container p-5">

	
<c:if test="${ not empty succMsg }">
 <p class="text-center text-success fs-4">${succMsg }</p>
                         <c:remove var="succMsg" scope="session"/>
</c:if>	
		
<c:if test="${ not empty failedMsg }">
 <p class="text-center text-danger fs-4">${failedMsg }</p>
                         <c:remove var="failedMsg" scope="session"/>
</c:if>

<div class="row">

<div class="col-md-4 offset-md-4">
<div class="card point-card">
<p class="text-center fs-3">Change Password</p>
<div class="card-body">
<form action="change_password" method="post">
<div class="mb-3">
<label>Enter New Password</label> <input type="text"
name="newPassword" class="form-control" required>
</div>

<div class="mb-3">
<label>Enter Old Password</label> <input type="text"
name="oldPassword" class="form-control" required>
</div>
<input type="hidden" value="${userObj.id }" name="uid">
<button class="btn btn-success col-md-12">Change Password</button>

</form>

</div>
</div>
</div>
</div>
</div>


</body>
</html>