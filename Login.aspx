<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Login page</h1>
        <br />
        Korisničko ime:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtIme2" runat="server" Width="185px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme2" ErrorMessage="Unesite korisničko ime"></asp:RequiredFieldValidator>
        <br />
        <br />
        Šifra:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSifra" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifra" ErrorMessage="Unesite šifru"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="btnLogiranje" runat="server" OnClick="btnLogiranje_Click" Text="Ulogirajte se" Width="90px" />
        <br />
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
    
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
