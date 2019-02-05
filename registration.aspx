<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
    <link rel="stylesheet" type="text/css" href="css/registration.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <style type="text/css">
        .style
        {
           margin-bottom: 50%;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <section class="modal fade" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     
    <div class="container">
    <div class="modal-header">
     <div id="id01" class="Form">
   <span onclick="document.getElementById('id01').style.display='none'" class="close" 
             title="Close Form" dir="ltr"><a href="Master.aspx"><img src="images/closebutton8-hi.png.cf.png" width="40px" height="40px"/></a>    </span>
                    </div>
  <div class="form0_wrapper">
    <div class="form0_container">
        <div class="title_container">
			<h2 class="style1"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Form</strong></h2>
		</div><hr />
		<div class="row clearfix">
				<form id='register' autocomplete="off">
                 
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Insert your UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                   <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-user"></i>
						</span>
						  <asp:TextBox ID="TextBox1" class="form-control" runat="server" ForeColor="black" placeholder="UserName" 
                                                      Width="100%"></asp:TextBox>
                   </div>
                       <div class="row clearfix">
						<div class="col_half">
							<div class="input_field"> 
								<span>
									<i aria-hidden="true" class="fa fa-user"></i>
								</span>
								 <asp:TextBox ID="TextBox2" class="form-control" runat="server" ForeColor="black"
                                                      placeholder="First Name" Width="100%"></asp:TextBox>
                                                
							</div>
						</div>
						<div class="col_half">
							<div class="input_field"> 
								<span>
									<i aria-hidden="true" class="fa fa-user"></i>
								</span>
								<asp:TextBox ID="TextBox3" class="form-control" runat="server" ForeColor="black"
                                                      placeholder="Last Name" Width="100%"></asp:TextBox>
							</div>
						</div>
					</div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Insert your Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox4" ErrorMessage="Email Id is Incorrect" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-envelope"></i>
						</span>
						<asp:TextBox ID="TextBox4" class="form-control" runat="server" placeholder="Email" ForeColor="black"
                                                      TextMode="Email" Width="100%"></asp:TextBox>
					</div>
					   
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Insert your Password" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="Password Is Incorrect" 
                            ForeColor="Red"></asp:RegularExpressionValidator>
					<div class="input_field"> 
						<span>
                             <i aria-hidden="true" class="fa fa-lock"></i>
						</span>
						<asp:TextBox ID="TextBox5" class="form-control" runat="server" ForeColor="black"
                                                      placeholder="Password" TextMode="Password" Width="100%"></asp:TextBox>

					</div>
                     <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-mobile"></i>
						</span>
						 <asp:TextBox ID="TextBox7" class="form-control" runat="server" ForeColor="black" placeholder="Mobile No"
                                                       Width="100%"></asp:TextBox>                                 
					</div>
                    
                    <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-location-arrow"></i>
						</span>
						<asp:TextBox ID="TextBox9" class="form-control" runat="server" ForeColor="black" 
                                                      placeholder="Address" Width="100%"></asp:TextBox>
                                                  
					</div>

                     <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-map-marker"></i>
						</span>
						 <asp:TextBox ID="TextBox10" class="form-control" runat="server" ForeColor="black" 
                                                      placeholder="Area" Width="100%"></asp:TextBox>
                                                  
					</div>

                    <div class="input_field"> 
						<span>
							<i aria-hidden="true" class="fa fa-map-marker"></i>
						</span>
						<asp:TextBox ID="TextBox11" class="form-control" runat="server" ForeColor="black" 
                                                     placeholder="Pincode" Width="100%"></asp:TextBox>

					</div>
	     
                    <asp:Button ID="Button2" class="button" runat="server" Text="Submit" 
                       onclick="Button2_Click"></asp:Button>
                     

                    <input id="Reset1" class="button" type="reset" value="reset" />
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
