<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

   <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Add Appointment</title>

    <!-- Bootstrap core CSS -->
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--

TemplateMo 546 Sixteen Clothing

https://templatemo.com/tm-546-sixteen-clothing

-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../../css/fontawesome.css">
    <link rel="stylesheet" href="../../css/templatemo-sixteen.css">
    <link rel="stylesheet" href="../../css/owl.css">

  </head>

  <body>

    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->

    <!-- Header -->
    <header class="">
      <nav class="navbar navbar-expand-lg">
        <div class="container">
          <a class="navbar-brand" href="index.html"><h2>Jump <em>Start</em></h2></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link " href="Home">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item ">
                <a class="nav-link active" href="products">Our Products</a>
              </li>
              <sec:authorize access="hasRole('Users')">
              <li class="nav-item">
                <a class="nav-link" href="about">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact">Contact Us</a>
              </li>
              </sec:authorize>
              <sec:authorize access="hasRole('Administrator')">
              <li class="nav-item">
                <a class="nav-link" href="users">Administration</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="new_car">Add Product</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="vieworder">Orders</a>
              </li>
              </sec:authorize>
              <li class="nav-item">
                <a class="nav-link" href="logout">Logout</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <!-- Page Content -->
    <div class="page-heading contact-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>Jumpstart Users</h4>
              <h2>Add Your Appointment here!</h2>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    <div class="send-message">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-heading">
              <h2>BOOK YOUR APPOINTMENT,</h2>
            </div>
          </div>
          <div class="col-md-8">
            <div class="contact-form">
                <sf:form action="/orderdone" method="post" modelAttribute="jdata">
                    <h3>Enter Product Id:</h3>
                    <sf:input path="Pid" class="form-control"/><br>
                    <h3>Enter Your Name:</h3>
                    <sf:input  path="Name" class="form-control"/><br>
                    <h3>Choose Your Appointment Date:</h3>
                    <sf:input type="date" path="Date" class="form-control"/> <br>
                    <h3>Enter Your Mobile No:</h3>
                    <sf:input path="mobileno" class="form-control"/><br>
                    <input type="submit" value="Add">
                </sf:form>

            </div>
          </div>
          <div class="col-md-4">
            <ul class="accordion">
              <li>
                  <a>Terms & Conditions for the appointment</a>
                  <div class="content">
                      <p>Aftewr adding the appintment to a product you can collect the goods from our any shop in any area.<br><br>Please return the item on time to avoid the product traffice.</p>
                  </div>
              </li>
             
            </ul>
          </div>
        </div>
      </div>
    </div>

   

    
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="inner-content">
              <p>Copyright &copy; 2022 Jumpstart retail Co., Ltd.</p>
            </div>
          </div>
        </div>
      </div>
    </footer>

 <!-- Bootstrap core JavaScript -->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <!-- Additional Scripts -->
    <script src="../../js/custom.js"></script>
    <script src="../../js/owl.js"></script>
    <script src="../../js/slick.js"></script>
    <script src="../../js/isotope.js"></script>
    <script src="../../js/accordions.js"></script>

    <script language = "text/Javascript"> 
      cleared[0] = cleared[1] = cleared[2] = 0; //set a cleared flag for each field
      function clearField(t){                   //declaring the array outside of the
      if(! cleared[t.id]){                      // function makes it static and global
          cleared[t.id] = 1;  // you could use true and false, but that's more typing
          t.value='';         // with more chance of typos
          t.style.color='#fff';
          }
      }
    </script>


  </body>

</html>

