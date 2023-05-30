<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%><head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa fa-hospital-o" aria-hidden="true"></i> MEDI HOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-1 mb-lg-0">
    
    <c:if test="${empty userObj }">
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admis_login.jsp"><span class="glyphicon glyphicon-sign"></span>ADMIN</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTOR</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="User_appoiment.jsp">APPOTPETMINT</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="User_login.jsp">USER</a>
        </li>
       </c:if> 
        
        
        <c:if test="${not empty userObj }">
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="User_appoiment.jsp">APPOINTMENT</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="view_appoiment.jsp">VIEW APPOINTMENT</a>
        </li>
       
    <div class="dropdown">
  <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
      <i class="fa fa-user-circle-o" aria-hidden="true"></i>${userObj.name}
  </button>
 <ul class="dropdown-menu dropdown-menu-end">
    <li><a class="dropdown-item" href="userlogout">Logout</a></li>
    <li><a class="dropdown-item" href="changepass.jsp">Change Password</a></li>
  
  </ul>
</div>
        </c:if>
        
        
        
      </ul>
      
    </div>
  </div>
</nav>