﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firstpage.aspx.cs" Inherits="andrewscanteensystem.firstpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="Style1.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br /><br /><br /><br /><br /><br />
        <br />
    <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-4  col xs-12">

            </div>
            <div class="col-md-4 col-sm-4  col xs-12">
               <form class="form-container" style="border:1px solid;">
  <h2>&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;Welcome</h2><br />

  <div class="form-group">
     <asp:Button ID="Button2" runat="server" Text="Admin Login" CssClass="btn btn-dark btn-block " PostBackUrl="~/AdminLogin.aspx"/>
      </div><br />

      <div class="form-group">
   <asp:Button ID="Button3" runat="server" Text="Student Login" CssClass="btn btn-dark btn-block " PostBackUrl="~/StudentLogin.aspx"/>

          <br />
          </div>
                   <div class="form-group">
     <asp:Button ID="Button1" runat="server" Text="Staff Login" CssClass="btn btn-dark btn-block " PostBackUrl="~/Teacherlogin.aspx"/>
      </div>

  
</form>
            
            
              
            <div class="col-md-4 col-sm-4  col xs-12">

            </div>
        </div></div>
    </div>
    
        <div>
        </div>
    </form>
</body>
</html>
