<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <%-- <link href="styles.css" rel="stylesheet" type="text/css" />--%>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <title></title>
</head>
<body>
    <div class="card-panel teal lighten-2"> 
    <form id="form1" runat="server" class="loginForm">
   
        <asp:TextBox ID="txtId" runat="server" CssClass="textbox" Height="46px" Width="200px"></asp:TextBox>
        <br />
        <br />
        
        <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox"TextMode="Password" Height="46px" Width="200px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Height="49px" Text="Login" Width="139px" CssClass="button" />
        <br />
        <br />
        <asp:Label ID="lblRegister" runat="server" Text="Register" Font-Bold="True" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAdmin" runat="server" Text="Admin" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUser" runat="server" Text="User" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnStaff" runat="server" Text="Staff" />
    </form>
        </div>
</body>
</html>
