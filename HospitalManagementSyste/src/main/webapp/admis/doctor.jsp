<%@page import="com.modal.AddDoctor"%>
<%@page import="com.dao.AddDoctorDao"%>
<%@page import="com.modal.Speciallist"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.SpecialDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@include file="css.jsp" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add doctor page</title>
<style>
.paint-card{
box-shadow: 0 0 20px gray;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container-fluid p-3">
	<div class="row">
	   <div class="col-md-5 offset-md-3">
	      <div class="card">	
	      	<div class="card-body paint-card">
	      	  	<p class="text-center fs-4"><b>Add Doctor</b></p>
	      	  	<c:if test="${ not empty msg}">
	      	  	<p class="text-center text-success fs-1">${msg}</p>
	      	  	<c:remove var="msg"/>
	      	  	</c:if>
	      	  		<c:if test="${not empty emsg}">
	      	  	<p class="text-center text-success">${emsg}</p>
	      	  	<c:remove var="emsg"/>
	      	  	</c:if>
	      	  	
	      	  	  <form action="../adddoctor" method="post">
	      	  	  <div class="mb-4">
	      	  	  <label class="form-lable">Full Name</label>
	      	  	  <input type="text" required name="name" class="form-control">
	      	  	  </div>
	      	  	  <div class="mb-4">
	      	  	  <label for="form-label">DOB</label>
	      	  	  <input type="date"  required name="dob" class="form-control">
	      	  	  </div>
	      	  	    <div class="mb-4">
	      	  	  <label for="form-label">Qualification</label>
	      	  	  <input type="text"  required name="quali" class="form-control">
	      	  	  </div>
	      	  	  	    <div class="mb-4">
	      	  	  <label for="form-label">Specailist</label>
	      	       <select name="spcil" required class="form-control">
	      	       <option>--select--</option>
	      	       <%   ArrayList<Speciallist> l=SpecialDao.fetchSpecaillist();
	      	  			  for(Speciallist x:l){
	      	       %>
	      	       
	      	       <option><%=x.getName() %></option>
	      	       <% }%>
	      	       </select>
	      	  	  </div>
	      	  	
	      	  	    <div class="mb-4">
	      	  	  <label for="form-label">Email</label>
	      	  	  <input type="email"  required name="email" class="form-control">
	      	  	  </div>
	      	  	     <div class="mb-4">
	      	  	  <label for="form-label">Mob No</label>
	      	  	  <input type="text"  required name="mobno" class="form-control">
	      	  	  </div>
	      	  	     <div class="mb-4">
	      	  	  <label for="form-label">Password</label>
	      	  	  <input type="password"  required name="pass" class="form-control">
	      	  	  </div>
	      	  	  <div class="text-center">
	      	  	  <button type="submit" class="btn btn-primary">Add Doctor</button>
	      	  	  </div>
	      	  	  
	      	  	  
	      	  	  
	      	  	  </form>
	      	</div>
	      </div>
	  </div>

	</div>
	
</div>
</body>
</html>