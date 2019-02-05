<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <title></title>
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
            background-color: #47C9AF;
        }
        .style3
        {
            height: 447px;
            text-align: center;
        }
        .style4
        {
            width: 64%;
            height: 136px;
        }
        .style5
        {
            width: 152px;
            text-align: center;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            width: 61%;
            height: 152px;
        }
        .style8
        {
            width: 155px;
        }
        .style9
        {
            width: 155px;
            height: 113px;
        }
        .style10
        {
            height: 113px;
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
                        ForeColor="White" Text="Check Out "></asp:Label>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="White" Text="Shopping Cart"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <br />
                    <table class="style4">
                        <tr>
                            <td class="style5">
                                Order ID
                            </td>
                            <td class="style6">
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Order Date</td>
                            <td class="style6">
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" Height="368px" ShowFooter="True" Width="520px">
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="S.NO" />
                            <asp:BoundField DataField="productid" HeaderText="Product ID">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="productname" HeaderText="Product Name">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:ImageField DataImageUrlField="productimage" HeaderText="ProductImage">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:ImageField>
                            <asp:BoundField DataField="price" HeaderText="Price">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="quantity" HeaderText="Quantity">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="totalprice" HeaderText="Total">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <br />
                    <br />
                    <table border="1" class="style7">
                        <tr>
                            <td class="style9">
                                Type Your Address</td>
                            <td class="style10">
                                <asp:TextBox ID="TextBox1" runat="server" Height="97px" TextMode="MultiLine" 
                                    Width="345px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="Pease enter your Address" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Mobile Number</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="351px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="Please Enter your mobile no" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="40px" onclick="Button1_Click" 
                        Text="Place Order" Width="217px" />
                    <br />
                    <br />
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
