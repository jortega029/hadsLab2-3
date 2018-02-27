Imports AccesoDatos.AccesoDatosSQL
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Conectar()
        Dim numreg As Integer
        Try
            numreg = Contar(email.Text, psw.Text)
        Catch ex As Exception
            QUERY.Text = ex.Message
            Exit Sub
        End Try
        Dim num = numreg + 0
        If num = 1 Then
            Response.Redirect(“aplicacion.aspx”)
        ElseIf num = 2 Then
            QUERY.Text = "Confirma tu registro, revisa tu correo electrónico y accede desde el enlace que te  mandamos al registrarte"
        Else
            QUERY.Text = "El usuario o la contraseña no son correctos"
        End If
        CerrarConexion()
    End Sub
End Class