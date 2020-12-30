<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlacedSuccessfully.aspx.cs" Inherits="andrewscanteensystem.PlacedSuccessfully" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="Style1.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            text-decoration: underline;
            font-size: large;
            height: 47px;
        }
        .auto-style3 {
            height: 75px;
        }
        .auto-style4 {
            height: 46px;
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
        <a class="nav-link" href="cart.aspx">My Cart</a>
      </li>
        </ul>
    </form>
  </div>
</nav>
    <form id="form1" runat="server">
        <div>
            <br />
            <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your order has been placed successfully.<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please show the receipt while accepting your food.<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thank You.<br /></h4>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Order id: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></b></h5>
            
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Download Receipt"  CssClass="btn btn-dark"/>
            <br />
            <br />

            <br />
            <asp:Panel ID="Panel1" runat="server">
                <table class="auto-style1">
                    <caption>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <tr>
                            <td class="auto-style2"><strong>Receipt</strong></td>
                        </tr>
                    </caption>
                    </tr>
                    <caption>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr>
                            <td class="auto-style3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Order Number</strong>:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                <br />
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Order Date</strong>:
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </caption>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1104px">
                                <Columns>
                                    <asp:BoundField DataField="time" HeaderText="Time" />
                                    <asp:BoundField DataField="sno" HeaderText="S.No." >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productid" HeaderText="Product ID" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productname" HeaderText="Product Name" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="price" HeaderText="Price" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="totalprice" HeaderText="Total Price" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="disprice" HeaderText="Discounted Price" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <br />
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Grand total:
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <caption>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr>
                            <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Declaration</strong>: We declare that this receipt shows the actual price of the goods described inclusive of taxes and that all particulars are true and correct.</td>
                        </tr>
                    </caption>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
