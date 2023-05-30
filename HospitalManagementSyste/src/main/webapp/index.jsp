<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="css.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<style>
.pain-card{
box-shadow: 0 0 10px gray;
}
</style>

<body>
<%@include file="navbar.jsp" %>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
     <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/s1.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/s2.jpg" class="d-block w-100" alt="..."height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/s3.jpg" class="d-block w-100" alt="..."height="500px">
    </div>
      <div class="carousel-item">
      <img src="img/s4.jpg" class="d-block w-100" alt="..."height="500px">
    </div>
      <div class="carousel-item">
      <img src="img/s5.jpg" class="d-block w-100" alt="..."height="500px">
    </div>
 
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
<div class="container p-3">
<p class="text-center fs-2"><b>Key Feature Of Hospital</b></p>
  <div class="row">
     <div class="col-md-8 p-5">
           <div class="row">
                <div class="col-md-6 mt-2">
                    <div class="card pain-card">
                        <div class="card-body">
                         <p class=" fs-5">100 % Safety</p>
                               <p>Recruiting, training, and supervising medical staff.
                                Ensuring compliance with patient privacy 
                                federal, state, and local regulations.</p>
                        </div>
                       </div>
                </div>
                <div class="col-md-6 mt-2">
                      <div class="card pain-card">
                        <div class="card-body">
                         <p class=" fs-5">Clean Enviroment</p>
                               <p>Patient Safety - a fundamental component for Universal Health Coverage. 
                               Safety of patients during the provision of health services .</p>
                        </div>
                       </div>
                </div>
                 <div class="col-md-6 mt-2">
                       <div class="card pain-card">
                        <div class="card-body">
                         <p class=" fs-5">Friendly Doctor</p>
                               <p>Fast, friendly and accurate care for you.
                               Small enough to care. Large enough to heal
                               </p>Fast. Friendly. Accurate. For all patients.
                        </div>
                       </div>
                </div>
                 <div class="col-md-6 mt-2">
                       <div class="card pain-card">
                        <div class="card-body">
                         <p class=" fs-5">Medical Recarch</p>
                               <p>Recruiting, training, and supervising medical staff.
                                Ensuring compliance with patient privacy 
                                federal, state, and local regulations.</p>
                        </div>
                       </div>
                </div>
          </div>
     
     </div>
     <div class="col-md-4">
     <img alt="NOt" src="img/subodh.jpg"  width="400px" height="400px">
     </div>
  </div>
 
  
</div>
<hr>
<div class="container p-2">
<p class="text-center fs-2"><b>Our Team</b></p>

           <div class="row">
                <div class="col-md-4">
                    <div class="card pain-card">
                        <div class="card-body text-center">
                         <img alt="NOt" src="img/smita.jpg"  width="400px" height="400px">
                         <p class="fx-bold fx-5"><b>Dr.Smita Temgire</b></p>
                         <p class="fx-7">(CEO & Chairman)</p>
                         
                       
                        </div>
                       </div>
                </div>
                <div class="col-md-4">
                      <div class="card pain-card">
                        <div class="card-body text-center">
                         <img alt="NOt" src="img/Ravi.jpg"  width="400px" height="400px">
                         <p class="fx-bold fx-5"><b>Dr.Shantanu Temgire</b></p>
                         <p class="fx-7">(M.B.B.S)</p>
                         
                        </div>
                       </div>
                </div>
                 <div class="col-md-4">
                       <div class="card pain-card">
                       <div class="card-body text-center">
                         <img alt="NOt" src="img/sarik.jpg"  width="400px" height="400px">
                         <p class="fx-bold fx-5"><b>Dr.Ritika Temgire</b></p>
                         <p class="fx-7">(B.A.M.S)</p>
                         
                        </div>
                </div>
                
          </div>
     
    
  </div>
 </div>
 <%@include file="footer.jsp" %>
  


</body>
</html>