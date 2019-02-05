<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    
      <style type="text/css">
        .style
        {
           margin-bottom: 80%;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <section class="modal fade" id="login-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                   <div class="container">
                                   <div class="modal-header">
                          <div id="id01" class="Form">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" 
             title="Close Form" dir="ltr"><a href="Master.aspx"><img src="images/closebutton8-hi.png.cf.png" width="40px" height="40px"/></a>    </span>
                    </div>
  <div class="form0_wrapper">
	<div class="form_container">
		<div class="title_container">
			<h2 class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login</h2>
		</div><br /><hr />
		<div class="row clearfix">
              <form id='register' autocomplete="off">

              		<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="Email" ErrorMessage="Insert your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                     <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-user"></i>
						</span>
						<asp:TextBox ID="Email" class="form-control"  runat="server" ForeColor="black"  placeholder="Email" Width="100%"></asp:TextBox>
                    </div>
                        
					    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="Password" ErrorMessage="Insert your Password" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        
              		   <div class="input_field"> 
					    	<span><i aria-hidden="true" class="fa fa-lock"></i>
					     	</span>
					   <asp:TextBox ID="Password" class="form-control" runat="server" 
                            placeholder="Password" ForeColor="black"  Width="100%" TextMode="Password"></asp:TextBox>
                       </div><br />
      			<div class="text-center p-t-136">
						<a class="txt2" href="registration.aspx">
							Create New Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a><br /><br /><br />
                        <asp:Button ID="Button1" runat="server" class="button" Text="Login" 
                       onclick="Button1_Click" />     
                       </div>
                     </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
     </div>
   </form>
</body>
</html>
