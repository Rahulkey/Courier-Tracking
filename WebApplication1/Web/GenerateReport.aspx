<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenerateReport.aspx.cs" Inherits="Web.GenerateReport" %>

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
    <form runat="server">
         <div class="container">
                            <asp:Label  ID="Label1" runat="server" class="white-text" Text="Start Date"></asp:Label>    &nbsp; &nbsp;&nbsp;  
                             <asp:TextBox ID="txt_startDate" runat="server" class="white-text" TextMode="Date" Width="180px"></asp:TextBox>
                            
                            <br />
                             <asp:Label  ID="Label2" runat="server" class="white-text" Text="End Date"></asp:Label> &nbsp; &nbsp;&nbsp;  
                            
                            <asp:TextBox ID="txt_endDate" runat="server" class="white-text" TextMode="Date" Width="180px"></asp:TextBox>
                           <br />
                            
                            <asp:Button class="btn-small red" ID="btn_showrCity" text="Generate Report" runat="server" OnClick="btn_showrCity_Click" />
             <asp:Label ID="Label3" runat="server" style="color:whitesmoke" Text=""></asp:Label>
       </div>

        <div style="margin-left:50px; margin-right:50px; ">

            <asp:GridView ID="grd_report" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="package_id" HeaderText="Package Id">
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="first_name" HeaderText="First Name" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="last_name" HeaderText="Last Name" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="accept_date" HeaderText="Accept Date" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="email_id" HeaderText="Email Id" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="phone_number" HeaderText="Phone Number" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="sender_address" HeaderText="Sender Address" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="receiver_address" HeaderText="Receiver Address" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="package_weight" HeaderText="Package Weight" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                    <asp:BoundField DataField="package_price" HeaderText="Package Price" >
                    <HeaderStyle ForeColor="Blue" />
                    <ItemStyle ForeColor="Blue" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>


        </div>
        <div class="container">
        <asp:Button class="btn-small red" ID="btn_save" text="Save" runat="server" OnClick="btn_save_Click" />
            </div>


    </form>
            </body>
  </html>
