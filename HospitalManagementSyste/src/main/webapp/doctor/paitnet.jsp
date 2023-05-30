<%@page import="com.modal.AppO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppoDao"%>
<%@page import="com.modal.AddDoctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Patinet Page</title>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%>
 <%@include file="navabr.jsp" %>
 <%@include file="../css.jsp" %>

</head>
<body>
<c:if test="${empty doctorObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
 </c:if>
<div class="continer p-3">
	<div class="row">
		<div class="col-md-12">
			<div class="card paint-card">
				<div class="card-body">
				    <p class="text-center text-success fs-4"><b>Patient Detail</b></p>
				    <c:if test="${not empty msg }">
				    <p class="text-center text-success fs-3">${msg }</p>
				    <c:remove var="msg"/>
				    </c:if>
				        <c:if test="${not empty emsg }">
				    <p class="text-center text-success fs-3">${emsg }</p>
				    <c:remove var="emsg"/>
				    </c:if>
				    <table class="table">
				    	<thead>
				    		<tr>
				    		   <th scope="col">Full Name</th>
				    		   <th scope="col">Gender</th>
				    		   <th scope="col">Age</th>
				    		   <th scope="col">Appointment Date</th>
				    		   <th scope="col">Email</th>
				    		   <th scope="col">Mob No</th>
				    		   <th scope="col">Diseases</th>
				    		   <th scope="col">Status</th>
				    		   <th scope="col">Action</th>
				    		</tr>
				    	</thead>
				    	<tbody>
				    	<%    HttpSession s=request.getSession(); 
				    	       AddDoctor ad=(AddDoctor)s.getAttribute("doctorObj");
				    	       List<AppO> l=AppoDao.getDoctorLoginIfo(ad.getId());
				    	       for(AppO x:l){  
				    	%>
				    	      
				    	   <tr>
				    	   		<td><%=x.getFullname() %></td>
				    	   		<td><%=x.getGender() %></td>
				    	   		<td><%=x.getAge() %></td>
				    	   		<td><%=x.getAppDate() %></td>
				    	   		<td><%=x.getEmail() %></td>
				    	   		<td><%=x.getPhone() %></td>
				    	   		<td><%=x.getDesies() %></td>
				    	   		<td><%=x.getStatus() %></td>
				    	   		<td>
				    	   		<%if("pending".equals(x.getStatus())){ %>
				    	   		<a href="Pc.jsp?id=<%=x.getId() %>" class="btn btn-success btn-sm">Comment</a>
				    	   		<%}else {%>
				    	   		
				    	   		<a href="#" class="btn btn-success btn-sm disabled">Comment</a>
				    	   		<%} %>
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