<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Web.ForgetPassword" %>

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
        <script src="scripts/scriptIndex.js" type="text/javascript"></script>
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
        <li><a href="Registration.aspx" title="Register"><i class="large material-icons">person_add</i></a></li>
                            <li><a href="HomePage.aspx" title="Home"><i class="large material-icons">home</i></a></li>
<li><a href="Index.aspx" title="Login"><i class="large material-icons">lock_open</i></a></li>
                             
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
                        <i class="large material-icons">account_circle</i>
                    </div>
                    <div class="card-content">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
                        <div class="form-field">
                            
                            <asp:TextBox ID="txt_userId" runat="server" placeholder="Enter User ID here"></asp:TextBox>
                        </div><br />
                        
                        <div class="form-field">
                            
                            <asp:TextBox ID="txt_emailId"  runat="server" placeholder="Enter Email Id here"></asp:TextBox>
                        </div><br />
                         <div class="form-field">
                            
                            <asp:TextBox ID="txt_newPassword"  runat="server" placeholder="Enter new Password here" TextMode="Password"></asp:TextBox>
                        </div><br />
                        <div class="form-field">
                            
                            <asp:TextBox ID="txt_confirmNewPassword"  runat="server" placeholder="Re-enter Password here" TextMode="Password"></asp:TextBox>
                        </div><br />
                        <div class="form-field center-align">
                            
                            <asp:Button class="btn-large red"  ID="btn_ForgetPassword" runat="server" Text="Check Credentials !" OnClientClick="return validatePassword()" OnClick="btn_Login_Click" />
                       <br />
                              <br />
                        <asp:Label style="color:whitesmoke" ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                             </div>

                         <div class="form-field center-align">
                            
                            <asp:Button class="btn-large red"  ID="btn_ChangePassword" runat="server" Text="Change Password"  OnClick="btn_ChangePassword_Click"  />
                       <br />
                             
                             </div>


                    </div>
                </div>
            </div>

        </div>
       
        </form>
            </body>
  </html>
