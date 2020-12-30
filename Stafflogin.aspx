<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stafflogin.aspx.cs" Inherits="andrewscanteensystem.Teacherlogin" %>

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
            height: 40px;
        }
        .auto-style2 {
            height: 40px;
            width: 141px;
            text-align:right;
        }
        .auto-style4 {
            height: 33px;
            width: 141px;
            text-align: right;
        }
        .auto-style5 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br /><br /><br /><br /><br /><br />
        <br /><br />
   <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-4  col xs-12">

            </div>
            <div class="col-md-4 col-sm-4  col xs-12">
               <form class="form-container" style="border:1px solid;">
  <h2>&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Staff Login</h2><br />

                   <table class="w-100">
                       <tr>
                           <td class="auto-style2">Full Name:</td>
                           <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</td>
                       </tr>
                       <tr>
                           <td class="auto-style2">Password:
</td>
                           <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox> </td>
                       </tr>
                       <tr>
                           <td class="auto-style4">
          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Forgetpass.aspx">Forgot Password?</asp:HyperLink>

                           </td>
                           <td class="auto-style5"></td>
                       </tr>
                   </table>

  
                   <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="btn btn-dark btn-block " OnClick="Button1_Click"/>
  
</form>
            
            <div>
                Not a member? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Staffreg.aspx">Sign Up</asp:HyperLink>
            </div>
                <div>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                </div>
              
            <div class="col-md-4 col-sm-4  col xs-12">

            </div>
        </div></div>
    </div>
    
        <div>
        </div>
    </form>
</body>
</html>
