﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Warehouse_update.aspx.cs" Inherits="WebApplication1.Warehouse_update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="newstyles.css" type="text/css" rel="stylesheet" />
    <title>Registration</title>
    
    <style type="text/css">
        .auto-style1 {
            width: 172px;
        }
        .auto-style4 {
            width: 287px;
        }
        .auto-style6 {
            width: 299px;
        }
        </style>
    
</head>
<body class="black">
        <form id="form1" runat="server">
        <div class="navbar-fixed">
            <nav class="pink">
                <div class="container">
                   <div class="nav-wrapper">
                  
                  
                    <div class="brand-logo">
                        <img src="images/output-onlinepngtools%20(1).png" style="height:50px; width:50px; padding-top:5px; font-family:Arial;" /><b>&nbsp;&nbsp;&nbsp;&nbsp;UTPR Couriers</b></div>
                   <div id="div" class="row right">
                     
                       <ul id="nav-mobile" class="right hide-on-med-and-down">
                           <li><a href="index.aspx">Home</a></li>
        <li><a href="index.aspx">Log Out</a></li>
                           </ul>

                        </div>

                   </div>
                  </div>
              </nav>

        </div>
            <div style="margin-left: 200px">
                <br />
                 <br />
              
                <asp:Label ID="Label1" style="background-color: #ee3a5b;" runat="server" ForeColor="White" Text="UPDATE WAREHOUSE" BorderColor="#ee3a5b" BorderWidth="20px" ></asp:Label>
            </div>
     <br/>
     
     <br/>
     <br/>
            <table class="pagination" style="margin-left:80px;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_firstName" runat="server" ForeColor="White" Text="State:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_firstName" runat="server" Height="27px" Width="239px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_firstName1" runat="server" ForeColor="White" Text="City:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_lastName" runat="server" Height="27px" Width="237px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lbl_lastName0" runat="server" ForeColor="White" Text="Pincode: "></asp:Label>
                        ast Name:
                    </td>
                    <td>
                        <asp:TextBox ID="txt_lastName0" runat="server" Height="27px" Width="237px" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_firstName2" runat="server" ForeColor="White" Text="Address:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_lastName1" runat="server" Height="27px" Width="237px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lbl_firstName3" runat="server" ForeColor="White" Text="Phone Number:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_lastName2" runat="server" Height="27px" Width="237px" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
            <div style="margin-left: 200px">
                <br />
                 <br />
                 <button class="btn btn-large" style="background-color: #ee3a5b;"  type="submit" name="Register">SUBMIT</button>
            </div>
        </form>
        

</body>
</html>
