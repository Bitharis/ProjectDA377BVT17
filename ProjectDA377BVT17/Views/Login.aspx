<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectDA377BVT17.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login to Eshop</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login to Eshop</h1>
        <asp:Login ID="Login1" runat="server" CreateUserText="Create a new E-shopAccount" CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/Default.aspx">
        </asp:Login>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />


    </form>
</body>
</html>
