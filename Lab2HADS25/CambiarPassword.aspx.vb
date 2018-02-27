Imports AccesoDatos.AccesoDatosSQL
Public Class CambiarPassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Conectar()
        Dim existe As Integer = ExisteEmail(TextBox4.Text)
        If (existe <> -1) Then
            Dim texto As String = "<html><head></head><body><h1>Este es tu número de confirmación para cambiar tu contraseña: " & existe & "</a></body></html>"
            enviarEmail(TextBox4.Text, texto)
            enviado.Text = "Se te ha enviado un código a tu correo. Introdúcelo aquí:"
            TextBox5.Visible = True
            Label6.Visible = True
            Button2.Visible = True
            RequiredFieldValidator4.Visible = True
            Button1.Visible = False
            Label4.Visible = False
            TextBox4.Visible = False
            RequiredFieldValidator1.Visible = False
            RegularExpressionValidator1.Visible = False
        End If
        CerrarConexion()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Conectar()
        Dim cod As Integer = TextBox5.Text
        Dim cod2 As Integer = ExisteEmail(TextBox4.Text)
        If cod = cod2 Then
            Label6.Visible = False
            TextBox5.Visible = False
            Button2.Visible = False
            enviado.Visible = False
            Label5.Visible = True
            TextBox6.Visible = True
            txtRep.Visible = True
            repPass.Visible = True
            botonCambiar.Visible = True
            RegularExpressionValidator2.Visible = True
            RequiredFieldValidator2.Visible = True
            RequiredFieldValidator3.Visible = True
        Else
            errorCod.Text = "¿Estás seguro de que ese es el código que te hemos enviado?"
        End If
        CerrarConexion()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles botonCambiar.Click
        Conectar()
        errorMsg.Text = ""
        errorMsg.Visible = True
        If TextBox6.Text = repPass.Text Then
            modificarContrasena(TextBox4.Text, TextBox6.Text)
            TextBox6.Enabled = False
            txtRep.Enabled = False
            repPass.Enabled = False
            botonCambiar.Enabled = False
            errorMsg.Text = "Tu contraseña se ha modificado correctamente"
            HyperLink1.Visible = True
        Else
            errorMsg.Text = "Las contraseñas no coinciden"
        End If
        CerrarConexion()
    End Sub
End Class