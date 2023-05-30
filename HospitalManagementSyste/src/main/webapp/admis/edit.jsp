<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.modal.AddDoctor"%>
<%@page import="com.dao.AddDoctorDao"%>
<%@page import="com.modal.Speciallist"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.SpecialDao"%>
 <%@include file="css.jsp" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Doctor</title>
<style>
.paint-card{
box-shadow: 0 0 20px gray;
}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container p-3">
	<div class="row">
	   <div class="col-md-6 offset-md-3">
	      <div class="card">	
	      	<div class="card-body paint-card">
	      	  	<p class="text-center fs-4"><b>Edit Doctor Details</b></p>
	      	  	<c:if test="${ not empty msg}">
	      	  	<p class="text-center text-success fs-1">${msg}</p>
	      	  	<c:remove var="msg"/>
	      	  	</c:if>
	      	  		<c:if test="${not empty emsg}">
	      	  	<p class="text-center text-success">${emsg}</p>
	      	  	<c:remove var="emsg"/>
	      	  	</c:if>
	      	  	<%
	      	  	   int id=Integer.parseInt(request.getParameter("id"));
	      	  AddDoctor s=AddDoctorDao.getDoctorById(id);
	      	  	%>
	      	  	
	      	  	  <form action="../update" method="post">
	      	  	  <div class="mb-4">
	      	  	  <label class="form-lable">Full Name</label>
	      	  	  <input type="text" required name="name" value="<%=s.getName() %>" class="form-control">
	      	  	  </div>
	      	  	  <div class="mb-4">
	      	  	  <label for="form-label">DOB</label>
	      	  	  <input type="date"  required name="dob" value="<%=s.getDob() %>" class="form-control">
	      	  	  </div>
	      	  	    <div class="mb-4">
	      	  	  <label for="form-label">Qualification</label>
	      	  	  <input type="text"  required name="quali" value="<%=s.getQuali() %>" class="form-control">
	      	  	  </div>
	      	  	  	    <div class="mb-4">
	      	  	  <label for="form-label">Specailist</label>
	      	       <select name="spcil" required class="form-control">
	      	       <option> <%=s.getSpecil() %></option>
	      	       <%   ArrayList<Speciallist> l=SpecialDao.fetchSpecaillist();
	      	  			  for(Speciallist x:l){
	      	       %>
	      	       
	      	       <option><%=x.getName() %></option>
	      	       <% }%>
	      	       </select>
	      	  	  </div>
	      	  	
	      	  	    <div class="mb-4">
	      	  	  <label for="form-label">Email</label>
	      	  	  <input type="email" value="<%=s.getEmail() %>" required name="email" class="form-control">
	      	  	  </div>
	      	  	     <div class="mb-4">
	      	  	  <label for="form-label">Mob No</label>
	      	  	  <input type="text"  required name="mobno" value="<%=s.getMobno() %>" class="form-control">
	      	  	  </div>
	      	  	  <div class="text-center">
	      	  	  <input type="hidden" name="id" value="<%=s.getId()%>">
	      	  	  <button type="submit"  class="btn btn-primary">Update Doctor</button>
	      	  	  </div>
	      	  	  
	      	  	  
	      	  	  
	      	  	  </form>
	      	</div>
	      </div>
	  </div>
	  </div>
	  </div>
	  

</body>
</html>