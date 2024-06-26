﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>HOme</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  
  body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }
  h3, h4 {
    margin: 10px 0 30px 0;
    letter-spacing: 10px;      
    font-size: 20px;
    color: #111;
  }
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #777;
  }
  #googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(100%);
    filter: grayscale(100%);
  }  
  .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #2d2d30;
    border: 0;
    font-size: 11px !important;
    letter-spacing: 4px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .form-control {
    border-radius: 0;
  }
  textarea {
    resize: none;
  }
  </style>

  
  
  
</head>

   <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

       <form id="form1" runat="server">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="Dcakes.aspx">DCakes</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="product1.aspx">Product</a></li>
        <li><a href="Contact.aspx">Contact</a></li>
        <li><a href="Feedback.aspx">FeedBack</a></li>
        <li><a href="About us.aspx">About Us</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Signup.aspx">Registration</a></li>
            <li><a href="Login.aspx">login</a></li>
            <li><a href="">Media</a><a href="Home.aspx">Home.aspx</a></li> 
          </ul>
        </li>
        <li><a href=""><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="Images/blackya.jpg" alt="dcakes" width="300" height="150">
        <div class="carousel-caption">
          <h3>D CAKES</h3>
          <p>The Choice Of Delight.</p>
        </div>      
      </div>

      <div class="item">
        <img src="Images/crown1.jpg" alt="Chicago" width="300" height="150">
        <div class="carousel-caption">
          <h3>CROWN CAKE</h3>
          <p>The Biggest Cake over City . 17 KG</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="Images/crown2.jpg" alt="Los Angeles" width="300" height="150">
        <div class="carousel-caption">
          <h3>CROWN CAKE</h3>
          <p>D CAKES !</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h3>THE CAKE SHOP</h3>
  <p><em>LOVE AT FIRST BITE !</em></p>
  <p>Cakes hold an important place in all sorts of celebrations from weddings to birthdays to graduations and work events. It seems no celebration is complete without cake! 

As we all know, cakes aren’t only enjoy at parties, but can be enjoyed for no reason at all. If you have a cake business and want to sell more on social media, here are proven marketing messages you can use on platforms like Instagram or Facebook. .</p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>Doll</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="Images/doll.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo" class="collapse">
        <p>A Doll Cake For Kids</p>
        <p>Kids Specisl</p>
        <p>#DCAKES</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>The Crown</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="Images/singlecrown.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo2" class="collapse">
        <p>Crown Cake</p>
        <p>#DCAKES</p>
        <p>GOLDEN </p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Name</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="Images/heart.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
        <p>Heart </p>
        <p>ICE PANEAPPLE</p>
        <p>#DCAKES</p>
      </div>
    </div>
  </div>
</div>

<!-- Container (TOUR Section) -->
<div id="tour" class="bg-1">
  <div class="container">
    
    
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Images/vaishnavi letter.jpg" alt="Paris" width="400" height="300">
          <p><strong>HEART CAKE</strong></p>
          <p>STRAWBERRY FLAVOUR</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Place Order</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Images/doublelayer.jpg" alt="New York" width="400" height="300">
          <p><strong>DOUBLE LAYER </strong></p>
          <p>YOU LOVE IT ! </p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Place Order</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Images/blackforest.jpg" alt="San Francisco" width="400" height="300">
          <p><strong>BLACK FOREST</strong></p>
          <p>THE CHOCO BITE </p>
          <button class="btn" ><a href="Admin.aspx">Place Order</a></button>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> ORDER</h4>
        </div>
        <div class="modal-body">
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Quantity, 320rs per person</label>
              <input type="number" class="form-control" id="psw" placeholder="How many?">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
              <button type="submit" class="btn btn-block">Pay 
                <span class="glyphicon glyphicon-ok"></span>
              </button>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container">
  

  <div class="container">
 
   <div class="col-sm-6">
   <div class="panel panel-primary">
   <div class="panel-heading">Complaint Form Form </div></div>
   <div class="panel-body">
   <div class="row">
   <div class="col-sm-12">
   
   <div class="form-group">
   <label>Name </label>
       <asp:TextBox ID="txtnamecom1"  CssClass="form-control" runat="server"  placeholder="Enter Your Name"></asp:TextBox>
       
    <div class="form-group">
    <label>E-Mail</label>
        <asp:TextBox ID="txtemailcom1" CssClass="form-control" runat="server" placeholder="Enter E-Mail"></asp:TextBox>
        
        <div class="form-group">
   <label>Suggesion </label>
      
 <asp:TextBox ID="txtcomplent"  CssClass="form-control" runat="server"  placeholder="Write Here.........."></asp:TextBox>
     
    <div class="form-group"><br />
     <asp:Button ID="btnsubmit"  CssClass="btn btn-success"  runat="server" 
            Text="send" Font-Bold="False" onclick="btnsubmit_Click"  />
        <asp:Button ID="btncancel"  CssClass="btn btn-danger" runat="server" 
            Text="Cancel" />

    </div>
    </div>
   </div>
   </div>
   </div>
   </div>
   </div>
  </div>
  </div>






  <br>
  <h3 class="text-center">Our Beanches Near Sangli</h3>  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">BAMBAVADE</a></li>
    <li><a data-toggle="tab" href="#menu1">SONI</a></li>
    <li><a data-toggle="tab" href="#menu2">Bhose</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>BAMBAVADE THE MAIN BRANCH</h2>
      <p>Here , The All Product Are made In this branch</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>SONI , Tal-Miraj Dist-Sangli</h2>
      <p> Our First Branch   </p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Bhose</h2>
      <p> Our Second Popular Branch In Miraj</p>
    </div>
  </div>
</div>

<!-- Image of location/map -->
<div class="row">

       <div class="col-sm-3">
       
       </div>
       <div class="col-sm-3">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d407.81527080494175!2d74.49609263816382!3d17.086121428304104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc16d1f59913aa7%3A0xb804a88db58dd0d6!2sD%20cakes!5e1!3m2!1sen!2sin!4v1682954254778!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
</div>

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>D CAKES COOKIES </p> 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

       </form>

</body>
</html>