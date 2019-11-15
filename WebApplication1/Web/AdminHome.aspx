<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Web.AdminHome" %>

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
        <script type="text/javascript" src="scripts/scriptIndex.js"></script>
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
                        <i class="large material-icons">apps</i>
                    </div>
                    <div class="card-content">
                        <div class="form-field">
                            
                            <a href="ManageStaffDetails.aspx " class ="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>
                            <asp:Label ID="lbl_manageStaff" runat="server" Text="Manage Staff Details" Font-Size="Large"></asp:Label>
                        </div><br />
                        <div class="form-field">
                            
                            <a href="PackageDetails.aspx " class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>
                            <asp:Label ID="lbl_updatePackage" runat="server" Text="Update Package" Font-Size="Large"></asp:Label>
                        </div><br />
                        <div class="form-field">
                            
                            <a href="Bill.aspx" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>
                            <asp:Label ID="lbl_generateBill" runat="server" Text="Generate Bill" Font-Size="Large"></asp:Label>
                        </div><br />
                       
                         <div class="form-field">
                            
                            <a href="GenerateReport.aspx"  class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a>
                            <asp:Label ID="lbl_generateReport" runat="server" Text="Generate Report" Font-Size="Large"></asp:Label>
                        </div><br />
                       <br />
                      </div> 
                </div>
            </div>

        </div>
       
        </form>
            </body>
  </html>
