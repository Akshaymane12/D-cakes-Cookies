<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Employee Page</title>
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
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #f4511e;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="Dcakes.aspx">D CAKES</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        
    <li><a  class="navbar-brand" href="Admin.aspx">Admin</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="jumbotron text-center">
  <h1> Add Or Manage Employee</h1>
   </div>


    <form id="form1" runat="server">
    



     <div>
         <div class="row">
         <div class="col-sm-1"></div>
         <div class="col-sm-1"></div>
         <div class="col-sm-4"><asp:TextBox ID="txtempid" CssClass="form-control" runat="server" placeholder="ENTER EMPLOYEE ID"></asp:TextBox></div>
          <div class="col-sm-1"></div>
         <div class="col-sm-4"><asp:TextBox ID="txtempname" CssClass="form-control" runat="server" placeholder="ENTER FULL NAME"></asp:TextBox></div>
        
         </div>  <br />
         <div class="row">
         <div class="col-sm-2">
             <asp:Calendar ID="Calendar1" runat="server" 
            onselectionchanged="Calendar1_SelectionChanged" Visible="False">
        </asp:Calendar></div>
         
         <div class="col-sm-4">
         <asp:TextBox ID="txtdateofbirth" CssClass="form-control" runat="server" placeholder="DATE OF BIRTH"></asp:TextBox></div>
         <div class="col-sm-1">
         <asp:ImageButton ID="ImageButton1"
            runat="server" Height="30px" Width="39px" 
            ImageUrl="~/Images/calender.png" onclick="ImageButton1_Click" />
         </div>
         <div class="col-sm-4"><asp:TextBox ID="txtaddress" CssClass="form-control" runat="server" placeholder="ADDRESS"></asp:TextBox></div>

         </div><br />
         <div class="row">
         <div class="col-sm-2"></div>
         
         <div class="col-sm-4"><asp:TextBox ID="txtemailid" CssClass="form-control" runat="server" placeholder="EMAIL ID"></asp:TextBox></div>
         <div class="col-sm-1"></div>
         <div class="col-sm-4"><asp:TextBox ID="txtcontact" CssClass="form-control" runat="server" placeholder="CONTACT"></asp:TextBox></div>
         
         </div><br />
         <div class="row">
         <div class="col-sm-2">
         <asp:Calendar ID="Calendar2" runat="server" 
             Visible="False" onselectionchanged="Calendar2_SelectionChanged">
        </asp:Calendar>
         </div>
         <div class="col-sm-4"><asp:DropDownList ID="ddlgender"  CssClass="form-control" runat="server">
           <asp:ListItem Text="GENDER" Value="0"></asp:ListItem>
            <asp:ListItem Text="Male" Value="male"></asp:ListItem>
             <asp:ListItem Text="Female" Value="female"></asp:ListItem>
              <asp:ListItem Text="Other" Value="other"></asp:ListItem>
           </asp:DropDownList>  </div>
           <div class="col-sm-1"></div>
         <div class="col-sm-4"><asp:TextBox ID="txtage" CssClass="form-control" runat="server" placeholder="AGE"></asp:TextBox></div>
         
         </div><br />
         <div class="row">
         <div class="col-sm-2"></div>
         <div class="col-sm-4"><asp:TextBox ID="txtstate" CssClass="form-control" runat="server" placeholder="STATE"></asp:TextBox></div>
         <div class="col-sm-1"></div>
         <div class="col-sm-4"><asp:TextBox ID="txtcity" CssClass="form-control" runat="server" placeholder="CITY"></asp:TextBox></div>
         
         </div><br />
         <div class="row">
         <div class="col-sm-2"></div>
         <div class="col-sm-4"><asp:TextBox ID="txtjoindate" CssClass="form-control" runat="server" placeholder="JOINING DATE"></asp:TextBox></div>
           <div class="col-sm-1">
           <asp:ImageButton ID="ImageButton2"
            runat="server" Height="31px" Width="40px" 
            ImageUrl="~/Images/calender.png" onclick="ImageButton2_Click" />
           </div>
         <div class="col-sm-4"><asp:TextBox ID="txtsalary" CssClass="form-control" runat="server" placeholder="SALARY"></asp:TextBox></div>
       
         </div><br />
         <div class="row">
         <div class="col-sm-2">
         
         </div>
         <div class="col-sm-4"><asp:DropDownList ID="ddlpost"  CssClass="form-control" runat="server">
           <asp:ListItem Text="POST" Value="0"></asp:ListItem>
            <asp:ListItem Text=" COMPANY MANAGER" Value="COMPANY MANAGER"></asp:ListItem>
            <asp:ListItem Text="PRODUCT MANAGER" Value="MANAGER"></asp:ListItem>
            <asp:ListItem Text="ACCOUNTANT" Value="ACCOUNTANT"></asp:ListItem>
             <asp:ListItem Text="COOK" Value="COOK"></asp:ListItem>
             <asp:ListItem Text="CAKE DESIGNER" Value="CAKE DESIGNER"></asp:ListItem>
              <asp:ListItem Text="DELIVERY BOY" Value="DELIVERY BOY"></asp:ListItem>
              <asp:ListItem Text="HELPER" Value="HELPER"></asp:ListItem>
              <asp:ListItem Text="SELLER" Value="SELLER"></asp:ListItem>
           </asp:DropDownList>  </div>
                   <div class="col-sm-2"></div>
         <div class="col-sm-1"><asp:Button ID="Button1"  CssClass="btn btn-success"  
                 runat="server" Text=" Submit " Font-Bold="False" onclick="Button1_Click" /></div>
          <div class="col-sm-1"><asp:Button ID="btncancel"  CssClass="btn btn-danger" 
                  runat="server" Text="Cancel" onclick="btncancel_Click"  /></div>
          <div class="col-sm-1">
           <div class="col-sm-1"><asp:Button ID="Button2"  CssClass="btn btn-primary" 
                  runat="server" Text="Manage"  /></div>
           </div>
          </div><br />

       <div class="row">
         <div class="col-sm-1">  
      <asp:GridView ID="empgrid" runat="server" CssClass="table" BackColor="White" 
                 BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                 ForeColor="Black" GridLines="Horizontal">
          <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
          <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
             </asp:GridView>
      
     </div>
     </div>
        
       


     </div>
   
    </form>
</body>
</html>
