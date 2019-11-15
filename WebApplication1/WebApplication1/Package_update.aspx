<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Package_update.aspx.cs" Inherits="WebApplication1.Package_update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="newstyles.css" type="text/css" rel="stylesheet" />
    <title>Registration</title>
    
    <style type="text/css">
        .auto-style1 {
            width: 172px;
        }
        .auto-style2 {
            width: 172px;
            height: 54px;
        }
        .auto-style3 {
            height: 54px;
        }
        .auto-style4 {
        }
        .auto-style5 {
            height: 54px;
            width: 287px;
        }
        .auto-style6 {
            width: 299px;
        }
        .auto-style7 {
            height: 54px;
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
              
            </div>
     <br/>
     
     <br/>
     <br/> <div style="margin-left: 200px">
                
              
                <asp:Label ID="Label1" style="background-color: #ee3a5b;" runat="server" ForeColor="White" Text="PACKAGE UPDATE" BorderColor="#ee3a5b" BorderWidth="20px" ></asp:Label>
     <br />       
     </div>
            <table class="pagination" style="margin-left:80px;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_password0" runat="server" ForeColor="White" Text="Package Id:"></asp:Label>
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
                        <asp:Label ID="lbl_firstName1" runat="server" ForeColor="White" Text="Current Date:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_lastName" runat="server" Height="27px" Width="237px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        ast Name:
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_firstName2" runat="server" ForeColor="White" Text="Current Location:"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt_lastName1" runat="server" Height="27px" Width="237px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="auto-style4" colspan="3">
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
