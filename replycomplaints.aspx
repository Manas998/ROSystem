<%@ Page Language="C#" AutoEventWireup="true" CodeFile="replycomplaints.aspx.cs" Inherits="replycomplaints" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 60px;
            text-align: center;
        }
        .style3
        {
            height: 368px;
        }
        .style4
        {
            width: 81%;
            height: 547px;
        }
        .style6
        {
            text-align: left;
            }
        .style8
        {
            width: 221px;
            height: 216px;
            text-align: center;
        }
        .style11
        {
            height: 35px;
            width: 221px;
            text-align: left;
        }
        .style12
        {
            height: 35px;
        }
        .style13
        {
            height: 216px;
        }
        .style14
        {
            height: 35px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Reply To"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text=" Complaints"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <table border="2" class="style4">
                        <tr>
                            <td class="style11">
                                Complaint ID</td>
                            <td class="style12">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Registered Date and Time&nbsp;
                            </td>
                            <td class="style12">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Customer Name</td>
                            <td class="style12">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Complaint Detail</td>
                            <td class="style12">
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                Status</td>
                            <td class="style12">
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                Reply</td>
                            <td class="style13">
                                <asp:TextBox ID="TextBox1" runat="server" Height="209px" TextMode="MultiLine" 
                                    Width="485px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style14" colspan="2">
                                <asp:Button ID="Button1" runat="server" Height="36px" onclick="Button1_Click" 
                                    Text="Submit" Width="173px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" colspan="2">
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="style6" colspan="2">
                                <asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl="~/Veiw all Complaints.aspx">Veiw all Complaints</asp:HyperLink>
                            </td>
                        </tr>

                    </table>
                </td>
            </tr>
            <tr>
                <td class="style2">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
