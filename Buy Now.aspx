<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Buy Now.aspx.cs" Inherits="Buy_Now" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>D Cakes & Cookies</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>    
<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
<script src =  "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
   

      
   
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
   <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"> </span> log In</a></li>
    <li><a href="Signup.aspx"><span class="glyphicon glyphicon-log-in"> </span> Signup</a></li>
    <li> 
        
    </ul>
    </div>
    </nav>
  
   
   
    
   
   
   
   
        <div class="container">
  <div class="col-sm-3">    </div>
   <div class="col-sm-6">
   <div class="panel panel-primary">
   <div class="panel-heading">Purchase Procedure
       </div>
   <div class="panel-body">
   <div class="row">
   <div class="col-sm-12">
   <div class="form-group">
   <label>Customer Name</label>
       <asp:TextBox ID="txtcustomername"  CssClass="form-control" runat="server"  placeholder="Enter Your Name"></asp:TextBox>
       
       
    <div class="form-group">
    <label>Email Address</label>
        <asp:TextBox ID="txtcustomeremailid"  CssClass="form-control" runat="server" placeholder="Enter Email Address"></asp:TextBox>
    <div class="form-group">
    
    <div class="form-group">
    
        <label>Mobile Number</label>
        <asp:TextBox ID="txtcustomermobile"  CssClass="form-control" runat="server" placeholder="Enter Mobile Number"></asp:TextBox>
     <br />
      <label>QUANTITY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
        &nbsp;<asp:DropDownList ID="ddlquantity" runat="server" Height="19px" 
            Width="68px" DataSourceID="SqlDataSource2" DataTextField="quantity" 
            DataValueField="quantity">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DBDCAKESConnectionString %>" 
            SelectCommand="SELECT [quantity] FROM [manageproduct]"></asp:SqlDataSource>
&nbsp;Weight -
        <asp:DropDownList ID="ddlweight" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="weight" DataValueField="weight" Height="19px" Width="111px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DBDCAKESConnectionString %>" 
            SelectCommand="SELECT [weight] FROM [manageproduct]"></asp:SqlDataSource>
        <br />
       <label>Flavour&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
        &nbsp;<asp:DropDownList ID="ddlflavour" runat="server" 
            Height="19px" Width="94px" DataSourceID="SqlDataSource3" 
            DataTextField="flavour" DataValueField="flavour">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DBDCAKESConnectionString %>" 
            SelectCommand="SELECT [flavour] FROM [manageproduct]"></asp:SqlDataSource>
        <br />


        <label>Delivery Date</label>
        <asp:TextBox ID="txtdeliverydate" runat="server" placeholder="Choose Date"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1"
            runat="server" Height="17px" Width="23px" 
            ImageUrl="~/Images/calender.png" onclick="ImageButton1_Click" />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
            ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" 
            onselectionchanged="Calendar1_SelectionChanged" Visible="False" Width="350px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
            <br />
         <label>Dilivery Address</label>  
        <asp:TextBox ID="txtdiliveryaddress"  CssClass="form-control"  runat="server" placeholder="Enter Dilivery Address "></asp:TextBox>

        <label>Price</label>
        <asp:TextBox ID="txtprice"  CssClass="form-control"  runat="server" 
            placeholder="Enter Price" ></asp:TextBox>

            <label>product name</label>
        <asp:TextBox ID="txtproductname"  CssClass="form-control" runat="server" placeholder=""></asp:TextBox>

        

        <div class="form-group"><br />
     <asp:Button ID="btnsubmit"  CssClass="btn btn-success"  runat="server" 
            Text="Place Order" Font-Bold="False" onclick="btnsubmit_Click"  />

            Cash On Delivery Available only.
    </div>
    <asp:TextBox ID="txtdatetime" 
           runat="server" ></asp:TextBox>Todays Date

    <div class="form-group">
    
  
        
      
       </div>
      
      
      
        
    
    </div>
   </div>
   </div>
   </div>
   </div>
   
   </div>
   <div class="panel-footer"><label id="labelinvalid">@Dcakes&cookies</label></div>
   </div>
    </div>
    </div>     
    </div>
     
      
       
       
      
       
      
      </footer>
      
       
      <footer class="container-fluid text-center jumbotron">
      <p> @D CAKES&COOKIES</p>
        
      
      </footer>
      
       
    </form>
</body>
</html>