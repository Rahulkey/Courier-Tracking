<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationUser.aspx.cs" Inherits="Web.RegistrationUser" %>

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
        <script type="text/javascript" src="scripts/scriptRegistrationUser.js"></script>
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

        <form id="Form1" runat="server">
        <div class="row login">
            <div class="col s12 l4 offset-l4">
                <div class="card">
                    <div class="card-action red white-text center-align">
                      <i class="large material-icons">wc</i>
                    </div>
                    <div class="card-content">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                        <div class="form-field">
                            <asp:Label for="txt_firstName" ID="lbl_firstName" runat="server" Text="First Name"></asp:Label>
                             <asp:Label for="txt_firstName" ID="star" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_firstName" runat="server" placeholder="Enter your First Name here"></asp:TextBox>
                        </div><br />
                        <div class="form-field">
                            <asp:Label for="txt_lastName" ID="lbl_lastName" runat="server" Text="Last Name"></asp:Label>

                            <asp:TextBox ID="txt_lastName" runat="server" placeholder="Enter your Last Name here"></asp:TextBox>
                        </div><br />
                       
                         <div class="form-field">
                            <asp:Label for="txt_emailId" ID="lbl_emailId" runat="server" Text="Email ID:"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_emailId" runat="server" placeholder="Enter your Email ID here"></asp:TextBox>
                        </div><br />

                        
                        <div class="form-field">
                            <asp:Label for="txt_phoneNumber" ID="lbl_phoneNumber" runat="server" Text="Phone Number:"></asp:Label>
                           <asp:Label  ID="Label2" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_phoneNumber" runat="server" placeholder="Enter your 10 digit phone Number here"></asp:TextBox>
                        </div><br />

                        
                         <div class="form-field">
                            <asp:Label for="txt_senderAddress" ID="lbl_senderAddress" runat="server" Text="Sender Address"></asp:Label>
                              <asp:Label  ID="Label3" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_senderAddress"  runat="server" placeholder="Enter Address here"></asp:TextBox>
                            
                             <asp:TextBox ID="txt_senderPincode"  runat="server" placeholder="Enter Pin Code here"></asp:TextBox>
                           
                             <asp:Label ID="lbl_showSenderCity" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CCFF33"></asp:Label><br />
                             <asp:Button class="btn-small green" ID="btn_showsCity" runat="server" Text="Find City" OnClick="btn_showsCity_Click"  OnClientClick="return ValidatePincode()"/>

                        </div><br /> <div class="form-field">
                            <asp:Label for="txt_receiverAddress" ID="lbl_receiverAddress" runat="server" Text="Receiver Address"></asp:Label>
                             <asp:Label ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_receiverAddress" runat="server" placeholder="Enter Address here"></asp:TextBox>
                            
                            <asp:TextBox ID="txt_receiverPincode" runat="server" placeholder="Enter Pin Code here" ></asp:TextBox>
                            <asp:Label ID="lbl_showreceiverCity" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CCFF66"></asp:Label><br />
                            <asp:Button class="btn-small green" ID="btn_showrCity" runat="server" Text="Find City" OnClick="btn_showrCity_Click" OnClientClick="return ValidatePincode1()" />
                        </div><br />
                        
                        <div class="form-field center-align">
                            
                            <asp:Button class="btn-large red"  ID="btn_Register" runat="server" Text="Register" OnClientClick="return ValidateRegister()" OnClick="btn_Register_Click" />
                           
                        </div>
                    </div>
                </div>
            </div>

        </div>
       
        </form>
            </body>
  </html>
