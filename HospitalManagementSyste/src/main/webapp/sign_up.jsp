<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="css.jsp" %>
    <%@include file="navbar.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Page</title>
<style>
.pain-card{
box-shadow: 0 0 10px gray;
}
</style>
</head>
<body class="bg-light">
<div class="container p-5">
	<div class="row">
		<div class="col-md-6 offset-md-3">
		      <div class="card pain-card">
		      		<div class="card-body">
		      		<p class="text-center fs-3 ">User Register</p>
		      		<c:if test="${not empty msg}">
		      		<p class="text-center text-success fs-3">${msg}</p>
		      		<c:remove var="msg" />
		      		</c:if>
		      		<c:if test="${not empty emsg}">
		      		<p class="text-center text-danger fs-3">${emsg}</p>
		      		<c:remove var="emsg" />
		      		</c:if>
		      			<form action="Register" method="post">
		      			<div class="mb-3">
		      			<label for="name">Enter Name</label>
		      			<input type="text" name="name" class="form-control" placeholder="Enter Name" >
		      			</div>
		      			<div class="mb-3">
		      			<label for="name">Enter Email</label>
		      			<input type="text" name="email" class="form-control" placeholder="Enter Email" >
		      			</div>
		      			<div class="mb-3">
		      			<label for="name">Enter Password</label>
		      			<input type="password" name="pass" class="form-control" placeholder="Enter Password">
		      			</div>
		      			<div class="mb-3">
		      			<label for="name"> Confirm Password</label>
		      			<input type="password" name="cpass" class="form-control" placeholder="Enter Confim Password">
		      			</div>
		      			 <button type="submit" class="btn btn-primary col-md-12 text-white" >Sign</button>
		      			</form>
		      			
		      			
		      			
		      	</div>
		      </div>
		</div>
	</div>
</div>

</body>
</html>