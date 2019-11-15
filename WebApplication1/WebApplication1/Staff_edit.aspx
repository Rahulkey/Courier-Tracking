<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Staff_edit.aspx.cs" Inherits="WebApplication1.Staff_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="newstyles.css" type="text/css" rel="stylesheet" />
    <title>Registration</title>
    
    <style type="text/css">
        .auto-style1 {
            width: 201px;
        }
        .auto-style2 {
            width: 201px;
            height: 54px;
        }
        .auto-style3 {
            height: 54px;
        }
        .auto-style4 {
            width: 201px;
            height: 63px;
        }
        .auto-style5 {
            height: 63px;
        }
        .auto-style6 {
            width: 303px;
        }
        .auto-style7 {
            height: 63px;
            width: 303px;
        }
        .auto-style8 {
            height: 54px;
            width: 303px;
        }
        .auto-style9 {
            width: 295px;
        }
        .auto-style10 {
            height: 63px;
            width: 295px;
        }
        .auto-style11 {
            height: 54px;
            width: 295px;
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
       <li><a href="registration.aspx">Home</a></li>
        <li><a href="registration.aspx">Log Out</a></li>
                           </ul>

                        </div>

                   </div>
                  </div>
              </nav>

        </div>
            <div style="margin-left: 200px">
                <br />
                 <br />
              
                <asp:Label ID="Label2" style="background-color: #ee3a5b;" runat="server" ForeColor="White" Text="STAFF UPDATE" BorderColor="#ee3a5b" BorderWidth="20px" ></asp:Label>
            </div>
     <br/>
     
     <br/>
     <br/>
            <table class="pagination" style="margin-left:80px; margin-top: 0px;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_firstName" runat="server" ForeColor="White" Text="Id"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_firstName" runat="server" Height="27px" Width="227px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txt_lastName" runat="server" Height="27px" Width="228px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:Label ID="lbl_lastName0" runat="server" ForeColor="White" Text="Last Name: "></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt_firstName0" runat="server" Height="27px" Width="239px" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_gender" runat="server" ForeColor="White" Text="Gender:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:RadioButton ID="rdMale" runat="server" GroupName="rdGender" ForeColor="White" />
                        <asp:Label ID="lbl_male" runat="server" ForeColor="White" Text="Male"></asp:Label>
                        <asp:RadioButton ID="rdFemale" runat="server" GroupName="rdGender" ForeColor="White" />
                        <asp:Label ID="lbl_female" runat="server" ForeColor="White" Text="Female"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lbl_EmailID0" runat="server" ForeColor="White" Text="Email ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_emailId0" runat="server" Height="27px" Width="239px" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_phoneNumber0" runat="server" ForeColor="White" Text="Phone Number:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_userName" runat="server" Height="27px" Width="232px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lbl_phoneNumber1" runat="server" ForeColor="White" Text="Designation:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_emailId1" runat="server" Height="27px" Width="239px" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_password" runat="server" ForeColor="White" Text="Salary:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_password" runat="server" Height="27px" TextMode="Password" Width="235px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lbl_EmailID1" runat="server" ForeColor="White" Text="Permanent Address:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_emailId2" runat="server" Height="27px" Width="239px" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lbl_password1" runat="server" ForeColor="White" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txt_emailId" runat="server" Height="27px" Width="237px" ForeColor="White"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:Label ID="lbl_EmailID2" runat="server" ForeColor="White" Text="Corresponding Address:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_emailId3" runat="server" Height="27px" Width="239px" ForeColor="White"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style11">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
            </table>
            <div style="margin-left: 200px">
                <br />
                 <br />
                 <button class="btn btn-large" style="background-color: #ee3a5b;"  type="submit" name="Register">UpDATE</button>&nbsp;
                <button class="btn btn-large" style="background-color: #ee3a5b;"  type="submit" name="Register">&nbsp;dELETE</button>
            </div>
        </form>
        

</body>
</html>
