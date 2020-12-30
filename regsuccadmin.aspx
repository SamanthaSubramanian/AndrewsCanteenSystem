<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regsuccadmin.aspx.cs" Inherits="andrewscanteensystem.regsuccadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Style1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />

        <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-4  col xs-12">

            </div>
            <div class="col-md-4 col-sm-4  col xs-12">
               <form class="form-container">
        <div><br /><br />
            <h1>Registration successful</h1><br />
            <br />
            
                <asp:Button ID="Button1" runat="server" Text="Sign in" CssClass="btn btn-dark btn-block " PostBackUrl="~/AdminLogin.aspx"/>
            </div>
                   </form>
                </div>
            </div>
           
        </div>
    </form>
</body>
</html>