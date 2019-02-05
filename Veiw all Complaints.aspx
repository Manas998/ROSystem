<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Veiw all Complaints.aspx.cs" Inherits="Veiw_all_Complaints" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <title>View Complaints</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="complaintid" HeaderText="Complaint ID" 
                    SortExpression="complaintid">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="registerdatetime" 
                    HeaderText="Date And Time For Registration" SortExpression="registerdatetime">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="cname" HeaderText="Customer Name" 
                    SortExpression="cname">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="complaintdetail" HeaderText="Complaint Message" 
                    SortExpression="complaintdetail">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Reply Option">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%#Eval("complaintid")%>' 
                            Height="32px" onclick="Button1_Click" Text="Reply" Width="99px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT * FROM [ComplaintDetail] ORDER BY [complaintid] DESC" 
            DeleteCommand="DELETE FROM [ComplaintDetail] WHERE [complaintid] = @complaintid" 
            InsertCommand="INSERT INTO [ComplaintDetail] ([complaintid], [registerdatetime], [cname], [complaintdetail], [status], [replymsg]) VALUES (@complaintid, @registerdatetime, @cname, @complaintdetail, @status, @replymsg)" 
            UpdateCommand="UPDATE [ComplaintDetail] SET [registerdatetime] = @registerdatetime, [cname] = @cname, [complaintdetail] = @complaintdetail, [status] = @status, [replymsg] = @replymsg WHERE [complaintid] = @complaintid">
            <DeleteParameters>
                <asp:Parameter Name="complaintid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="complaintid" Type="String" />
                <asp:Parameter Name="registerdatetime" Type="String" />
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="complaintdetail" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="replymsg" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="registerdatetime" Type="String" />
                <asp:Parameter Name="cname" Type="String" />
                <asp:Parameter Name="complaintdetail" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="replymsg" Type="String" />
                <asp:Parameter Name="complaintid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
