<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="Lab2HADS25.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Bienvenido a  la página de HADS de Amaia y Jokin" style="font-weight: 700; font-size: x-large"></asp:Label>
        </div>
        <p class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Elija una de las opciones:" style="font-size: large"></asp:Label>
        </p>
        <p class="auto-style1">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registro.aspx" BackColor="#CCFFCC" BorderColor="#99FF66" BorderStyle="Outset" Font-Underline="False" ForeColor="Black">Registrarse en el sistema</asp:HyperLink>
        </p>
        <p class="auto-style1">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx" BackColor="#CCFFCC" BorderColor="#99FF66" BorderStyle="Outset" Font-Underline="False" ForeColor="Black">Login</asp:HyperLink>
        </p>
        <p class="auto-style1">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CambiarPassword.aspx" BackColor="#CCFFCC" BorderColor="#99FF66" BorderStyle="Outset" Font-Underline="False" ForeColor="Black">Modificar contraseña</asp:HyperLink>
        </p>
    </form>
</body>
</html>
