<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyPackageStaff.aspx.cs" Inherits="Web.ModifyPackageStaff" %>

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
        <script type="text/javascript" src="scripts/scriptPackage.js"></script>
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
        <div class="form-field center-align">
            <br /><br />
        <asp:Label ID="lbl_showStaffId" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
            </div>
        <form id="Form2" runat="server">
        <div class="row login">
            <div class="col s12 l4 offset-l4">
                <div class="card">
                    <div class="card-action red white-text center-align">
                        <h5>Update Package </h5>
                    </div>
                    <div class="card-content">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                        <div class="form-field">
                            <asp:Label for="txt_acceptDate" ID="lbl_acceptDate" runat="server" Text="Accept Date"></asp:Label>
                            <asp:TextBox ID="txt_acceptDate" runat="server" TextMode="DateTime" ReadOnly="True" ForeColor="White"></asp:TextBox>
                        </div><br />
                        <div class="form-field">
                            <asp:Label for="txt_packageWeight" ID="lbl_packageWeight" runat="server" Text="Package Weight"></asp:Label>
                             <asp:Label for="txt_firstName" ID="star" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_packageWeight" runat="server" placeholder="Enter Package Weight (gm) here"></asp:TextBox>
                            <asp:Button class="btn-small green" ID="btn_showrCity" runat="server" Text="Find Price" OnClientClick="return ValidateWeight()" OnClick="btn_showrCity_Click" />
                        </div><br />
                        <div class="form-field">
                            <asp:Label for="txt_price" ID="lbl_price" runat="server" Text="Price"></asp:Label>
                             <asp:Label for="txt_firstName" ID="Label3" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_price" runat="server" placeholder="Enter your price here"></asp:TextBox>
                        </div><br />
                        <div class="form-field">
                            <asp:Label for="txt_currentLocation" ID="lbl_currentLocation" runat="server" Text="Current Location:"></asp:Label>
                             <asp:Label for="txt_firstName" ID="Label4" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_currentLocation" runat="server" placeholder="Enter Current Location here" Visible="False"></asp:TextBox>
                            <input id="cat" list="categories" name="category" runat="server"/>
                             <datalist id ="categories" runat="server">
                                <option value="Dispatched to "/>
                                <option value="Arrived at "/>
                                <option value="Dispatched from "/>
                                <option value="In Transit "/>
                                <option value="Picked up at "/>                   
                            </datalist> 
                            <br />
                            <input id="pla" list="place" name="places" runat="server"/>
                             <datalist id ="place" runat="server">
                                <option value="Dharmtala, Kolkata"/>
                                <option value="Dum-Dum Airport, Kolkata"/>
                                <option value="Khidirpur Port, Kolkata"/>
                                <option value="Andheri, Mumbai"/>
                                <option value="Bandra, Mumbai "/>
                                <option value="Borivali, Mumbai"/>
                                <option value="Gurugram, Delhi"/>
                                <option value="Faridabad, Delhi"/>
                                <option value="Agara, Delhi"/>
                                <option value="Kempegowda Airport, Bangalore"/>
                                <option value="Koramangala, Bangalore"/>
                                <option value="Marathalli, Bangalore"/>                           
                            </datalist> 

                        </div><br />
                         <div class="form-field">
                            <asp:Label for="txt_senderAddress" ID="lbl_senderAddress" runat="server" Text="Sender Address:"></asp:Label>
                              <asp:Label for="txt_firstName" ID="Label5" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_senderAddress" runat="server" placeholder="Enter Sender Address here" readonly="true" ForeColor="White"  ></asp:TextBox>
                        </div><br />
                         <div class="form-field">
                            <asp:Label for="txt_receiverAddress" ID="Label1" runat="server" Text="Receiver Address:"></asp:Label>
                              <asp:Label for="txt_firstName" ID="Label6" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            <asp:TextBox ID="txt_receiverAddress" runat="server" placeholder="Enter Receiver Address here" readonly="true" ForeColor="White"></asp:TextBox>
                        </div><br />                        
                        <div class="form-field">
                            <asp:Label for="txt_employeeId" ID="lbl_employee" runat="server" Text="Employee Id" Visible="false"></asp:Label>
                             <asp:Label for="txt_firstName" ID="Label7" runat="server" Text="*" ForeColor="Red" Font-Bold="True" Font-Size="Larger" Visible="false"></asp:Label>
                            <asp:TextBox ID="txt_employeeId" runat="server" placeholder="Enter Employee Id here" Visible="False"></asp:TextBox>
                        </div><br />
                         
                        
                        <div class="form-field">
                            <asp:Label for="txt_status" ID="lbl_status" runat="server" Text="Package Status"></asp:Label>
                            <br />
                      
                            <asp:Label ID="lbl_inTransit" runat="server" Text="InTransit"></asp:Label>
                            <asp:RadioButton ID="rd_inTransit" runat="server" GroupName="status" />
                            <asp:Label ID="lbl_notapprove" runat="server" Text="NotApprove"></asp:Label>
                            <asp:RadioButton ID="rd_notapprove" runat="server" GroupName="status" />
                        </div><br />
                        <div class="form-field center-align">
                            
                            <asp:Button class="btn-large red"  ID="btn_Update1" runat="server" Text="Update" OnClientClick="return ValidateModifyPackage()" OnClick="btn_Update1_Click" />
                           
                        </div>

                        
                    </div>

                </div>
            </div>

        </div>
       
       
        </form>
            </body>
  </html>


