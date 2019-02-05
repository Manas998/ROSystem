<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OwnerLog.aspx.cs" Inherits="OwnerLog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
<link rel="stylesheet" type="text/css" href="css/OwnerLog.css" />
    <title>Login</title>
     <style type="text/css">
        .style1
        {
            width: 100%;
            height: 100%;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
    <div class="modal-header">
     <div class="form0_wrapper">
    <div class="form0_container">
        <div class="title_container">
        <div class="title_container">
			<h2 class="style1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Form</strong></h2>
		</div><br /><hr><br />
                        <tr>
                            <td class="style7">
                                User ID</td>
                            <td class="style12">
                                <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="400px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="Insert User ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr><br>
                        <tr>
                            <td class="style10">
                                Password</td>
                            <td class="style11">
                                <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="400px" 
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="Insert Your Password " 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;<br />
                                
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                Area</td>
                            <td class="style11">
                                <asp:TextBox ID="TextBox3" runat="server" Height="39px" Width="400px"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="Insert your Area" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr><br />
                            <td class="style13" colspan="2">
                            <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" Height="39px" Width="100px" 
                                    NavigateUrl="~/OwnerReg.aspx">Create New Account</asp:HyperLink><br /><br />
                                <asp:Button ID="Button1" runat="server" Height="45px" onclick="Button1_Click" 
                                    style="text-align: center" Text="Sign In" 
                Width="164px" PostBackUrl="~/ownerdata.aspx" />
                                <br />
                            </td>
                        </tr>
            </div></div></div>
            </div></div>
    </div>
    </form>
</body>
</html>
