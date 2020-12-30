<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="andrewscanteensystem.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="Style1.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 176px;
        }
        </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="main.aspx">St. Andrew's Canteen</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="menu.aspx">Menu <span class="sr-only">(current)</span></a>
      </li>
      
        <li class="nav-item">
        <a class="nav-link" href="orders.aspx">Start My Order</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="feedback.aspx">Feedback</a>
      </li>
        </ul>
    <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav mr-auto">
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="changepass.aspx">Change Password</a>
          <a class="dropdown-item" href="firstpage.aspx">Logout</a>
          <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="feedbackcheck.aspx" id="swer">Feedback Status</a>

        </div>
      </li>
            
        <li class="nav-item">
        <a class="nav-link" href="addtocart.aspx">My Cart</a>
      </li>
        </ul>
    </form>
  </div>
</nav>
   
    <form id="form1" runat="server">
        <div>
            <div style="margin-left: auto; margin-right: auto; text-align: center;">
                 <h2><asp:Label ID="Label5" runat="server" Text="Confirm Order"></asp:Label></h2>

         
         </div>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;<b> Order ID:</b>&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;<b> Order Date:</b>&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
        </div>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No." />
                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                <asp:BoundField DataField="productname" HeaderText="Name" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            </Columns>
            <HeaderStyle Height="50px" />
        </asp:GridView>
        <br />
        <br />
         <table class="table">
  <thead>
    <tr>
      <th scope="col" class="auto-style1">&nbsp;</th>
      <th scope="col"></th>
      
      
    </tr>
  </thead>
  <tbody>
    <tr>
      &nbsp;&nbsp;&nbsp;&nbsp;<th scope="row" class="auto-style1">Enter Pick Up Time:</th>
      <td>
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
        </td>
      
      
    </tr>
      <tr>
      &nbsp;&nbsp;&nbsp;&nbsp;<th scope="row" class="auto-style1">Total Before Discount:</th>
      <td>
          <asp:Label ID="Label3" runat="server" Visible="True"></asp:Label>
        &nbsp;
        </td>
      
      
    </tr>
    <tr>
     &nbsp;&nbsp;&nbsp;&nbsp; <th scope="row" class="auto-style1">After Discount:</th>
      <td>
          <asp:Label ID="Label4" runat="server">Same As Above</asp:Label>
        &nbsp;
        </td>
      
      
    </tr>
   
  </tbody>
</table>
   


        
      &nbsp;&nbsp; &nbsp;&nbsp; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" CssClass="btn btn-dark"/>
    </form>
</body>
</html>
