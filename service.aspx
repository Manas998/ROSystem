<%@ Page Language="C#" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="orderaspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="dot net templates  | aspxtemplates.com">
<meta name="author" content="aspxtemplates.com">
    <!-- Bootstrap Core CSS -->
    <title>Service</title>
    <link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
   <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Required plugin - Animate.css -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.4.0/animate.min.css">
     <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->  
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/styles1.css" />
    <link rel="stylesheet" type="text/css" href="css/styles.css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    
</head>
<body>
<form id="form1" runat="server">
<div>
   <nav><tr>
    <div class="wrapper">
      <ul id="menu" class="clearfix">
        <li><a href="Master.aspx">Home</a></li>
        <li><a href="about.aspx">About</a></li>
        <li><a href="service.aspx">Services</a></li>
        <li class="active"><a href="product.aspx">Product</a></li>
            <li><a href="contact.aspx">Contact</a></li>
      </ul>
    </div>

  </nav>
  </div>
<br /><br /><br />
     <div class="container">
                <div class="row">
                    <div class="col-sm-7 map-content">
                        <ul class="row">
                            <li class="col-sm-6">
                                <div class="dropdown">
        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="car" 
                                        CssClass="form-control-static input-lg" BackColor="#0099FF" ForeColor="White" 
                                        AutoPostBack="False">
            <asp:ListItem>SELECT Services</asp:ListItem>
             <asp:ListItem>Service/Repaire</asp:ListItem>
            <asp:ListItem>Installation/Un-Installation</asp:ListItem>
            <asp:ListItem>Annual Maintance Contract(AMC)</asp:ListItem>
        </asp:DropDownList>
        </div>
                         <br />  <br />
                       <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="SELECT DATE" 
                                    class="btn info" BackColor="#0099FF" ForeColor="White" />
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderStyle="Double"></asp:TextBox>
                                  
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" ErrorMessage="Select Date" ForeColor="Red"></asp:RequiredFieldValidator>
                                  
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><asp:Calendar ID="Calendar2" runat="server" OnDayRender="Calendar1_DayRender" BackColor="White" 
            BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
            Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" 
            onselectionchanged="Calendar2_SelectionChanged" TitleFormat="Month" 
            Width="294px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                    ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                    Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                    ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
                            </li>
                           <li class="col-sm-6">
            <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="service" 
               CssClass="form-control-static input-lg" BackColor="#0099FF" ForeColor="White">
            <asp:ListItem>AREA</asp:ListItem>
            <asp:ListItem>Jalandhar Cant</asp:ListItem>
            <asp:ListItem>Maqsudda</asp:ListItem>
            <asp:ListItem>Nakhodar</asp:ListItem>
            <asp:ListItem>Modal Town</asp:ListItem>
            <asp:ListItem>Guru Nanak Das Nagar</asp:ListItem>
            <asp:ListItem>BSF Colony</asp:ListItem>
            <asp:ListItem>Rampur</asp:ListItem>
            <asp:ListItem>Kapurthala</asp:ListItem>
            <asp:ListItem>Katarpur</asp:ListItem>
            <asp:ListItem>RCF</asp:ListItem>
        </asp:DropDownList><br /><br /><br />
         <asp:DropDownList ID="DropDownList3" runat="server" DataTextField="time"
            CssClass="form-control-static input-lg" BackColor="#0099FF" ForeColor="White">
            <asp:ListItem>SELECT TIME</asp:ListItem>
            <asp:ListItem>10-12 AM</asp:ListItem>
            <asp:ListItem>1-3 PM</asp:ListItem>
            <asp:ListItem>3-5 PM</asp:ListItem>
            <asp:ListItem>5-7 PM</asp:ListItem>
         </asp:DropDownList>

                                <br />
                                <br />
                                <br />

                               
            <asp:TextBox ID="TextBox2" runat="server" placeholder="75XXXXXXXX" Height="41px" Width="165px"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ControlToValidate="TextBox2" ErrorMessage="Pease Insert Mob No" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Name" Height="41px" Width="165px"></asp:TextBox>  
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   ControlToValidate="TextBox3" ErrorMessage="Please Insert Name" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Email" Height="41px" Width="165px"></asp:TextBox>  
                                                         
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="TextBox4" ErrorMessage="Please Insert Email " 
                                   ForeColor="Red"></asp:RequiredFieldValidator>
                                                         
                                <br />
                                <br />
                                <br />
                                                    

          <asp:Button ID="Button4" runat="server" Text="ORDER" class="btn info" BackColor="#CC99FF" onclick="Button4_Click"/>

                          
                            <br />
                            <br /><br />
                        </ul>
                    </div>
                </div>
            </div>
    <!--/#bottom-->
    <!-- /top-link-block -->
    <!-- Jscript -->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
