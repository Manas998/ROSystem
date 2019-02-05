<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OwnerReg.aspx.cs" Inherits="OwnerReg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <link rel="stylesheet" type="text/css" href="css/OwnerReg.css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 100%;
        }
        </style>
</head>
<body>
    <form id="form0" runat="server">
    <div><br />

<section class="modal fade" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     
    <div class="container">
    <div class="modal-header">
     <div class="form0_wrapper">
    <div class="form0_container">
        <div class="title_container">
        <div class="title_container">
			<h2 class="style1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Form</strong></h2>
		</div><br /><hr /><br />
                      <tr>
                            <td class="style7">
                                Company Name
                            </td>
                            <td class="style8">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:TextBox ID="TextBox1" runat="server" Height="39px" Width="300px" 
                                    style="text-align: justify"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="Insert Company Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br /><br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                User ID</td>
                            <td style="text-align: justify">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Height="39px" Width="300px" 
                                    style="text-align: justify"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="Insert User ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Full Name</td>
                            <td style="text-align: justify">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Height="39px" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="Inser Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Email ID</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server" Height="39px" Width="300px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="TextBox4" ErrorMessage="Insert Your Email ID" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                    runat="server" ControlToValidate="TextBox4" 
                                    ErrorMessage="Invalid Email Address" ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Password</td>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Height="39px" Width="300px" 
                                    TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="TextBox5" ErrorMessage="Enter your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Area</td>
                            <td style="text-align: justify">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox6" runat="server" Height="39px" Width="300px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="TextBox6" ErrorMessage="Insert your Area" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" colspan="2">
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/OwnerLog.aspx">Already Have An Account</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label><br /><br />
                                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                                    Width="111px" Height="38px" />
                            </td>
                        </tr>
        </div></div></div>
        </div></div></section>
    </div>
    </form>
</body>
</html>
