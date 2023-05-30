<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="css.jsp" %>
    <%@include file="navbar.jsp" %>
         <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
          <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Page</title>
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
		      		<p class="text-center fs-3 ">Doctor Login</p>
		      		<c:if test="${not empty msg }">
		      		<p class="text-center text-success fs-1">${msg }</p>
		      		<c:remove var="msg"/>
		      		</c:if>
		      		<c:if test="${not empty emsg }">
		      		<p class="text-center text-danger fs-1">${emsg }</p>
		      		<c:remove var="emsg"/>
		      		</c:if>
		      			<form action="doctorlogin" method="post">
		      			<div class="mb-3">
		      			<label for="name">Enter Email</label>
		      			<input type="email" required name="email" class="form-control" placeholder="Enter Email" >
		      			</div>
		      			<div class="mb-3">
		      			<label for="name">Enter Password</label>
		      			<input type="password"  required name="pass" class="form-control" placeholder="Enter Password">
		      			</div>
		      			 <button type="submit" class="btn btn-danger col-md-12 text-white" >Login</button>
		      			</form>
		      	</div>
		      </div>
		</div>
	</div>
</div>

</body>
</html>