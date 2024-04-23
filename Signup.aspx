<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Sign Up Page</title>
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
    <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
    </ul>
    </div>
    </nav>
 
 
  
 <div class="container">
  <div class="col-sm-3">    </div>
   <div class="col-sm-6">
   <div class="panel panel-primary">
   <div class="panel-heading" >Registration</div>
   <div class="panel-body">
   <div class="row">
   <div class="col-sm-12">
   
   
   
   
   <div class="form-group">
    <label>Enter Full Name </label>
        <asp:TextBox ID="txtfullname"  CssClass="form-control" runat="server" 
           placeholder="All Capital"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ErrorMessage="*" ControlToValidate="txtfullname" SetFocusOnError="True"></asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
           ErrorMessage="*" ControlToValidate="txtfullname" SetFocusOnError="True" 
           ValidationExpression="^[a-z  A-Z]+$"></asp:RegularExpressionValidator>
   
   
   <div class="form-group">
    <label>Enter E Mail </label>
        <asp:TextBox ID="txtemail"  CssClass="form-control" runat="server" 
           placeholder="Enter E Mail"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ErrorMessage="*" ControlToValidate="txtemail" SetFocusOnError="True"></asp:RequiredFieldValidator>
   
       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
           ErrorMessage="*" ControlToValidate="txtemail" SetFocusOnError="True" 
           ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
   <div class="form-group">
    <label>Enter Age</label>
        <asp:TextBox ID="txtage"  CssClass="form-control" runat="server" 
           placeholder="Enter Age"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ErrorMessage="*" ControlToValidate="txtage" SetFocusOnError="True"></asp:RequiredFieldValidator>
       <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="*" 
           MaximumValue="90" MinimumValue="14" SetFocusOnError="True" Type="Integer" 
           ControlToValidate="txtage"></asp:RangeValidator>    
       <div class="form-group">
       <label>Gender:
       </label>      
           <asp:DropDownList ID="DropDownList1"  CssClass="form-control" runat="server">
           <asp:ListItem Text="Select" Value="0"></asp:ListItem>
            <asp:ListItem Text="Male" Value="male"></asp:ListItem>
             <asp:ListItem Text="Female" Value="female"></asp:ListItem>
              <asp:ListItem Text="Other" Value="other"></asp:ListItem>
           </asp:DropDownList>  
           
   
   <div class="form-group">
   <label>User Id </label>
       <asp:TextBox ID="txtuserid"  CssClass="form-control" runat="server" placeholder="Enter User Id"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
           ErrorMessage="*" ControlToValidate="txtuserid" SetFocusOnError="True"></asp:RequiredFieldValidator>
    
    <div class="form-group">
    <label>Password</label>
        <asp:TextBox ID="txtpass"  CssClass="form-control" runat="server" 
            TextMode="Password" placeholder="Enter Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="*" ControlToValidate="txtpass" SetFocusOnError="True"></asp:RequiredFieldValidator> 
            
    
    <div class="form-group">
    <label> Re Type Password</label>
        <asp:TextBox ID="txtretypepass"  CssClass="form-control" runat="server" 
            TextMode="Password" placeholder="Re Type Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="*" ControlToValidate="txtretypepass"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" 
            ControlToCompare="txtpass" ControlToValidate="txtretypepass" 
            SetFocusOnError="True"></asp:CompareValidator>
    
    <div class="form-group"><br />
        <asp:Button ID="btnsubmit"  CssClass="btn btn-success"  runat="server" 
            Text="SUBMIT" Font-Bold="False" onclick="btnsubmit_Click" />
        <asp:Button ID="btncancel"  CssClass="btn btn-danger" runat="server" Text="Cancel" />
        
        <asp:Button ID="btnaddnew" CssClass="btn btn-info" runat="server" 
            Text="ADD NEW" onclick="btnaddnew_Click" />
    </div>
    </div>
   </div>
   </div>
   </div>
   
   
   </div>
   <div class="panel-footer">Thank You For Registration </div>
   </div>
   </div>
   
   
   
   
   
   
   </div>  
   <div class="col-sm-3">   </div>  
 </div>
 
 
  
      </div>
      </div>
      </div>
      
 </div>
   
    <footer class="container-fluid text-center jumbotron">
      <p> @DCAKES&COOKIES</p>
         
      
      </footer>
       </form>
</body>
</html>
