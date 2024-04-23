<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>    
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src =  "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
    
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
    <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"></span>Sign Up </a></li>
    <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span>Log In </a></li>
    </ul>
    </div>
    </nav>
 <div class="container">
  <div class="col-sm-3">    </div>
   <div class="col-sm-6">
   <div class="panel panel-primary">
   <div class="panel-heading">Feed Back Form </div></div>
   <div class="panel-body">
   <div class="row">
   <div class="col-sm-12">
   
   <div class="form-group">
   <label>Name </label>
       <asp:TextBox ID="txtname"  CssClass="form-control" runat="server"  placeholder="Enter Your Name"></asp:TextBox>
       
    <div class="form-group">
    <label>E-Mail</label>
        <asp:TextBox ID="txtemailfeed" CssClass="form-control" runat="server" placeholder="Enter E-Mail"></asp:TextBox>
        
      <div class="form-group">
   <label>Contact No -  </label>
       <asp:TextBox ID="txtcontact"  CssClass="form-control" runat="server"  placeholder="Enter Contact number"></asp:TextBox>
         
   <div class="form-group">
   <label>City </label>
       <asp:TextBox ID="txtcity"  CssClass="form-control" runat="server"  placeholder="Enter Your City"></asp:TextBox>
             
         <div class="form-group">
   <label>Suggesion </label>
      
 <asp:TextBox ID="txtsuggesion"  CssClass="form-control" runat="server"  placeholder="Write Here.........."></asp:TextBox>
     
    <div class="form-group"><br />
     <asp:Button ID="btnsubmit"  CssClass="btn btn-success"  runat="server" 
            Text="Submit" Font-Bold="False" onclick="btnsubmit_Click"  />
        <asp:Button ID="btncancel"  CssClass="btn btn-danger" runat="server" 
            Text="Cancel" onclick="btncancel_Click" />

    </div>
    </div>
   </div>
   </div>
   </div>
   </div>
   </div>
   </div>
   </div>
   

   
   </div>
  
   </div>
 <div class="alert alert-danger alert-dismissible">
      <a href="" class="close" data-dismiss="alert" aria-label="close">&times;
      </a>
      <strong> <h3 > Welcome User 
                        Heres The FeedBack</h3> 
      
      <h6>@DCAKES&COOKIES</h6>
      
       </strong>
      </div>

   
   
   
   
   
     
   <div class="col-sm-3">   </div>  
 
 
  <footer class="container-fluid text-center jumbotron">
      <p> @DCAKES&COOKIES</p>
         
      
      </footer>
 
 
    
    </form>
</body>
</html>