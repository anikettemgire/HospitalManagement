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

<c:if test="${empty adminObj }">

<c:redirect url="../admis_login.jsp"></c:redirect>

<c:remove var="name"/>
</c:if>
<div class="container-fluid p-3">
	<div class="row">

	  <div class="col-md-12 ">
	     <div class="card">
	     	<div class="card paint-card">
	     	<p class="text-center fs-4"><b>Doctor Detail</b></p>
	     	<c:if test="${ not empty msg}">
	      	  	<p class="text-center text-success fs-1">${msg}</p>
	      	  	<c:remove var="msg"/>
	      	  	</c:if>
	      	  		<c:if test="${not empty emsg}">
	      	  	<p class="text-center text-success">${emsg}</p>
	      	  	<c:remove var="emsg"/>
	      	  	</c:if>
	     	<table class="table">
	     	<thead>
	     	    <tr>
	     	    	<th scope="col">Full Name</th>
	     	    	<th scope="col">DOB</th>
	     	    	<th scope="col">Qualification</th>
	     	    	<th scope="col">Specalist</th>
	     	    	<th scope="col">Email</th>
	     	    	<th scope="col">Mob No</th>
	     	    	<th scope="col">Action</th>
	     	    </tr>
	     	</thead>
	     	<tbody>
	     	<%            ArrayList<AddDoctor> al =AddDoctorDao.fetchDoctor();
	      	  			  for(AddDoctor m:al){
	      	  				  
	      	  			  
	      	 %>
	     	<tr>
	     	   <td><%=m.getName() %></td>
	     	   <td><%=m.getDob() %></td>
	     	   <td><%=m.getQuali() %></td>
	     	   <td><%=m.getSpecil() %></td>
	     	   <td><%=m.getEmail() %></td>
	     	   <td><%=m.getMobno() %></td>
	     	   <td>
	     	   <a href="edit.jsp?id=<%= m.getId()  %>" class="btn btn-primary btn-sm">Edit</a>
	     	    <a href="../delete?id=<%= m.getId()  %>" class="btn btn-danger btn-sm">Delete</a>
	     	   </td>
	     	</tr>
	     	<%} %>
	     	</tbody>
	     	</table>
	     	      
	     	</div>
	     </div>

	  </div>
	  
	</div>
	
</div>
</body>
</html>