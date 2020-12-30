<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="andrewscanteensystem.checktransaction" %>

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
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 464px;
        }
        .auto-style3 {
            text-align: right;
            width: 464px;
            height: 48px;
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style6 {
            width: 200px;
            height: 53px;
        }
        .auto-style7 {
            height: 53px;
        }
        .auto-style10 {
            width: 200px;
            height: 59px;
        }
        .auto-style11 {
            height: 59px;
        }
        .auto-style12 {
            width: 200px;
            height: 70px;
        }
        .auto-style13 {
            height: 70px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="adminmain.aspx">St. Andrew's Canteen</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="Vieworder.aspx">Orders<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="stock.aspx">Stock</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Report.aspx">Reports</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="feedbackadmin.aspx">Feedback</a>
      </li>
        
        </ul>
                 <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>


    <form class="form-inline my-2 my-lg-0">
        <ul class="navbar-nav mr-auto">
       <li class="nav-item dropdown">

        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="details.aspx">Coupons</a>
          
          <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="coupons.aspx" id="swer">Logout</a>

           
  
        </div>
      </li>
            
        
        </ul>
    </form>
  </div>
</nav>
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Reports</h1>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><h6>View Monthly Transactions:</h6></td>
                    <td class="auto-style4">&nbsp;&nbsp; Month:&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>02</asp:ListItem>
                            <asp:ListItem>01</asp:ListItem>
                            <asp:ListItem>04</asp:ListItem>
                            <asp:ListItem>03</asp:ListItem>
                            <asp:ListItem>05</asp:ListItem>
                            <asp:ListItem>06</asp:ListItem>
                            <asp:ListItem>07</asp:ListItem>
                            <asp:ListItem>08</asp:ListItem>
                            <asp:ListItem>09</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year:&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Display Data" CssClass="btn btn-dark" Height="37px" Width="149px" />&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Download Excel File" CssClass="btn btn-dark" Height="37px" Width="222px" />

                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>


        <br />
        <table class="w-100">
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7">&nbsp;&nbsp;        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Show Student Details" CssClass="btn btn-dark" Height="37px" Width="226px" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;                    <asp:Button ID="Button9" runat="server" Text="Hide Student Details" CssClass="btn btn-dark" Height="37px" Width="222px" OnClick="Button9_Click" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Download excel file" CssClass="btn btn-dark" Height="35px" Width="222px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">&nbsp; &nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Show Staff Details" CssClass="btn btn-dark" Height="37px" Width="222px" />&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;                    <asp:Button ID="Button10" runat="server" Text="Hide Staff Details" CssClass="btn btn-dark" Height="37px" Width="222px" OnClick="Button10_Click" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
 <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Download Excel File" CssClass="btn btn-dark" Height="37px" Width="222px" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">&nbsp;&nbsp;        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Show All Transactions" CssClass="btn btn-dark" Height="37px" Width="222px" /> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;                     <asp:Button ID="Button11" runat="server" Text="Hide Order Details" CssClass="btn btn-dark" Height="37px" Width="222px" OnClick="Button11_Click" />&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button8" runat="server" Text="Download Excel File" OnClick="Button8_Click" CssClass="btn btn-dark" Height="37px" Width="222px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br /><br />

</td>
            </tr>
        </table>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No Records" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="Order Id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="dateoforder" HeaderText="Order Date">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Roll no">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Firstname" HeaderText="First Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Lastname" HeaderText="Last Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Course" HeaderText="Course">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Phone" HeaderText="Mobile No">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Stpassword" HeaderText="Password">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="fullname" HeaderText="Full name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Phone" HeaderText="Mobile no">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email ID">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="password" HeaderText="Password">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView><br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="orderid" HeaderText="Order ID" />
                <asp:BoundField DataField="sno" HeaderText="S.No.">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="productname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="dateoforder" HeaderText="Date Of Order">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="disprice" HeaderText="Discount Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
