 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%>
 <head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></head>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa fa-hospital-o" aria-hidden="true"></i>   MEDI HOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav   mb-2 mb-lg-0">
    
          <li class="nav-item">
          <a class="nav-link active" href="index.jsp"><span class="glyphicon glyphicon-sign"></span>HOME</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active"  href="doctor.jsp">DOCTOR</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active"  href="view_doctor.jsp">VIEW DOCTOR</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active"  href="patinet.jsp">PATIENT</a>
        </li>

     
        </ul>

   
 </div>
  <form class="d-flex">
              <div class="dropdown ">
                      <button class="btn btn-light   dropdown-toggle" type="button"
                       id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">Admin</button>
                  <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton1">
                     <li><a class="dropdown-item" href="../adml">Logout</a>
                     </li>
                  </ul>
             </div>
        </form>
     
        
</div>
<
</nav>
