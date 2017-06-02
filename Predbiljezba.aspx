<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Predbiljezba.aspx.cs" Inherits="Predbiljezba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Odaberite seminar</h2>
        <br />
    
        Seminari:
        <asp:DropDownList ID="ddl" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="Naziv" DataValueField="Naziv">
        <asp:ListItem Text="-Select-" Value="" />
        </asp:DropDownList>
        <%--<asp:DropDownList ID="ddl" runat="server" DataSourceID="SqlDataSource1" DataTextField="Naziv" DataValueField="Naziv">
        </asp:DropDownList>--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnSeminar %>" SelectCommand="SELECT [Naziv] FROM [Seminar]"></asp:SqlDataSource>
        <br />
        <br />
        Ime:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme" ErrorMessage="Unesite ime"></asp:RequiredFieldValidator>
        <br />
        Prezime:&nbsp;
        <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrezime" ErrorMessage="Unesite prezime"></asp:RequiredFieldValidator>
        <br />
        Adresa:&nbsp;&nbsp; <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
        <br />
        E-mail:&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMail" ErrorMessage="Unesite e-mail"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
        <br />
        <h4>
            <asp:Label ID="lblIspis" runat="server"></asp:Label>
        </h4>
        <br />
        <asp:Button ID="btnPosalji" runat="server" Text="Pošalji" Width="69px" OnClick="btnPosalji_Click" />
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
