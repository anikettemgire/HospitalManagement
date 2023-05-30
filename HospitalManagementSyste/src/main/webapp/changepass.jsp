<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%><head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@include file="css.jsp" %>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
paint-card{
box-shadow: 0 0 10px gray;
}
</style>
</head>
<body class="bg-light">
<c:if test="${ empty userObj }">
<c:redirect url="User_login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-md-6 offset-md-3">
		    <div class="card paint-card mt-5">
		        <div class="card-body">
		        <p class="text-center text-success fs-4"><b>Change PassWord</b></p>
		          <c:if test="${not empty msg }">
		        <p class="text-center text-success fs-2">${msg}</p>
		        <c:remove var="emsg"/>
		        </c:if>
		        <c:if test="${not empty emsg }">
		        <p class="text-center text-success fs-2">${emsg}</p>
		        <c:remove var="emsg"/>
		        </c:if>
		        <form action="changePass" method="post">
		        <div class="mb-3">
		        <label class="form-lable">Old Password</label>
		        <input type="text" requried name="opass" class="form-control" placeholder="Enter Old Password">
		        </div>
		        <div class="mb-3">
		        <label class="form-label">New Password</label>
		        <input type="text" requried name="npass" class="form-control" placeholder="Enter New Password">
		        </div>
		        <div class="mb-3">
		        <label class="form-label">Confirm New Password</label>
		        <input type="text" requried name="ncpass" class="form-control" placeholder="Enter Confirm Password">
		        </div>
		        <input type="hidden" name="uid" value="${userObj.id}">
		        <button type="submit" class="col-md-12 btn btn-success">Change Password</button>
		        </form>
		        </div>
		    
		    </div>
		</div>
	</div>
</div>
</body>
</html>