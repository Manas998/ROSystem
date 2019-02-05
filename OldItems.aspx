<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OldItems.aspx.cs" Inherits="OldItems" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OLdItems</title>
    <link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <link rel="stylesheet" type="text/css" href="css/styles.css" />
    <link rel="stylesheet" type="text/css" href="css/styles1.css" />
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <style type="text/css">

        .style4
        {
            width: 87%;
            height: 459px;
        }
        .style5
        {
            width: 100%;
            height: 113px;
            background-color: #008000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <body1>
      <nav>
    <div class="wrapper">
      <ul id="menu" class="clearfix">
        <li><a href="Master.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a href="#">Services</a></li>
        <li class="active"><a href="product.aspx">Product</a></li>
            <li><a href="contact.aspx">Contact</a></li>
      </ul>
    </div>
  </nav>
  </body1>
           <div id='cssmenu'>
           <ul>
                <li> <asp:LinkButton ID="LinkButton1" runat="server" 
                                    CausesValidation="False" Font-Bold="True" Font-Size="Medium" 
                        PostBackUrl="~/NewItems.aspx">New</asp:LinkButton>
                </li>
                <li class="active"> <asp:LinkButton ID="LinkButton2" runat="server" 
                                    CausesValidation="False" Font-Bold="True" Font-Size="Medium">Old</asp:LinkButton>
               </li>
                <li> <asp:LinkButton ID="LinkButton3" runat="server"  
                                        CausesValidation="False" Font-Bold="True" 
                        Font-Size="Medium" PostBackUrl="~/RepairedItems.aspx">Repaired</asp:LinkButton></li>
                <li> <asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False"  
                                          PostBackUrl="~/Product.aspx"
                        CausesValidation="False" Font-Bold="True" Font-Size="Medium">View All Product</asp:LinkButton>
                </li>
                      <asp:Label ID="Label2" runat="server" BackColor="#CC0000" Height="20px"></asp:Label>
                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;; <asp:TextBox ID="TextBox1" 
                        float="right" runat="server" Height="38px" 
                        Width="315px" Font-Bold="True" ToolTip="Search Items"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Height="40px"  
                        Text="Search" Width="171px" Font-Bold="True" Font-Size="Medium"/>
                </li>
                
                <li> 
                <asp:LinkButton ID="LinkButton5" runat="server" 
                                    CausesValidation="False" Font-Bold="True" Font-Size="Small" 
                        PostBackUrl="~/AddToCart.aspx" ForeColor="#6600FF"> Cart Items</asp:LinkButton>
               </li> 
           </ul>
           </div>
    
        <br />
        <br />
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                        onitemcommand="DataList1_ItemCommand1" RepeatColumns="5" 
                        RepeatDirection="Horizontal" onitemdatabound="DataList1_ItemDataBound">
                        <ItemTemplate>
                            <br />
                            <table align="center" class="style4">
                                <tr>
                                    <td style="text-align: center">
                                        ProductID :
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Image ID="Image1" runat="server" Height="250px" 
                                            ImageUrl='<%# Eval("ProductImage") %>' Width="250px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        Price :
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        Quantity :
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        Stock Availability :
                                        <asp:Label ID="Label6" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:ImageButton ID="ImageButton1" runat="server" 
                                            CommandArgument='<%#Eval("ProductID")%>' CommandName="addtocart" Height="48px" 
                                            ImageUrl="~/images/addtocart.jpg" Width="213px" CausesValidation="False" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT * FROM [ProductDetails] WHERE ([Category] = @Category)">
            <SelectParameters>
                <asp:Parameter DefaultValue="old" Name="Category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
