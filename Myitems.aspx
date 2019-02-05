<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Myitems.aspx.cs" Inherits="Myitems" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" 
            BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
            DataSourceID="SqlDataSource1" ForeColor="Black" RepeatColumns="3" 
            RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                orderid:
                <asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' />
                <br />
                sno:
                <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                <br />
                productid:
                <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' />
                <br />
                productname:
                <asp:Label ID="productnameLabel" runat="server" 
                    Text='<%# Eval("productname") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                quantity:
                <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                <br />
                dateoforder:
                <asp:Label ID="dateoforderLabel" runat="server" 
                    Text='<%# Eval("dateoforder") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [OrderDetails]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
