<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditOrder.aspx.cs" Inherits="EditOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 532px;
        }
        .style2
        {
            height: 60px;
            text-align: center;
            background-color: #47C9AF;
        }
        .style3
        {
            height: 394px;
            text-align: center;
        }
        .style4
        {
            width: 47%;
            height: 256px;
        }
        .style5
        {            background-color: #47C9AF;
        }
        .style6
        {
            width: 139px;
            background-color: #47C9AF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td bgcolor="#0066FF" class="style2">
                    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#CC0000" 
                        Text="Modification allowed" style="color: #9900FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <table align="center" bgcolor="Blue" border="1" class="style4" frame="void">
                        <tr>
                            <td class="style6">
                                S.NO</td>
                            <td class="style5">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" 
                                    Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Product Id</td>
                            <td class="style5">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="White" 
                                    Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Product Name</td>
                            <td class="style5">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" 
                                    Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Price</td>
                            <td class="style5">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="White" 
                                    Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Quantity</td>
                            <td class="style5">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Total Price</td>
                            <td class="style5">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White" 
                                    Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5" colspan="2">
                                <asp:Button ID="Button1" runat="server" BackColor="#CC0000" 
                                    BorderStyle="Dashed" Height="27px" onclick="Button1_Click" Text="Save" 
                                    Width="107px" style="background-color: #9999FF" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="#0066FF" style="background-color: #47C9AF">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
