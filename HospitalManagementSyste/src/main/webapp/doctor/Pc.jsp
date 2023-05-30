<%@page import="com.modal.AppO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.AppoDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%>

 <%@include file="../css.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Patinet Page</title>

 <style type="text/css">
.backimg{
background:url("../img/hosp.jpg");
height: 20vh;width:100%;
background-size: cover;
background-repeat: no-repeat;

}
.paint-card{
box-shadow: 0 0 10px gray;
}
</style>
</head>
<body>
<c:if test="${empty doctorObj }">
<c:redirect url="doctor_login.jsp"></c:redirect>
</c:if>
 <%@include file="navabr.jsp" %>
<div class="container-fuild backimg p-5">
<p class="text-center fs-2 text-white"></p> 
</div>
      <div class="row">
		<div class="col-md-6 offset-md-3 p-5 mt-5">
		     <div class="card paint-card">
		         <div class="card-body">
		         <%    int id=Integer.parseInt(request.getParameter("id"));
		         List<AppO> l=AppoDao.getAppomineInfoById(id);
		         for(AppO x:l){
		         
		         %>
		         	<p class="text-center text-success fs-4"><b>Patinet Deatil</b></p>
		         	   <form class="row g-3" action="../cmment" method="post">
		         	   <div class="col-md-6">
		         	    <label class="form-lable">Name</label>
		         	    <input type="text" name="name" readonly value="<%=x.getFullname()%>" class="form-control">
		         	   </div>
		         	   <div class="col-md-6">
		         	   <lable class="form-lable">Age</lable>
		         	   <input type="text" name="age"  readonly value="<%=x.getAge() %>" class="form-control">
		         	   </div>
		         	   <div class="col-md-6 mt-3">
		         	   <label for="form-lable">Mobile No</label>
		         	   <input type="text" name="mobno" readonly value="<%=x.getPhone() %>" class="form-control">
		         	   </div>
		         	   <div class="col-md-6">
		         	   <label class="form-lable">Diseas</label>
		         	   <input type="text" name="dies" readonly value="<%=x.getDesies() %>"  class="form-control">
		         	   </div>
		         	   <div class="col-md-12 mt-2">
		         	   <label>Comment</label>
		         	   <textarea rows="3" cols=""required name="com" class="form-control"></textarea>
		         	   </div>
		         	   <input type="hidden" name="did" value="<%=x.getDoctorId()%>">
		         	   <input type="hidden" name="uid" value="<%=x.getUser_id() %>">
		         	   <button type="submit" class="mt -3 btn btn-primary col-md-6 offset-md-3">Submit</button>
		         	   </form>
		         	   <%} %>
		         </div>
		     </div>
		</div>
      </div>
</body>
</html>