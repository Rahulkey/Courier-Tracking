<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Web.Registration" %>

<!DOCTYPE html>
  <html>
    <head>
        <style>
            .login {
            margin-top:100px;
            }
                .login .card {
                background:rgba(0,0,0,0.2);
                color:white;
                }
                .login label {
                font-size:16px;
                color:#ccc;
                }
                .login input {
                font-size:20px;
                color:#fff;
                
                }
        </style>
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link rel="stylesheet" type="text/css" href="styles/style.css">
        <script type="text/javascript" src="scripts/scriptRegistration.js"></script>
     <%-- <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>--%>
        <title>Courier Tracking</title>
    </head>

    <body style="background-image:url(images/bg2.jpg); background-size:cover; background-repeat:no-repeat;">
        <footer  style="bottom:0; position:fixed; width:100%;">
        

       <div class="footer-copyright grey darken-4" style="height:20px;">
           <div class="container center-align" ><h6 class="white-text">&copy; Copyright 2019</h6> </div>
       </div> 
    </footer>
        <div class="navbar-fixed">
            <nav class="grey darken-4">
                <div class="container">
                   <div class="nav-wrapper">
                  
                  
                    <div class="brand-logo">
                        <img src="images/img1.png" style="height:50px; width:50px; padding-top:5px;" /><i>&nbsp;&nbsp;&nbsp;&nbsp;UTPR Couriers</i></div>
                   <div id="div" class="row right">
                   <%--<a class="waves-effect waves-light btn" >Register</a>--%>
                      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="HomePage.aspx" title="Home"><i class="large material-icons">home</i></a></li>
                           </ul>

                        </div>
                   </div>
                  </div>
              </nav>
        </div>
        <div class="form-field center-align">
            <br /><br />
        <asp:Label ID="lbl_showStaffId" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </div>
        <form id="Form1" runat="server">
        <div class="row login">
            <div class="col s12 l4 offset-l4">
                <div class="card">
                    
                    <div class="card-action red white-text center-align">
                    <i class="large material-icons">wc</i>
                    </div>
                    <div class="card-content">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                        <div class="form-field">
                            <asp:Label for="txt_firstName" ID="lbl_firstName" runat="server" Text="First Name"></asp:Label>
                             <asp:Label  ID="Label2" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_firstName" runat="server" placeholder="Enter your First Name here"></asp:TextBox>
                        </div><br />
                        <div class="form-field">
                            <asp:Label for="txt_lastName" ID="lbl_lastName" runat="server" Text="Last Name"></asp:Label>
                            <asp:TextBox ID="txt_lastName" runat="server" placeholder="Enter your Last Name here"></asp:TextBox>
                        </div><br />
                        <div class="form-field">
                            <asp:Label ID="lbl_gender" runat="server" Text="Gender :"></asp:Label> &nbsp;&nbsp;
                           
                            <%--<asp:Label for="rd_Male" ID="lbl_male" runat="server" Text="Male"></asp:Label>--%>
                            <asp:RadioButton ID="rd_Male" runat="server" GroupName="gender" Text="Male" Checked="True" />&nbsp;&nbsp;
                            <%--<asp:Label for="rd_Female" ID="lbl_female" runat="server" Text="Female"></asp:Label>--%>
                            <asp:RadioButton ID="rd_Female" runat="server" GroupName="gender" Text="Female" />
                        </div><br />
                        <%--<div class="form-field">
                            <asp:Label for="txt_userName" ID="lbl_userName" runat="server" Text="User Name"></asp:Label>
                            <asp:TextBox ID="txt_userName" runat="server" placeholder="Enter your User Name here"></asp:TextBox>
                        </div><br />--%>
                         <div class="form-field">
                            <asp:Label for="txt_emailId" ID="lbl_emailId" runat="server" Text="Email ID:"></asp:Label>
                              <asp:Label  ID="Label3" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_emailId" runat="server" placeholder="Enter your Email ID here"></asp:TextBox>
                        </div><br />

                        
                        <div class="form-field">
                            <asp:Label for="txt_phoneNumber" ID="lbl_phoneNumber" runat="server" Text="Phone Number:"></asp:Label>
                             <asp:Label  ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_phoneNumber" runat="server" placeholder="Enter your 10 digit phone Number here"></asp:TextBox>
                        </div><br />

                        <div class="form-field">
                            <asp:Label for="txt_password" ID="lbl_password" runat="server" Text="Password"></asp:Label>
                             <asp:Label  ID="Label5" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_password" type="password" runat="server" placeholder="Enter your Password here"></asp:TextBox>
                        </div><br />
                         <div class="form-field">
                            <asp:Label for="txt_permanentAddress" ID="lbl_permanentAddress" runat="server" Text="Permanent Address"></asp:Label>
                              <asp:Label  ID="Label6" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_permanentAddress"  runat="server" placeholder="Enter your Permanent Address here"></asp:TextBox>
                        </div><br /> <div class="form-field">
                            <asp:Label for="txt_currentAddress" ID="lbl_currentAddress" runat="server" Text="Current Address"></asp:Label>
                             <asp:Label  ID="Label7" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_currentAddress" runat="server" placeholder="Enter your Current Address here"></asp:TextBox>
                        </div><br />
                        
                       

                        <div class="form-field center-align">
                            
                            <asp:Button class="btn-large red"  ID="btn_Register" runat="server" Text="Register" OnClientClick="return ValidateRegister()" OnClick="btn_Register_Click"/>
                            
                        </div>
                    </div>
                </div>
            </div>

        </div>
       
        </form>
            </body>
  </html>
