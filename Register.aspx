<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Registracija korisnika</h2>
        <p style="margin-left: 40px">
            Korisničko ime:&nbsp;
            <asp:TextBox ID="txtIme" runat="server" Width="185px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme" ErrorMessage="Unesite ime"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 40px">
            E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMail" runat="server" Width="185px"></asp:TextBox>
        </p>
        <p style="margin-left: 40px">
            Šifra:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtSifra" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifra" ErrorMessage="Unesite šifru"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 40px">
            Potvrda šifre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtSifra2" runat="server" TextMode="Password" Width="185px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSifra" ControlToValidate="txtSifra2" ErrorMessage="Ponovite šifru"></asp:CompareValidator>
        </p>
        <p style="margin-left: 40px">
            <asp:Button ID="btnKreiraj" runat="server" OnClick="btnKreiraj_Click" Text="Kreiraj korisnika" Width="118px" />
        </p>
        <p style="margin-left: 40px">
            <asp:Label ID="lblText" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        </p>
    
    </div>
    </form>
</body>
</html>
