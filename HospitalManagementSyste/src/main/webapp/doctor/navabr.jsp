<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@page isELIgnored="false"%><head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa fa-hospital-o" aria-hidden="true"></i> MEDI HOME</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
 
      
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">HOME</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="paitnet.jsp">PATIENT</a>
        </li>
          </ul>
       <form class="d-flex">
    <div class="dropdown">
  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
      <i class="fa fa-user-circle-o" aria-hidden="true"></i>${doctorObj.name}
  </button>
 <ul class="dropdown-menu dropdown-menu-end">
    <li><a class="dropdown-item" href="../logout">Logout</a></li>
    <li><a class="dropdown-item" href="edit.jsp">Edit Profile</a></li>
  
  </ul>
</div>
</form>
    </div>
  </div>
</nav>