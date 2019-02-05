<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <link rel="stylesheet" type="text/css" href="css/styles1.css" />
    <title>Admin</title>
    <style type="text/css">
        #form1
        {
            text-align: center;
            height: 602px;
        }
    </style>
</head>
<body style="height: 610px">
    <form id="form1" runat="server">
    <div>
    <body1>
     <nav>
    <div class="wrapper">
      <ul id="menu" class="clearfix">
             <li><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AddProductAdmin.aspx">ADD Products</asp:LinkButton></li>
             <li><asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Editing.aspx" >Update/Editing/Deleting Products</asp:LinkButton></li>
              <li><asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Veiw all Complaints.aspx">Complaints</asp:LinkButton></li>
         </ul>
        </div>
       </nav>
     </body1>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="55px" 
        ForeColor="skyblue" Text="Welcome Home My Admin"></asp:Label>
    </form>
</body>
</html>
