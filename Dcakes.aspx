<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Dcakes.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <!-- Theme Made By www.w3schools.com -->
  <title>D cakes & Cookies</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
   
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  
  }
  </style>
</head>
<body>
    <form id="form1" runat="server">
   
    <header class="container-fluid text-center jumbotron" >
      <h1>D CAKES & COOKIES</h1>
    <p>The Choice Of Delight</p>
   
    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="Home.aspx">HOME</a>
    </div>
    <ul class="nav navbar-nav">
    <li><a href="Contact.aspx">CONTACT</a></li>
    <li><a href="product1.aspx">Products</a></li>
    <li><a href="Feedback.aspx">FeedBack</a></li>
    
    </ul> 
    <ul class="nav navbar-nav navbar-right">
    <li><a href="About us.aspx">About Us</a></li>
    <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"> </span> Signup</a></li>
    <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"> </span> Login</a></li>
    </ul>
    </div>
    </nav>
  </header>
   
    <div class="container">
    <div class="row">
    <div class="col-sm-5">
       
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="Images/IMG_20220321_134530.jpg" alt="Los Angeles" 
                    style="width:100%">
            </div>
            <div class="item">
                <img src="Images/20220629_085339_0000.png" alt="Red Dragon" style="width:100%">
            </div>
            <div class="item">
                <img src="Images/20220410_102249_0000.png" alt="Birthday" 
                    style="width:100%">
            </div>
            <div class="item">
                <img src="Images/kids.jpg" alt="Kids" 
                    style="width:100%">
            </div>
            <div class="item">
                <img src="Images/babyshower.jpg" alt="BabyShower" 
                    style="width:100%">
            </div>
            <div class="item">
                <img src="Images/letter.jpg"alt="LetterCake" 
                    style="width:100%">
            </div>
            <div class="item">
                <img src="Images/ahoo.jpg" alt="Marathi" 
                    style="width:100%">
            </div>
            
            
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left">
        </span>
        <span class="sr-only">Previous</span> </a><a class="right carousel-control"href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
            </span>
            <span class="sr-only">Next</span> </a>
    </div>
    
     </div>
     <div class="col-sm-7">
     <div class="well">
       <p>
          <h3 > <strong> D Cakes Special :- </strong></h3></p>
            
       </div>
       <div class="well">
              <p>
              We Deliver Fresh and Quality Cakes At Your Door </p> 
       </div>
       <div class="well">
                <p>
                 All Types Of cakes We Make </p>
       </div>
        <div class="well">
                <p>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Signup.aspx">ORDER NOW </asp:HyperLink>
                 </p>
       </div>
       </div>
      </div>
       </div>
        
        
   
    
       <div class="container text-center">
       <h3 class=" alert-info"><strong> Product </strong>  </h3>
       
       <div class="row">
       <div class="col-sm-3">
                 <img src="Images/png_20220329_200607_0000.png" class="img-responsive" style="width:100%" alt="img" />
                 <p> Wedding Cakes</p>
       </div>
       <div class="col-sm-3">
                 <img src="Images/20220410_103044_0000.png" class="img-responsive" style="width:100%" alt="img" />
                 <p>  Birthday Cake</p>
       </div>
        
        <div class="col-sm-3">
                 <img src="Images/20220409_201942_0000.png" class="img-responsive" style="width:100%" alt="img" />
                 <p>Anniversary Cake</p>
       </div>
        <div class="col-sm-3">
                 <img src="Images/babyshower.jpg" class="img-responsive" style="width:100%" alt="img" />
                 <p>  Baby Shower </p>
       </div>
        </div>
        
       <div class="row">
       <div class="col-sm-3">
                 <img src="Images/kids.jpg" class="img-responsive" style="width:100%" alt="img" />
                 <p>  Kids special </p>
       </div>
       <div class="col-sm-3">
                 <img src="Images/ahoo.jpg" class="img-responsive" style="width:100%" alt="img" />
                 <p>  Marathi Special </p>
       </div>
       <div class="col-sm-3">
                 <img src="Images/letter.jpg" class="img-responsive" style="width:100%" alt="img" />
                 <p>  Letter Cake</p>
       </div>
       </div>
      </div>    
              
      <footer class="container-fluid text-center jumbotron">
      <p> @D CAKES&COOKIES</p>
        
      
      </footer>
      
       
    </form>
</body>
</html>

