﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="Web.Bill" %>

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
                    <li><a href="AdminHome.aspx" title="Home"><i class="large material-icons">home</i></a></li>
                           <li><a href="Index.aspx" title="Log Out"><i class="large material-icons">lock</i></a></li>
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
                        <h5>User Registration</h5>
                    </div>
                    <div class="card-content">

                        <div class="form-field">
                            <asp:Label for="txt_packageId" ID="Label1" runat="server" Text="Package Id"></asp:Label>
                            <asp:TextBox ID="txt_packageId" runat="server" placeholder="Enter your Package Id"></asp:TextBox>
                             <asp:Label ID="lbl_showreceiverCity" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CCFF66"></asp:Label>
                            <asp:Button class="btn-small green" ID="btn_showrCity" runat="server" Text="Generate Bill" OnClientClick="return ValidatePackageId()" OnClick="btn_showrCity_Click" />
                            
                            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                        </div><br />
                        <div class="form-field">
                            <asp:Label for="txt_firstName"  runat="server" Text="First Name : "></asp:Label>
                            <asp:Label for="txt_firstName" ID="lbl_firstName" runat="server" ></asp:Label>
                        </div><br />
                        <div class="form-field">
                            <asp:Label for="txt_lastName"  runat="server" Text="Last Name : "></asp:Label>
                           <asp:Label for="txt_lastName" ID="lbl_lastName" runat="server" ></asp:Label>
                        </div><br />
                         <div class="form-field">
                              <asp:Label for="txt_acceptDate" ID="lbl_Date" runat="server" Text="Accept Date : "></asp:Label>
                            <asp:Label for="txt_acceptDate" ID="lbl_acceptDate" runat="server" ></asp:Label>                           
                        </div><br />
                       
                         <div class="form-field">
                              <asp:Label for="txt_emailId" ID="Label2" runat="server" Text="Email ID : "></asp:Label>
                            <asp:Label for="txt_emailId" ID="lbl_emailId" runat="server" ></asp:Label>                           
                        </div><br />

                        <div class="form-field">
                            <asp:Label for="txt_phoneNumber" ID="Label3" runat="server" Text="Phone Number : "></asp:Label>
                            <asp:Label for="txt_phoneNumber" ID="lbl_phoneNumber" runat="server" ></asp:Label>                           
                        </div><br />

                         <div class="form-field">                             
                           <asp:Label for="txt_senderAddress" ID="Label4" runat="server" Text="Sender Address : "></asp:Label>
                            <asp:Label for="txt_senderAddress" ID="lbl_senderAddress" runat="server" ></asp:Label>                                            
                            
                        </div><br /> 
                        
                        <div class="form-field">
                            <asp:Label for="txt_receiverAddress" ID="Label5" runat="server" Text="Receiver Address : "></asp:Label>
                            <asp:Label for="txt_receiverAddress" ID="lbl_receiverAddress" runat="server" ></asp:Label>                               
                        </div><br />
                        <div class="form-field">
                            <asp:Label for="txt_packageWeight" ID="Label6" runat="server" Text="Package Weight : "></asp:Label>
                            <asp:Label for="txt_packageWeight" ID="lbl_packageWeight" runat="server" ></asp:Label>                               
                        </div><br />

                        <div class="form-field">
                            <asp:Label for="txt_packagePrice" ID="Label7" runat="server" Text="Package Price : "></asp:Label>
                            <asp:Label for="txt_packagePrice" ID="lbl_packagePrice" runat="server" ></asp:Label>                               
                        </div><br />


                        
                       
                    </div>
                </div>
            </div>

        </div>
       
        </form>
            </body>
  </html>
