<%@page import="com.dao.UserDao"%>
<%@page import="com.dao.SpecialDao"%>
<%@page import="com.dao.AppoDao"%>
<%@page import="com.dao.AddDoctorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="css.jsp" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.paint-card{
box-shadow: 0  0 10px gray;
}

</style>

<meta charset="ISO-8859-1">
<title>Admin DashBord</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<c:if test="${empty adminObj }">
<c:redirect url="../admis_login.jsp"></c:redirect>
</c:if>
<div class="conatiner p-5">
<p class="text-center fs-3"><b>Admin Dashbord</b></p>
<c:if test="${not empty msg}">
<p class="text-center text-success fs-3">${msg }</p>
<c:remove var="msg"/>
</c:if>
<c:if test="${not empty emsg}">
<p class="text-center text-success fs-3">${emsg }</p>
<c:remove var="emsg"/>
</c:if>
	<div class="row">
		<div class="col-md-4 mt-2">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
		<i class="fa fa-user-md fa-3x" aria-hidden="true"></i>	<br>
				<p class="fs-5 text-center"></p>
				<b>Doctor</b><br><% int i=AddDoctorDao.countDoctor(); %>
				<%=i %>
				</div>
			</div>
		</div>
		<div class="col-md-4 mt-2">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
				<i class="fa fa-user-circle fa-3x" aria-hidden="true"></i><br>
				<p class="fs-5 text-center"></p>
				<b>User</b><br><%int u=UserDao.countUser(); %>
				<%=u %>
				</div>
			</div>
		</div>
		<div class="col-md-4 mt-2">
			<div class="card paint-card">
				<div class="card-body text-center text-success">
				<i class="fa fa-calendar-check-o fa-3x" aria-hidden="true"></i><br>
				<p class="fs-4 text-center"></p>
				<b>Total Appoinment</b><br><%int a=AppoDao.countApp(); %>
				<%=a %>
				</div>
			</div>
		</div>
		<div class="col-md-4 mt-3">
	
			
			<div class="card paint-card"  data-bs-toggle="modal" data-bs-target="#exampleModal">
				<div class="card-body text-center text-success">
		<i class="fa fa-calendar-check-o fa-3x" aria-hidden="true"></i><br>
				<p class="fs-4 text-center"></p>
				<b>Specialist</b><br><%int x=SpecialDao.countSpecial(); %>
				<%=x %>
				</div>
			</div>
		</div>     
		      
	</div>
</div>
</body>
</html>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Specailist</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      <form action="../addspecilist" method="post">
      <div class="form-group">
      <lable>Enter Specialist</lable>
      <input type="text" name="spec" class="form-control">
      </div>
      <div class="text-center mt-3">
      <button type="submit" class="btn btn-primary" >Add</button>
      </div>
      </form>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      
      </div>
    </div>
  </div>
</div>
</button>