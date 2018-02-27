Imports AccesoDatos.AccesoDatosSQL
Public Class Confirmar
    Inherits System.Web.UI.Page
    Protected Sub Page_PreLoad(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreLoad
        Dim email As String = Request.QueryString("email")
        Dim numero As Integer = Request.QueryString("num")
        Conectar()
        If ConfirmarCuenta(email, numero) Then
        Else
            Label4.Text = "No has completado correctamente el registro"
            Button1.Enabled = False
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

    End Sub
End Class