<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="andrewscanteensystem.addtocart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Style1.css" />
    <style type="text/css">
        .auto-style1 {
            width: 231px;
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
   




         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <div style="margin-left: auto; margin-right: auto; text-align: center;">
                 <h2><asp:Label ID="Label5" runat="server" Text="Your Cart"></asp:Label></h2>

         
         </div><br />
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/orders.aspx">Continue Shopping</asp:HyperLink>
         <br />
         <br />
         <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="205px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="575px">
             <Columns>
                 <asp:BoundField DataField="sno" HeaderText="S.No.">
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="productid" HeaderText="Product ID">
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="productname" HeaderText="Product Name">
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="price" HeaderText="Price">
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                 <ItemStyle HorizontalAlign="Center" />
                 </asp:BoundField>
                 <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
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
      <th scope="row" class="auto-style1">Enter Coupon Code (if any)</th>
      <td>
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button2" runat="server" Text="Apply" OnClick="Button2_Click" CssClass="btn btn-dark" />
          <br />
          <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
      
      
    </tr>
    <tr>
      <th scope="row" class="auto-style1">Discount</th>
      <td>
          <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
      
      
    </tr>
    <tr>
      <th scope="row" class="auto-style1">Final Price</th>
      <td>
          <strike><asp:Label ID="Label3" runat="server"></asp:Label></strike>
&nbsp;
&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
        </td>
      
    </tr>
  </tbody>
</table>
   




         
&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" CssClass="btn btn-dark"/>
   




    </form>

    </body>
    </html>