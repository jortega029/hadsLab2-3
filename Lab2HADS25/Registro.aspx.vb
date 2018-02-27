Imports System.Net.Mail
Imports AccesoDatos.AccesoDatosSQL
Public Class Registrar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Conectar()
        If (psw.Text = psw2.Text) Then
            Dim res As Integer
            Dim numConf
            Randomize()
            numConf = CLng(Rnd() * 9000000) + 1000000
            res = Insertar(email.Text, nombre.Text, apellidos.Text, numConf, rol.Text, psw.Text)
            If res = 0 Then
                Dim url As String = "http://hads1825.azurewebsites.net/Confirmar.aspx?num=" & numConf & "&email=" & email.Text
                Dim cuerpo As String = "<html><head></head><body><h1>Pulsa en este enlace para confirmar tu cuenta<br/></h1><a href='" + url + "'>Confirmar cuenta</a></body></html>"
                enviarEmail(email.Text, cuerpo)
                QUERY.Text = "Te has registrado correctamente"
                HyperLink1.Visible = True
            Else
                QUERY.Text = "Ya existe ese usuario en la Base de datos"
            End If

        Else
            QUERY.Text = "Las contraseñas no coinciden"
        End If
        CerrarConexion()
    End Sub


End Class