<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Studentreg.aspx.cs" Inherits="andrewscanteensystem.WebForm3" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cap" %>

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
            margin-left: 40px;
            text-align: right;
            width:150px;
            height: 40px;
        }
        
        
        .auto-style16 {
            text-align: right;
            height: 40px;
        }
        .auto-style17 {
            margin-left: 40px;
            text-align: left;
            width: 250px;
            height: 40px;
        }
        .auto-style20 {
            height: 40px;
        }
        .auto-style22 {
            text-align: left;
            height: 40px;
        }
        
        
        .auto-style23 {
            text-align: right;
            height: 38px;
        }
        .auto-style24 {
            text-align: left;
            height: 38px;
        }
        .auto-style25 {
            height: 38px;
        }
        .auto-style26 {
            text-align: right;
            height: 48px;
        }
        .auto-style27 {
            text-align: left;
            height: 70px;
        }
        .auto-style28 {
            height: 48px;
        }
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
    <div class="container-fluid">
        <div class="row">
            <div class="col-3">
                
               </div>
                   
            <div class="col-6">
                
               <br /><br /><br />
                   <h2>&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student Registration</h2>
                <table class="w-100">
                    <tr>
                        <td class="auto-style16">First name:</td>
                        <td class="auto-style17"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Last name:</td>
                        <td class="auto-style17"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Course:</td>
                        <td class="auto-style17"><asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>BCom</asp:ListItem>
                        <asp:ListItem>BMS</asp:ListItem>
                        <asp:ListItem>BAF</asp:ListItem>
                        <asp:ListItem>BMM</asp:ListItem>
                        <asp:ListItem>BscIT</asp:ListItem>
                        <asp:ListItem>BA</asp:ListItem>
                        <asp:ListItem>BscHs</asp:ListItem>
                        <asp:ListItem>FYJC Science</asp:ListItem>
                        <asp:ListItem>FYJC Commerce</asp:ListItem>
                        <asp:ListItem>FYJC Arts</asp:ListItem>
                        <asp:ListItem>SYJC Science</asp:ListItem>
                        <asp:ListItem>SYJC Commerce</asp:ListItem>
                        <asp:ListItem>SYJC Arts</asp:ListItem>
                    </asp:DropDownList>
                        </td>
                        <td class="auto-style20">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Roll no:</td>
                        <td class="auto-style22">&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Roll No Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Phone no:</td>
                        <td class="auto-style22">&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                        <td class="auto-style20">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Valid Phone no" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Email Id:</td>
                        <td class="auto-style22">&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                        <td class="auto-style20">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23">Password:</td>
                        <td class="auto-style24">&nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td class="auto-style25">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Confirm password:</td>
                        <td class="auto-style22">&nbsp;<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox></td>
                        <td class="auto-style20">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox4" ErrorMessage="Password Should Match"></asp:CompareValidator>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style26">Enter Captcha:</td>
                        <td class="auto-style27"><cap:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="50" CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="3" CaptchaMaxTimeout="240" ForeColor="Blue" BackColor="Red" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWX123456789" Height="39px" Width="200px" />
                            <br />
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style28">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style27">&nbsp;                             <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-dark" OnClick="Button1_Click" Height="35px" Width="153px"/>
</td>
                        <td class="auto-style28">
                            &nbsp;</td>
                    </tr>
                </table>
                <div class="form-group">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

          
</div>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
  
                   
            
            <div>
            </div>
                <div>

                </div>
                <div class="col-3">
    </div>
              
               
        </div>
    
    
        </div>
        </div>
    </form>
</body>
</html>
