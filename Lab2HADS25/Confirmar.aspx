<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Confirmar.aspx.vb" Inherits="Lab2HADS25.Confirmar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label4" runat="server" Text="¡Ya estás registrado!"></asp:Label>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Inicio.aspx" Text="VOLVER AL INICIO" />
        </p>
    </form>
</body>
</html>
