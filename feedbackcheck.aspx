<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedbackcheck.aspx.cs" Inherits="andrewscanteensystem.feedbackcheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    	<link rel="stylesheet" type="text/css" href="Style1.css" />
    <style type="text/css">
        .auto-style1 {
            width: 51%;
            height: 166px;
            margin-left: 288px;
        }
        .auto-style2 {
            width: 100%;
            height: 134px;
        }
        .auto-style3 {
            font-weight: bold;
            text-align: right;
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
                Hello, <asp:Label ID="Label5" runat="server" Text="Label" ></asp:Label>


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
            &nbsp;&nbsp;&nbsp;<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Feedback Status</h2>
            <br /><br /><br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Your Feedback Id:</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="text-right">&nbsp;</td>
                    <td>
                        <br />&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Check Status" OnClick="Button1_Click" CssClass="btn btn-dark" Height="35px" Width="148px" />
                        <br />
                        
                        
                    </td>
                </tr>
            </table>
        </div><br /><br />
        <table class="auto-style1">
            <tr>
                <td>                        <h5><asp:Label ID="Label1" runat="server"></asp:Label></h5>
</td></tr><tr>
                <td>
                   <h5> <asp:Label ID="Label2" runat="server"></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td>
                    <h5><asp:Label ID="Label3" runat="server"></asp:Label></h5>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server" Height="117px" Width="1099px" Visible="False">
                       <h5> <asp:Label ID="Label4" runat="server"></asp:Label></h5>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
