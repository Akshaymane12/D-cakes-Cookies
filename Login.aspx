<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>    
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src =  "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
    
    <nav class="navbar navbar-inverse">
    <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="Dcakes.aspx">D Cakes</a>
    </div>
    <ul class="nav navbar-nav ">
    
    
    </ul> 
    <ul class="nav navbar-nav navbar-right">
    <li><a href="Home.aspx">Home </a></li>
    <li><a href="Contact.aspx">CONTACT</a></li>
    <li><a href="product1.aspx">Products</a></li>
    <li><a href="About us.aspx">About Us</a></li>
    <li><a href="Feedback.aspx">FeedBack</a></li>
    <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"></span>Sign Up </a></li>
    </ul>
    </div>
    </nav>
 
 
 <div class="container">
  <div class="col-sm-3">    </div>
   <div class="col-sm-6">
   <div class="panel panel-primary">
   <div class="panel-heading">login</div>
   <div class="panel-body">
   <div class="row">
   <div class="col-sm-12">
   <div class="form-group">
   <label>User Id </label>
       <asp:TextBox ID="txtuserid"  CssClass="form-control" runat="server"  placeholder="Enter User ID "></asp:TextBox>
    <div class="form-group">
    <label>Password</label>
        <asp:TextBox ID="txtpass"  CssClass="form-control" runat="server" 
            TextMode="Password" placeholder="Enter Password"></asp:TextBox>
    <div class="form-group"><br />
    
        <asp:Button ID="btnlogin"  CssClass="btn btn-success"  runat="server" 
            Text="login" Font-Bold="False" onclick="btnlogin_Click" />
        <asp:Button ID="btncancel"  CssClass="btn btn-danger" runat="server" Text="Cancel" />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Signup.aspx">Register Here..</asp:LinkButton>
    </div>
    </div>
   </div>
   </div>
   </div>
   
   
   </div>
       <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Forgetpassword.aspx">Forget Password..</asp:LinkButton>
   </div>
   
 
   
   
   
   
   </div>  
   <div class="col-sm-3">   </div>  
 </div>
 
  <footer class="container-fluid text-center jumbotron">
      <p> @DCAKES&COOKIES</p>
         
      
      </footer>
 
 
    
    </form>
</body>
</html>
