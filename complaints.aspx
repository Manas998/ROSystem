<%@ Page Language="C#" AutoEventWireup="true" CodeFile="complaints.aspx.cs" Inherits="complaints" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <title>Complaints</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 500px;
        }
        .style2
        {
            height: 60px;
        }
        .style3
        {
            height: 383px;
        }
        .style4
        {
            height: 62px;
        }
        .style5
        {
            width: 91%;
            height: 511px;
        }
        .style7
        {
            width: 181px;
            height: 70px;
        }
        .style8
        {
            height: 70px;
            width: 532px;
        }
        .style9
        {
            width: 181px;
            text-align: center;
            height: 30px;
        }
        .style10
        {
            height: 30px;
            width: 532px;
        }
        .style13
        {
            width: 181px;
            text-align: center;
            height: 69px;
        }
        .style14
        {
            height: 69px;
            width: 532px;
        }
        .style15
        {
            width: 181px;
            text-align: center;
            height: 153px;
        }
        .style16
        {
            height: 153px;
            width: 532px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <table border="1" class="style5">
                        <tr>
                            <td class="style7">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Complaint No.</td>
                            <td class="style8">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                Name
                            </td>
                            <td class="style10">
                                <asp:TextBox ID="TextBox1" runat="server" Height="46px" Width="365px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    BackColor="White" ControlToValidate="TextBox1" Display="Dynamic" 
                                    ErrorMessage="Must Enter Your name!!!!" Font-Bold="True" Font-Size="Medium" 
                                    Height="20px" Width="186px" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>                            <td class="style15">
                                Type Your Complaint</td>
                            <td class="style16">
                                <asp:TextBox ID="TextBox2" runat="server" Height="168px" TextMode="MultiLine" 
                                    Width="431px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="Must have Enter Somthing" 
                                    Font-Bold="True" Font-Size="XX-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                         </tr>

                        <tr>
                            <td class="style13">
                                </td>
                            <td class="style14">
                                <asp:Button ID="Button1" runat="server" Height="39px" onclick="Button1_Click" 
                                    Text="Registered complaint" Width="204px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
