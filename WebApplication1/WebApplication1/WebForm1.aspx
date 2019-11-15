<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
  <html>
    <head>
     
      <!--Import materialize.css-->
        <link href="newstyles.css" type="text/css" rel="stylesheet" />

     <%-- <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>--%>
        <title>Courier Tracking</title>
        <style type="text/css">
            .auto-style1 {
                width: 148px;
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
        <li><a href="registration.aspx">Add new Staff</a></li>
         <li><a href="registration.aspx">Home</a></li>
        <li><a href="registration.aspx">Log Out</a></li>
       
                           <li></li>
                           </ul>

                        </div>
                   </div>
                  </div>
              </nav>
        </div>
       
       <div class="container" style="text-align:center">
        <div style="width:1247px;">
       <div >
           <div>
               <br />
                <br />&nbsp;&nbsp;<br /> <br /> <br /> <br />
               </div>
           <table class="pagination">
               <tr>
                   <td aria-disabled="False" class="auto-style1">Sta<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" Text="Staff Id"></asp:Label>
                   </td>
                   <td>StaffN <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Text="Staff Name"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label3" runat="server" ForeColor="White" Text="1"></asp:Label>
                   </td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Ramesh Singh"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label5" runat="server" ForeColor="White" Text="2"></asp:Label>
                   </td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Suresh Kumar"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label7" runat="server" ForeColor="White" Text="3"></asp:Label>
                   </td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Akash Modi"></asp:Label>
                   </td>
               </tr>
           </table>
&nbsp;
        </div>
          
            <br />
              
            <br /> 

              
        </div>
           </div>

            </form>
            </body>
  </html>
        

