Imports System.Data.SqlClient

Public Class Practical_19
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim dt As DataTable = Me.GetData()
            gvFilterUsingDataView.DataSource = dt
            gvFilterUsingDataView.DataBind()
        End If
    End Sub

    Private Function GetData() As DataTable
        Dim dt As New DataTable()
        Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True"
        Dim sql As String = "select * from tblStudent"
        Using conn As New SqlConnection(constr)
            Using cmd As New SqlCommand(sql)
                cmd.Connection = conn
                Using sda As New SqlDataAdapter(cmd)
                    sda.Fill(dt)
                End Using
            End Using
        End Using

        Return dt
    End Function

    Protected Sub dpCity_TextChanged(sender As Object, e As EventArgs) Handles dpCity.TextChanged
        Dim valCity As String = dpCity.SelectedItem.Value()
        Dim dt As DataTable = Me.GetData()
        Dim dataView As DataView = dt.DefaultView
        If Not String.IsNullOrEmpty(valCity) Then
            dataView.RowFilter = "city = '" & valCity & "'"
        End If
        gvFilterUsingDataView.DataSource = dataView
        gvFilterUsingDataView.DataBind()
    End Sub
End Class