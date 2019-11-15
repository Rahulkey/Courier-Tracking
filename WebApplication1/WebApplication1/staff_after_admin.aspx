<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staff_after_admin.aspx.cs" Inherits="WebApplication1.staff_after_admin" %>

<!DOCTYPE html>
  <html>
    <head>
     


        <link href="newstyles.css" type="text/css" rel="stylesheet" />
     <%-- <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>--%>
        <title>Courier Tracking</title>
        <style type="text/css">
            .auto-style1 {
                width: 150px;
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
                   <%--<a class="waves-effect waves-light btn" >Register</a>--%>
                       <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="registration.aspx">Register</a></li>
                           </ul>

                        </div>
                       <br />
                       <br />
                   </div>
                  </div>
              </nav>
        </div>
      
        <div style="width:300px;">
 
        
     
            <br />
            <br />        
     
            <table class="pagination">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="Staff Id"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="Staff Name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
     
            </div>
           
     
            </form>
     
            </body>
  </html>
        

