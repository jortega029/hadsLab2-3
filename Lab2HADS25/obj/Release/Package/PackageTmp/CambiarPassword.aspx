<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CambiarPassword.aspx.vb" Inherits="Lab2HADS25.CambiarPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Introduce un formato de Email válido" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <asp:Button ID="Button1" runat="server" Text="SOLICITAR CAMBIO DE CONTRASEÑA" />
        <br />
        <asp:Label ID="enviado" runat="server"></asp:Label>
        <p id ="pCod">
            <asp:Label ID="Label6" runat="server" Text="Código:" Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server" style="margin-bottom: 0px" Visible="False"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="errorCod" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="CONFIRMAR CÓDIGO" Visible="False" />
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Contraseña nueva:" Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server" style="margin-bottom: 0px" TextMode="Password" Visible="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" Visible="False"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Formato: de 4 a 16 caracteres, mayúsculas, minúsculas y números" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$" Visible="False"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="txtRep" runat="server" Text="Repite la contraseña:" Visible="False"></asp:Label>
&nbsp;<asp:TextBox ID="repPass" runat="server" style="margin-bottom: 0px" TextMode="Password" Visible="False"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="repPass" ErrorMessage="*" Visible="False"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="botonCambiar" runat="server" Text="MODIFICAR CONTRASEÑA" Visible="False" />
        </p>
        <p>
            <asp:Label ID="errorMsg" runat="server"></asp:Label>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Inicio.aspx" Visible="False">VOLVER AL INICIO</asp:HyperLink>
        </p>
    </form>
</body>
</html>
