<%@page import="com.modal.User"%>
<%@page import="com.modal.AddDoctor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.AddDoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Apponimet</title>
<%@include file="css.jsp" %>
<style type="text/css">
.paint-card{
 box-shadow: 0 0 10px gray;
}
.backimg{
background:url("img/s4.jpg");
height: 20vh;width:100%;
background-size: cover;
background-repeat: no-repeat;

}



</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container-fuild backimg p-5">
<p class="text-center fs-2 text-white"></p> 

	<div class="container p-3">
		<div class="row">
		<div class="col-md-6 p-5 mt-5">
		  <img alt="Not Found" src="img/Ravi.jpg" width="590px" height="600px">
		</div>
	
		  
			<div class="col-md-6 p-5 mt-5">
			    <div class="card paint-card">
			    	<div class="card-body">
			    	<p class="text-center fs-3"><b>User Appointement</b></p>
			    	<c:if test="${not empty msg }">
			    	<p class="text-center text-success fx-2">${msg }</p>
			    	<c:remove var="msg"/>
			    	</c:if>
			    		<c:if test="${not empty emsg }">
			    	<p class="text-center text-success fx-2">${emsg }</p>
			    	<c:remove var="emsg"/>
			    	</c:if>
			    	<form class="row g-3"action="Appo" method="post">
			    	<input type="hidden" name="userId" value="${userObj.id}">
			    	<div class="col-md-6">
			    		<label for="inputEmaild" class="form-label">Full Name</label>
			    		<input required type="text" class="form-control" name="name">
			    	</div>
			    	<div class="col-md-6 mt-4">
			    		<label>Gender</label>
			    		<select class="form-control" name="gender" required>
			    			<option value="male">Male</option>
			    			<option value="female">Female</option>
			    		</select>
			    	</div>
			    	<div class="col-md-6">
			    		<label for="inputEmaild" class="form-label">Age</label>
			    		<input required type="text" class="form-control" name="age">
			    	</div>
			    		<div class="col-md-6">
			    		<label for="inputEmaild" class="form-label">Appoinment Date</label>
			    		<input required type="date" class="form-control" name="date">
			    	</div>
			    		<div class="col-md-6">
			    		<label class="form-label">Email</label>
			    		<input required type="email" class="form-control" name="email">
			    	</div>
			    	<div class="col-md-6">
			    		<label class="form-label">Phone No</label>
			    		<input  maxlength="10" required type="number" class="form-control" name="phone">
			    	</div>
			    	<div class="col-md-6">
			    		<label class="form-label">Diseases</label>
			    		<input   required type="text" class="form-control" name="diases">
			    	</div>
			    	<div class="col-md-6">
			    		<label class="form-label">Doctor</label>
			    		 <select required type="text" class="form-control" name="doc">
			    		 <option>--Select--</option>
			    		 <%      ArrayList<AddDoctor> al=AddDoctorDao.fetchDoctor(); 
			    				  for(AddDoctor x:al){
			    		 %>
			    		 <option value="<%= x.getId()%>"><%=x.getName()%>(<%=x.getSpecil() %>)</option>
			    		 <% } %>
			    		 </select>
			    	</div>
			    	<div class="col-md-12">
			    	<label>Full Adress</label>
			    	<textarea required name="adress" class="form-control" rows="3" cols=""></textarea>
			    	</div>
			    	<c:if test="${empty userObj}">
			    	<a href="User_login.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
			    	</c:if>
			    	<c:if test="${not empty userObj}">
			    	<button class="col-md-6 offset-md-3 btn btn-success">Submit</button>
			    	</c:if>
			    	
			    
			    	
			    	</form>
			    	</div>
			    </div>
			
		
			</div>
		</div>
	</div>
</div>
</body>
</html>