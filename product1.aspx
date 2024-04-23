<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product1.aspx.cs" Inherits="product1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Product</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
    <ul class="nav navbar-nav">
    <li><a href="Home.aspx">Home</a></li>
    <li><a href="Contact.aspx">CONTACT</a></li>
    <li><a href="product1.aspx">Products</a></li>
    <li><a href="">FeedBack</a></li>
    
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="About us.aspx">About us</a></li>
    <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"> </span> Signup</a></li>
    <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"> </span> Login</a></li>
    </ul>
    </div>
    </nav>
   
   <div class="row" style="padding-top:50px">
     <div class="col-sm-3 col-md-3">
         <div class="thumbnail">
             <img src="Images/doll.jpg" alt="" />
             <div class="caption">
                 <div class="probrand">Product Brand </div>
                 <div class="proname">Product Name <asp:Label ID="txtdoll" runat="server" Text="Doll"></asp:Label></div>
                 <div class="prodesc">Product Description 
                 <asp:Button ID="Button1" runat="server" Text="Buy Now" onclick="Button1_Click" 
                         BackColor="#FF9933" /></div>
                 <div class="proprice"><asp:Label ID="lblprice" runat="server" Text="450"></asp:Label></div>
             </div>    
         </div>

       </div>
        <div class="col-sm-3 col-md-3">
         <div class="thumbnail">
             <img src="Images/singlecrown.jpg" alt="" />
             <div class="caption">
                 <div class="probrand">Product Brand </div>
                 <div class="proname">Product Name<asp:Label ID="lblcrown" runat="server" 
                         Text="Crown"></asp:Label> </div>
                 <div class="prodesc">Product Description 
                     <asp:Button ID="Button2" runat="server" Text="BuyNow" onclick="Button2_Click" 
                         BackColor="#FF9933" />
                      </div>
                 <div class="proprice"><asp:Label ID="lblprice1" runat="server" Text="600"></asp:Label></div>
             </div>    
         </div>

       </div>
       <div class="col-sm-3 col-md-3">
         <div class="thumbnail">
             <img src="Images/heart.jpg" alt="" />
             <div class="caption">
                 <div class="probrand">Product Brand </div>
                 <div class="proname">Product Name <asp:Label ID="lblheart" runat="server" Text="Heart"></asp:Label></div>
                 <div class="prodesc">Product Description<asp:Button ID="Button3" runat="server" 
                         Text="BuyNow" onclick="Button3_Click" BackColor="#FF9933" /></div>
                 <div class="proprice"><asp:Label ID="lblprice2" runat="server" Text="500"></asp:Label></div>
             </div>    
          </div>
        </div>
       <div class="col-sm-3 col-md-3">
         <div class="thumbnail">
            <img src="Images/pestries.jpg" alt="" />
              <div class="caption">
                 <div class="probrand">Product Brand </div>
                 <div class="proname">Product Name<asp:Label ID="lblpestri" runat="server" Text="pestri"></asp:Label> </div>
                 <div class="prodesc">Product Description<asp:Button ID="Button4" runat="server" 
                         Text="BuyNow" onclick="Button4_Click" BackColor="#FF9933" /></div>
                 <div class="proprice"><asp:Label ID="lblprice3" runat="server" Text="120"></asp:Label></div>
              </div>    
           </div>
         </div>
        </div>

   
    
      
       
    </form>
</body>
</html>

