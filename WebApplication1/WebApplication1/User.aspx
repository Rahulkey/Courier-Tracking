<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="WebApplication1.User" %>

<!DOCTYPE html>
  <html>
    <head>
     
      <!--Import materialize.css-->
        <link href="newstyles.css" type="text/css" rel="stylesheet" />

     <%-- <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>--%>
        <title>Courier Tracking</title>
    </head>

    <body class="black">
        <div class="navbar-fixed">
            <nav class="pink">
                <div class="container">
                   <div class="nav-wrapper">
                  
                  
                    <div class="brand-logo">
                        <img src="images/output-onlinepngtools%20(1).png" style="height:50px; width:50px; padding-top:5px; font-family:Arial;" /><b>&nbsp;&nbsp;&nbsp;&nbsp;UTPR Couriers</b></div>
                   <div id="div" class="row right">
                   <%--<a class="waves-effect waves-light btn" >Register</a>--%>
                       <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="registration.aspx">Home</a></li>
                           </ul>

                        </div>
                   </div>
                  </div>
              </nav>
        </div>
        <div style="margin-left: 200px">
                <br />
                 <br />
              
                <asp:Label ID="Label2" style="background-color: #ee3a5b;" runat="server" ForeColor="White" Text="TRACK PACKAGE" BorderColor="#ee3a5b" BorderWidth="20px" ></asp:Label>
            </div>
       
       <div class="container" style="text-align:center">
        <div style="width:300px;">
            <form id="form1" runat="server">
       <div >
           <div>
               <br />
                <br /> <br /> <br /> <br /> 
                        
            
               </div>
          &nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;
        </div>
          
            <br />
              
            <br /> 

           
          
            </form>
        </div>
           </div>
       
            </body>
  </html>
        

