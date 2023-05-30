<%@page import="com.dao.AddDoctorDao"%>
<%@page import="com.modal.AddDoctor"%>
<%@page import="com.modal.User"%>
<%@page import="com.modal.AppO"%>
<%@page import="com.servlet.AppOServlet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.AppoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%><head>
 <%@include file="css.jsp" %>
 <%@page import="com.servlet.*" %>

 <head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View_Appominemnt</title>
<style type="text/css">
.paint-card{
 box-shadow: 0 0 10px gray;
}
.backimg{
background:url("img/hosp.jpg");
height: 20vh;width:100%;
background-size: cover;
background-repeat: no-repeat;

}
</style>
</head>
<body>
<%@include file="navbar.jsp" %>
<c:if test="${empty userObj}">
<c:redirect url="User_login.jsp"></c:redirect>
</c:if>
<div class="container-fuild backimg p-5">
<p class="text-center fs-2 text-white"></p> 
</div>
<div class="container p-3">
   <div class="row">
   		<div class="col-md-9">
   			<div class="card paint-card">
   			<p class="text-center text-success fs-4 fw-bold">Appointment List</p>
   			   <div class="card-body">
   			     <table class="table">
   			     	<thead>
   			     		<tr>
   			     		   <th scope="col">FullName</th>
   			     		   <th scope="col">Gender</th>
   			     		   <th scope="col">Age</th>
   			     		   <th scope="col">Appoiment Date</th>
   			     		   <th scope="col">Diseases</th>
   			     		   <th scope="col">Doctar Name</th>
   			     		   <th scope="col">Status</th>
   			     		</tr>
   			     	</thead>
   			     	<tbody>
   			            <% 
   			            HttpSession s=request.getSession();
   			           User u=(User)s.getAttribute("userObj");
   			        
   			         ArrayList<AppO> l=AppoDao.getApponiment(u.getId());
   			          for(AppO x:l){
   			        	  AddDoctor p=AddDoctorDao.getDoctorById(x.getDoctorId());
   			            %>
   			                           
   			     		<tr>
   			     			<td><%=x.getFullname() %></td>
   			     			<td><%=x.getGender() %></td>
   			     			<td><%=x.getAge() %></td>
   			     			<td><%=x.getAppDate() %></td>
   			     			<td><%=x.getDesies() %></td>
   			     			<td><%=p.getName()%></td>
   			     			
   			     			<td>
   			     			<%if("pending".equals(x.getStatus())){%>
   			     				<a href="#" class="btn btn-sm btn-warning">Pending</a>
   			     			<%}else{%>
   			     			<%=x.getStatus() %>
   			     			<%}%>
   			     			
   			     			</td>

   			     		</tr>
   			     		<%} %>
   			     	</tbody>
   			     </table>
   			   </div>
   			</div>
   			
   		</div>
   		<div class="col-md-3 p-3">
   		  <img alt="Not" src="img/sarik.jpg" width="400px" height="500px">
   		</div>
   </div>
</div>




</body>
</html>