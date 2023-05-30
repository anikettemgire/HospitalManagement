<%@page import="com.dao.AppoDao"%>
<%@page import="com.modal.AddDoctor"%>
<%@page import="com.dao.AddDoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../css.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Doctor DahsBord</title>
</head>
 <style>
 .paint-card{
 box-shadow: 0 0 20px gray;
 }
 
 </style>
 
<body>
<%@include file="navabr.jsp" %>
<c:if test="${empty doctorObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
 </c:if>
<div class="continer p-5">
<p class="text-center fs-4"><b>Doctor DashBord</b></p>
   <div class="row">
   	 	<div class="col-md-4 offset-md-2">
   	 		<div class="card paint-card">
   	 			<div class="card-body  text-success text-center">
   	 			    <i class="fa fa-user-md fa-3x" aria-hidden="true"></i>	<br>
				<p class="fs-5 text-center"></p>
				<b>Doctor</b><br><% int i=AddDoctorDao.countDoctor(); %>
				<%=i %>
   	 			</div>
   	 		</div>
   	 	</div>
   	 	<div class="col-md-4">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
				<i class="fa fa-calendar-check-o fa-3x" aria-hidden="true"></i><br>
				<p class="fs-4 text-center"></p>
				<b>Total Appointment</b><br>
			      <% HttpSession s=request.getSession();
			        AddDoctor d=(AddDoctor)s.getAttribute("doctorObj");
			        
			                int da=AppoDao.countAppDoctorId(d.getId());
			                
			      %>
			      <%=da %>
				</div>
			</div>
		</div>
   </div>
   
</div>

</body>
</html>