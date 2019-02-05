<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Editing.aspx.cs" Inherits="Update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <title>Edit Product</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" 
            onrowediting="GridView1_RowEditing" ShowFooter="True" 
            style="text-align: left" onpageindexchanging="GridView1_PageIndexChanging" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowupdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Product ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" style="text-align: center" 
                            Text='<%# Eval("ProductId") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("ProductName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Image">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' 
                            Height="250px" Width="250px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Category") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("Description") %>' 
                            TextMode="MultiLine"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Search Keywords">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("KeywordSearch") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("KeywordSearch") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
               </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                Width="100px" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                Width="100px" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [ProductDetail] WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [ProductImage] = @original_ProductImage AND [Price] = @original_Price AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([KeywordSearch] = @original_KeywordSearch) OR ([KeywordSearch] IS NULL AND @original_KeywordSearch IS NULL)) AND (([brands] = @original_brands) OR ([brands] IS NULL AND @original_brands IS NULL)) AND (([types] = @original_types) OR ([types] IS NULL AND @original_types IS NULL))" 
            InsertCommand="INSERT INTO [ProductDetail] ([ProductID], [ProductName], [ProductImage], [Price], [Category], [Description], [KeywordSearch], [brands], [types]) VALUES (@ProductID, @ProductName, @ProductImage, @Price, @Category, @Description, @KeywordSearch, @brands, @types)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [ProductDetail]" 
            UpdateCommand="UPDATE [ProductDetail] SET [ProductName] = @ProductName, [ProductImage] = @ProductImage, [Price] = @Price, [Category] = @Category, [Description] = @Description, [KeywordSearch] = @KeywordSearch, [brands] = @brands, [types] = @types WHERE [ProductID] = @original_ProductID AND [ProductName] = @original_ProductName AND [ProductImage] = @original_ProductImage AND [Price] = @original_Price AND (([Category] = @original_Category) OR ([Category] IS NULL AND @original_Category IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([KeywordSearch] = @original_KeywordSearch) OR ([KeywordSearch] IS NULL AND @original_KeywordSearch IS NULL)) AND (([brands] = @original_brands) OR ([brands] IS NULL AND @original_brands IS NULL)) AND (([types] = @original_types) OR ([types] IS NULL AND @original_types IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductImage" Type="String" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_Category" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_KeywordSearch" Type="String" />
                <asp:Parameter Name="original_brands" Type="String" />
                <asp:Parameter Name="original_types" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductImage" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="KeywordSearch" Type="String" />
                <asp:Parameter Name="brands" Type="String" />
                <asp:Parameter Name="types" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="ProductImage" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="KeywordSearch" Type="String" />
                <asp:Parameter Name="brands" Type="String" />
                <asp:Parameter Name="types" Type="String" />
                <asp:Parameter Name="original_ProductID" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_ProductImage" Type="String" />
                <asp:Parameter Name="original_Price" Type="Double" />
                <asp:Parameter Name="original_Category" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_KeywordSearch" Type="String" />
                <asp:Parameter Name="original_brands" Type="String" />
                <asp:Parameter Name="original_types" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
