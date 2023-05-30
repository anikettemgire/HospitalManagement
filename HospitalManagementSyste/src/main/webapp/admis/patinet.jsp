<%@page import="com.modal.AddDoctor"%>
<%@page import="com.dao.AddDoctorDao"%>
<%@page import="com.modal.AppO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="css.jsp" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Patinet Page</title>
<meta charset="ISO-8859-1">
<title>Admin Patine</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<c:if test="${empty adminObj }">
<c:redirect url="../admis_login.jsp"></c:redirect>
</c:if>
<div class="col-md-12">
	<div class="card paint-card">
		<div class="card-body">
			<p class="fs-3 text-center"><b>Patinet Deatils</b></p>
			 <table class="table">
			   <thead>
			   	<tr>
			   		 <th scope="col">FullName</th>
			   		 <th scope="col">Gender</th>
			   		 <th scope="col">Age</th>
			   		 <th scope="col">Appoiment</th>
			   		 <th scope="col">Email</th>
			   		 <th scope="col">MobNo</th>
			   		 <th scope="col">Disease</th>
			   		 <th scope="col">Doctor Name</th>
			   		 <th scope="col">Adress</th>
			   		 <th scope="col">Status</th>
			   	</tr>
			   </thead>
			   <tbody>
			   <%     List<AppO> l=AppoDao.getAllData();
			            for(AppO x:l){
			            	AddDoctor s=AddDoctorDao.getDoctorById(x.getDoctorId());
			   %>
			   		<tr>
			   		   <td><%=x.getFullname()%></td>
			   		   <td><%=x.getGender() %></td>
			   		   <td><%=x.getAge()%></td>
			   		   <td><%=x.getAppDate() %></td>
			   		   <td><%=x.getEmail() %></td>
			   		   <td><%= x.getPhone()%></td>
			   		   <td><%=x.getDesies() %></td>
			   		   <td><%=s.getName() %></td>
			   		   <td><%=x.getAdress() %></td>
			   		   <td><%=x.getStatus() %></td>
			   		</tr>
			   		<%} %>
			   </tbody>
			 </table>
		</div>
	</div>
</div>
</body>
</html>