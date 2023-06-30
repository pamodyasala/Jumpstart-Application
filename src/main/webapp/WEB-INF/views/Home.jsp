<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Home</title>

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
                <a class="nav-link active" href="index.html">Home
                  <span class="sr-only">(current)</span>
                </a>
              </li> 
              <li class="nav-item ">
                <a class="nav-link" href="products">Our Products</a>
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
    <div class="page-heading products-heading header-text">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="text-content">
              <h4>Jumpstart retail</h4>
              <h2>Make your appoinment</h2>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    <div class="products">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
          <a href="products">view all products <i class="fa fa-angle-right"></i></a>
            <div class="filters">
              <ul>
                  <li class="active" data-filter="*">All Products</li>
              </ul>
            </div>
          </div>
          <div class="col-md-12">
            <div class="filters-content">
                <div class="row grid">
                  <table cellpadding="20" cellspacing="20" style="border:0px solid transparent;">
                    <tr>
                      <td>
                        <div class="product-item">
              <a href="#"><img src="../../images/jbl.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4> JBL Bins</h4></a><br>
                <h6>$ 100</h6>
                <p>High quality sound system. Best for the parties.Boom Boom! Shaka boom.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>Reviews (48)</span>
              </div>
            </div>
                      </td>
                    <td>  
                      <div class="product-item">
              <a href="#"><img src="../../images/Headphones.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>Beam Lights</h4></a>
                <h6>$ 12</h6>
                <p>High quality beam lights. Make the party colorful Best for the parties.Boom Boom! Shaka boom.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>Reviews (16)</span>
              </div>
            </div>
                    </td>
                    <td>
                      <div class="product-item">
              <a href="#"><img src="../../images/product_06.jpg" alt=""></a>
              <div class="down-content">
                <a href="#"><h4>Ice Baby </h4></a>
                <h6>$ 5</h6>
                <p>Small ice babies for the christmas tree. For the winter season.</p>
                <ul class="stars">
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                  <li><i class="fa fa-star"></i></li>
                </ul>
                <span>Reviews (32)</span>
              </div>
            </div>
                    </td>
                    </tr>
                  </table>    
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
    
   

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
