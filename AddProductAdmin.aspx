<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddProductAdmin.aspx.cs" Inherits="AddProductAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <title>Add Product</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 100%;
        }
        .style2
        {
            height: 60px;
            text-align: center;
        }
        .style3
        {
            height: 563px;
        }
        .style4
        {
            width: 64%;
            height: 326px;
        }
        .style6
        {
            width: 234px;
            text-align: center;
        }
        .style7
        {
            text-align: left;
        }
        .style8
        {
            width: 234px;
            text-align: center;
            height: 54px;
        }
        .style9
        {
            height: 54px;
            text-align: left;
        }
        .style10
        {
            width: 234px;
            text-align: center;
            height: 46px;
        }
        .style11
        {
            text-align: left;
            height: 46px;
        }
        .style12
        {
            width: 234px;
            text-align: center;
            height: 50px;
        }
        .style13
        {
            height: 50px;
            text-align: left;
        }
        .style14
        {
            height: 44px;
            text-align: justify;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td bgcolor="#0066FF" class="style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="White" Text="Add Product"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White" 
                        Text="Dynamically"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <table bgcolor="#336699" border="1" class="style4">
                        <tr>
                            <td class="style6">
                                Product ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                :</td>
                            <td class="style7">
&nbsp;
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Product Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                :</td>
                            <td class="style9">
&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="265px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
&nbsp;Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                :</td>
                            <td class="style11">
&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Height="44px" Width="265px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style12">
&nbsp;Upload Product Image&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                            <td class="style13">
&nbsp;
                                <asp:FileUpload ID="FileUpload1" runat="server" Height="50px" Width="265px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                Product's Category</td>
                            <td class="style14">
                                <asp:TextBox ID="TextBox3" runat="server" Height="44px" Width="265px"  placeholder="Example:new,old or repaired"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                Product's Description</td>
                            <td class="style14">
                                <asp:TextBox ID="TextBox4" runat="server" Height="44px" Width="265px" placeholder="About product"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                               Product's Keybard Search</td>
                            <td class="style14">
                                <asp:TextBox ID="TextBox5" runat="server" Height="44px" Width="265px" placeholder="Example:Commanly Used Names of that product for searching"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14">
                                &nbsp;</td>
                            <td class="style14">
                                <asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
                                    Text="Save Product" Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Red" NavigateUrl="~/Product.aspx">View All Product</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td bgcolor="#0066FF" class="style2">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
