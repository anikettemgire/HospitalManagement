<%@page import="com.dao.SpecialDao"%>
<%@page import="com.modal.Speciallist"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="../css.jsp" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page Doctor</title>
<style>

 .paint-card{
 box-shadow: 0 0 20px gray;
 }
 </style>
</head>
<body>
<%@include file="navabr.jsp" %>
<c:if test="${ empty doctorObj}">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<div class="container-fluid p-3">
	<div class="row">
	   <div class="col-md-5 offset-md-3">
	      <div class="card">	
	      	<div class="card-body paint-card">
	      	  	<p class="text-center fs-4"><b>Edit Doctor</b></p>
	      	  	<c:if test="${ not empty msg}">
	      	  	<p class="text-center text-success fs-1">${msg}</p>
	      	  	<c:remove var="msg"/>
	      	  	</c:if>
	      	  		<c:if test="${not empty emsg}">
	      	  	<p class="text-center text-success">${emsg}</p>
	      	  	<c:remove var="emsg"/>
	      	  	</c:if>
	      	  	
	      	  	  <form action="../editdoctor" method="post">
	      	  	  <div class="mb-4">
	      	  	  <label class="form-lable">Full Name</label>
	      	  	  <input type="text" required name="name" class="form-control" value="${doctorObj.name }">
	      	  	  </div>
	      	  	  <div class="mb-4">
	      	  	  <label for="form-label">DOB</label>
	      	  	  <input type="date"  required name="dob" class="form-control" value="${doctorObj.dob }">
	      	  	  </div>
	      	  	    <div class="mb-4">
	      	  	  <label for="form-label">Qualification</label>
	      	  	  <input type="text"  required name="quali" class="form-control" value="${doctorObj.quali }">
	      	  	  </div>
	      	  	  	    <div class="mb-4">
	      	  	  <label for="form-label">Specailist</label>
	      	       <select name="spcil" required class="form-control">
	      	       <option>${doctorObj.specil}</option>
	      	       <%   ArrayList<Speciallist> l=SpecialDao.fetchSpecaillist();
	      	  			  for(Speciallist x:l){
	      	       %>
	      	       
	      	       <option><%=x.getName() %></option>
	      	       <% }%>
	      	       </select>
	      	  	  </div>
	      	  	
	      	  	    <div class="mb-4">
	      	  	  <label for="form-label">Email</label>
	      	  	  <input type="email"  required name="email" class="form-control" value="${doctorObj.email }">
	      	  	  </div>
	      	  	     <div class="mb-4">
	      	  	  <label for="form-label">Mob No</label>
	      	  	  <input type="text"  required name="mobno" class="form-control" value="${doctorObj.mobno }">
	      	  	  </div>
	      	  	   <input type="hidden" name="id" value="${doctorObj.id }">
	      	  	  <div class="text-center">
	      	  	  <button type="submit" class="btn btn-primary">Edit Doctor</button>
	      	  	  </div>
	      	  	  
	      	  	  
	      	  	  
	      	  	  </form>
	      	</div>
	      </div>
	  </div>

	</div>
	
</div>
</body>
</html>