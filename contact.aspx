<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contacts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>RO Services</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Your page description here"/>
    <meta name="author" content=""/>
    <!-- css -->
     <link rel="icon" type="image/png" href="images/Logopit_1517646589958i.png" />
     <link rel="stylesheet" href="css/bootstrap.min.css">
     <link rel="stylesheet" href="css/magnific-popup.css">
     <link rel="stylesheet" href="css/font-awesome.min.css">
     <link rel="stylesheet" type="text/css" href="css/templatemo-style.css" />
   
</head>
<body>
<form runat="server">
       <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">
               <span class="spinner-rotate"></span>
          </div>
     </section>
    
    <!-- HEADER -->

	    <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <aside class="logo"><img src="images/Logopit_1517646589958i.png" style="height: 100px; width: 105px"  />
                    <a href="Master.aspx" class="navbar-brand">Ro Services</a></aside>
               </div>

                 <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                         <li><a href="Master.aspx">Home</a></li>
                         <li><a href="about.aspx">About</a></li>
                         <li><a href="service.aspx" >Services</a></li>
                         <li><a href="Product.aspx" >Product</a></li>
                         <li class="active"><a href="contact.aspx" >Contact</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                          <li class="section-btn"><a href="login.aspx" > Sign in</a></li>
                         <li class="section-btn"><a href="registration.aspx"> Sign up</a></li>
                    </ul>
               </div>

          </div>
     </section>
   
   

    <!-- MAIN PAGE -->
     <section id="contact">
          <div class="container">
               <div class="row"><br /><br /><br /><br /><br />

                    <div class="col-md-12 col-sm-12">
                         <div class="section-title">
                              <h2>Contact us</h2>
                         </div>
                    <div class="col-md-8 col-sm-8">
                        
                         <!-- CONTACT FORM HERE -->
                         </div>
                              <div class="col-md-10 col-sm-10">
                                <asp:TextBox ID="txtName" class="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
                                      ErrorMessage="Name is Required" Text="*" ForeColor="Red"
                                     ControlToValidate="txtName"></asp:RequiredFieldValidator>
                              </div>

                              <div class="col-md-10 col-sm-10">
                                 <asp:TextBox ID="txtEmail" class="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                      ErrorMessage="Email is Required" Text="*" ForeColor="Red"
                                     ControlToValidate="txtEmail" ></asp:RequiredFieldValidator>
                                </div>

                              <div class="col-md-10 col-sm-10">
                             <asp:TextBox ID="txtSubject" class="form-control" placeholder="Subject" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                      ErrorMessage="Subject is Required" Text="*" ForeColor="Red"
                                     ControlToValidate="txtSubject"></asp:RequiredFieldValidator>
                              </div>

                              <div class="col-md-10 col-sm-10">
                              <asp:TextBox ID="txtComments" class="form-control" placeholder="Comments" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                      ErrorMessage="Comments are Required" Text="*" ForeColor="Red"
                                     ControlToValidate="txtComments"></asp:RequiredFieldValidator>
                              </div>
                              <asp:Label ID="Label1" runat="server"></asp:Label>
                              <div class="col-md-4 col-sm-12">
                              <asp:Button ID="Submit" class="form-control" runat="server" Text="Send Message" 
                                      onclick="Submit_Click"></asp:Button>
                              </div>
                      </div>
                 </div>
               </div>
             </section>


    <!-- FOOTER -->
     <footer data-stellar-background-ratio="0.5">
          <div class="container">
               <div class="row">
                  <div class="col-md-5 col-sm-12">
                         <div class="footer-thumb footer-info"> 
                              <h2>Ro Services</h2>
                              <p>We are the one who aim to make life easier for our users.</p>
                         </div>
                    </div>

                    <div class="col-md-3 col-sm-4"> 
                         <div class="footer-thumb"> 
                              <h2>E-Mail</h2>
                               <p>ro393services@gmail.com</p>        
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-4"> 
                         <div class="footer-thumb"> 
                              <h2>Services</h2>
                              <ul class="footer-link">
                                   <li><a href="#"> Water purifier repair & services</a></li>
                                   <li><a href="#"> Water purifier intallation/uninstallation  </a></li>
                                   <li><a href="#"> Water purifier AMC (Annual Maintainence Contract) services</a></li>
                              </ul>
                         </div>
                    </div>

                    <div class="col-md-5 col-sm-4"> 
                         <div class="footer-thumb"> 
                              <h2>Find us</h2>
                              <p> Gate No 2-Rail Coach Factory<br> Kapurthala</p>
                         </div>
                    </div>    
                   
                     <div class="col-md-12 col-sm-12">
                         <div class="footer-bottom">
                              <div class="col-md-6 col-sm-5">
                                   <div class="copyright-text"> 
                                        <p>Copyright &copy; 2017 Ro Services</p>
                                   </div>
                              </div>
                              <div class="col-md-6 col-sm-5">
                                   <div class="phone-contact"> 
                                        <p>Call us <span>(91) 75080-84740</span></p>
                                   </div>
                                  
                              </div>
                         </div>
                    </div>
                    
               </div>
          </div>
     </footer>

     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.stellar.min.js"></script>
     <script src="js/jquery.magnific-popup.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>
 

 </form>
  </body>
</html>
