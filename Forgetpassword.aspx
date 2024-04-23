<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgetpassword.aspx.cs" Inherits="Forgetpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgetpassword</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>    
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src =  "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
    <li><a href="Product.aspx">Products</a></li>
    <li><a href="">FeedBack</a></li>
    
    </ul> 
    <ul class="nav navbar-nav navbar-right">
    <li><a href="Mycart.aspx">My Cart</a></li>
   
    <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"> </span> Login</a></li>
    </ul>
    </div>
    </nav>
  </header>
  </div>
 
 
       <div class="container">
       <div class="form-horizontal">
       <h2>Recover Password</h2>
       <hr />
       <h3>Please Enter Your Email Address,We Will Send you the Recovery Link For You password</h3>
       <div class="form group">
           <asp:Label ID="lblemail"  CssClass="col-md-2 control-label" runat="server" Text=" Your Email Address"></asp:Label>
           <div class="col-md-3">
               <asp:TextBox ID="txtemailid" CssClass="form-control" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="Text-danger" runat="server" 
                   ErrorMessage="Enter Your Email" ControlToValidate="txtemailid"></asp:RequiredFieldValidator>
           
           </div>
       </div>
       <div class="form group">
            <div>
            <div class="col-md-2"> </div>
            
             <div class="col-md-6">
                 <asp:Button ID="btnresetpass"  CssClass="btn btn-default" runat="server" 
                     Text="Send" onclick="btnresetpass_Click" />
              </div>
            
            </div>
            
       </div>
       </div>
       </div>
          
    
    </form>
    <footer class="container-fluid text-center jumbotron">
      <p> @D CAKES&COOKIES</p>
        
      
      </footer>
</body>
</html>
