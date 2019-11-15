<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageStaffDetails.aspx.cs" Inherits="Web.ManageStaffDetails" %>

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
                        <i class="large material-icons">people</i>
                        
                 </div>
                <div class="card-content">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <div class="form-field">
                            <asp:GridView ID="grd_StaffDetails" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="ModifyStaffs.aspx?userid={0}" DataTextField="UserId" HeaderText="Staff Id">
                                    <HeaderStyle ForeColor="White" />
                                    <ItemStyle Font-Bold="True" Font-Size="Large" ForeColor="White" />
                                    </asp:HyperLinkField>
                                    <asp:BoundField DataField="FirstName" HeaderText="Name">
                                    <HeaderStyle ForeColor="White" />
                                    <ItemStyle ForeColor="White" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            </div>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>

