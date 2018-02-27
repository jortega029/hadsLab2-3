Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class AccesoDatosSQL
    Private Shared conexion As New SqlConnection
    Private Shared comando As New SqlCommand
    Public Shared Function Conectar() As String
        Try
            conexion.ConnectionString = "Server=tcp:hads25.database.windows.net,1433;Initial Catalog=HADS25-TAREAS;Persist Security Info=False;User ID=amaiajokin@hads25;Password=;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
            conexion.Open()
        Catch ex As Exception
            Return "ERROR DE CONEXIÓN: " + ex.Message
        End Try
        Return "CONEXION OK"
    End Function

    Public Shared Sub CerrarConexion()
        conexion.Close()
    End Sub

    Public Shared Function Insertar(ByVal email As String, ByVal nombre As String, ByVal apellidos As String, ByVal numConf As Integer, ByVal rol As String, ByVal psw As String) As Integer
        Dim st = "insert into Usuarios values ('" & email & "','" & nombre & "', '" & apellidos & "', '" & numConf & "', 0, '" & rol & "', '" & psw & "')"
        Dim numregs As Integer
        comando = New SqlCommand(st, conexion)
        Try
            numregs = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return -1
        End Try
        Return 0
    End Function

    Public Shared Function Contar(ByVal email As String, ByVal psw As String) As Integer
        Dim st = "select count(*) from Usuarios where email = '" & email & "' and pass = '" & psw & "'"
        comando = New SqlCommand(st, conexion)
        Dim num = comando.ExecuteScalar()
        st = "select confirmado from Usuarios where email = '" & email & "' and pass = '" & psw & "'"
        comando = New SqlCommand(st, conexion)
        Dim conf = comando.ExecuteScalar()
        If num <> 0 Then
            If conf = 0 Then
                Return 2
            End If
            Return num
        Else
            Return 0
        End If

    End Function

    Public Shared Function ConfirmarCuenta(ByVal email As String, ByVal numero As Integer) As Boolean
        Dim st = "select numconfir from Usuarios where email='" & email & "'"
        comando = New SqlCommand(st, conexion)
        Dim num As Integer = comando.ExecuteScalar()
        If (num = numero) Then
            st = "update Usuarios set confirmado = 1 where email ='" & email & "'"
            comando = New SqlCommand(st, conexion)
            comando.ExecuteNonQuery()
            Return True
        Else
            Return False
        End If
    End Function

    Public Shared Function ExisteEmail(ByVal email As String) As Integer
        Dim st = "select numconfir from Usuarios where email='" & email & "'"
        comando = New SqlCommand(st, conexion)
        Dim num As Integer = comando.ExecuteScalar()
        If (num = vbNull) Then
            Return -1
        Else
            Return num
        End If
    End Function

    Public Shared Function enviarEmail(email As String, mensaje As String) As Boolean
        Try
            'Direccion de origen
            Dim from_address As New MailAddress("jortega029@ikasle.ehu.es", "AmaiaJokin")
            'Direccion de destino
            Dim to_address As New MailAddress(email)
            'Password de la cuenta
            Dim from_pass As String = ""
            'Objeto para el cliente smtp
            Dim smtp As New SmtpClient
            'Host en este caso el servidor de gmail
            smtp.Host = "smtp.ehu.es"
            'Puerto
            smtp.Port = 587
            'SSL activado para que se manden correos de manera segura
            smtp.EnableSsl = True
            'No usar los credenciales por defecto ya que si no no funciona
            smtp.UseDefaultCredentials = False
            'Credenciales
            smtp.Credentials = New System.Net.NetworkCredential(from_address.Address, from_pass)
            'Creamos el mensaje con los parametros de origen y destino
            Dim message As New MailMessage(from_address, to_address)
            'Añadimos el asunto
            message.Subject = "Confirmación cuenta"
            'Concatenamos el cuerpo del mensaje a la plantilla
            message.Body = mensaje
            'Definimos el cuerpo como html para poder escojer mejor como lo mandamos
            message.IsBodyHtml = True
            'Se envia el correo
            smtp.Send(message)
        Catch e As Exception
            Return False
        End Try
        Return True
    End Function

    Public Shared Function modificarContrasena(email As String, contrasena As String) As Boolean
        Dim st = "update Usuarios set pass = '" & contrasena & "' where email ='" & email & "'"
        comando = New SqlCommand(st, conexion)
        If comando.ExecuteNonQuery() Then
            Return True
        Else
            Return False
        End If
        Return True
    End Function

End Class
