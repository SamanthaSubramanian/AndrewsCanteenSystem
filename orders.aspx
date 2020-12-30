<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="andrewscanteensystem.orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Style1.css" />
    <script src="Scripts/bootstrap.min.js"></script>

    
    
    <style type="text/css">
        .auto-style1 {
            width: 110px;
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
          <a class="dropdown-item" href=".aspx">Logout</a>
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
       
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
             <h6>Sort By:&nbsp;&nbsp;</h6>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
      
        <asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="201px">
            <asp:ListItem>Low to High Price</asp:ListItem>
            <asp:ListItem>High to Low Price</asp:ListItem>
             <asp:ListItem>Recommended</asp:ListItem>
        </asp:DropDownList>&nbsp;
          <asp:Button ID="Button4" runat="server" OnClick="Button2_Click" Text="Apply" CssClass="btn btn-light"/>
      </li>
      <li class="nav-item">
                           

      </li>
      
    </ul>
    <span class="navbar-text">
     What do you want to eat?&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
                 <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Search" CssClass="btn btn-light"/>
                 <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View All Products</asp:LinkButton>


    </span>
  </div>
</nav>
        

        
      
&nbsp;
&nbsp;
&nbsp;
         <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([KeywordSearch] LIKE '%' + @KeywordSearch + '%')">
             <SelectParameters>
                 <asp:ControlParameter ControlID="TextBox1" Name="KeywordSearch" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
        
        <br />

       

      
<div class="jumbotron" style="width:90%; margin: 0 auto;">
       

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" Width="100%" DataKeyField="productid" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1" rowspan="4">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="100px" Width="100px" />
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs.
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quantity:<asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Text="Add to Cart" />
                            &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
   </div>
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [product] ORDER BY [price]"></asp:SqlDataSource>
       

      

       

        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [product] ORDER BY [price] DESC"></asp:SqlDataSource>
       

      

       

         <br />
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:StudentlogConnectionString %>" SelectCommand="SELECT * FROM [product] WHERE ([Category] = @Category)">
             <SelectParameters>
                 <asp:QueryStringParameter Name="Category" QueryStringField="cat" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
       

      

       

    </form>

</body>
</html>
