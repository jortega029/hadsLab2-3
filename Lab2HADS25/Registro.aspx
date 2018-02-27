<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="Lab2HADS25.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 1130px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Correo electrónico: "></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="El formato del email no es correcto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <p class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Nombre: "></asp:Label>
            <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nombre" ErrorMessage="*"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Apellidos: "></asp:Label>
            <asp:TextBox ID="apellidos" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="apellidos" ErrorMessage="*"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Contraseña: "></asp:Label>
            <asp:TextBox ID="psw" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="psw" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="psw" ErrorMessage="Formato: de 4 a 16 caracteres, mayúsculas, minúsculas y números" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,16}$"></asp:RegularExpressionValidator>
        </p>
        <p class="auto-style1">
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Repetir contraseña: "></asp:Label>
            <asp:TextBox ID="psw2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="psw2" ErrorMessage="*"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style1">
            Elije:
            <asp:DropDownList ID="rol" runat="server">
                <asp:ListItem>Profesor</asp:ListItem>
                <asp:ListItem>Alumno</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="REGISTRARSE" style="text-align: center" />
        </p>
        <p class="auto-style1">
            <asp:Label ID="QUERY" runat="server"></asp:Label>
        </p>
        <p class="auto-style1">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Inicio.aspx" Visible="False">VOLVER AL INICIO</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
