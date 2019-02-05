<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlacedSuccessfully3.aspx.cs" Inherits="PlacedSuccessfully3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 550px;
        }
        .style2
        {
            height: 60px;
            text-align: center;
        }
        .style3
        {
            height: 415px;
        }
        .style5
        {
            height: 34px;
        }
        .style6
        {
            height: 70px;
        }
        .style7
        {
            width: 100%;
            height: 78px;
        }
        .style8
        {
            height: 92px;
        }
        .style9
        {
            width: 552px;
            height: 44px;
        }
        .style10
        {
            height: 210px;
        }
        .style11
        {
            height: 38px;
        }
        .style12
        {
            height: 44px;
        }
        .style13
        {
            width: 8%;
            float: left;
            height: 20px;
        }
        .style14
        {
            width: 490px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td bgcolor="#0066FF" class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Shopping comes to end" 
                        Font-Size="X-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="with bill " 
                        Font-Size="X-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                    <table class="style13">
                        <tr>
                            <td class="style14">
                                <asp:HyperLink ID="HyperLink2" runat="server" 
                                    BorderColor="White" BorderStyle="None" Font-Bold="True" Font-Underline="True" 
                                    NavigateUrl="~/Default.aspx" ForeColor="White" Height="25px" Width="118px">HyperLink</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Order ID :
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        ForeColor="Blue" 
                        Text="Your Order Has Been Placed Successfully. Thank you.........." 
                        style="color: #0066FF"></asp:Label>
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="#FF66FF" style="text-align: center" 
                        Text="Here Yoou Can Veiw And Download The Invoices"></asp:Label>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="43px" Text="Download Invoice" 
                        Width="268px" onclick="Button1_Click" BackColor="#009933" 
                        BorderStyle="Outset" Font-Bold="True" ForeColor="White" />
                    <br />
                    <br />
                    <asp:Panel ID="Panel1" runat="server">
                   
                    <table border="1" class="style1">
                        <tr>
                            <td class="style5" style="text-align: center">
                                Retail Invoice</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Order ID :
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                                <br />
                                <br />
                                Order Date :
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <table class="style7">
                                    <tr>
                                        <td class="style9" width="50%">
                                            Buyer Address :<br />
                                            <asp:Label ID="Label6" runat="server"></asp:Label>
                                        </td>
                                        <td class="style12">
                                            Seller Address :<br />
                                            <asp:Label ID="Label7" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                <asp:GridView ID="GridView1" runat="server" Height="201px" Width="938px" 
                                    AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:BoundField DataField="sno" HeaderText="S.No">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="productid" HeaderText="Product ID">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="productname" HeaderText="Product Name">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="price" HeaderText="Price">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="totalprice" HeaderText="Total">
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Grand Total :
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Declaration : We declare that this invoice shows actual price of goods described 
                                inslusive of taxes and that all particulars are true and correct.
                                <br />
                                Incase you find Selling price on this invoice to be more than MRP mentioned on 
                                product inform&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl="vicky310singh@gmail.com">vicky310singh@gmail.com</asp:HyperLink>
                                <br />
                                <br />
&nbsp;THIS IS A COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE
                            </td>
                        </tr>
                    </table>
                     </asp:Panel>
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
