Imports System.Data.SqlClient

Public Class Practical_15
    Inherits System.Web.UI.Page


    Protected Sub btnFetchID_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnFetchID.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select Max(id) from tblStudent", cn)
        cn.Open()
        txtMaxID.Text = cmd.ExecuteScalar()
        cn.Close()
    End Sub

    Protected Sub btnFetchTotalRecord_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnFetchTotalRecord.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select Count(id) from tblStudent", cn)
        cn.Open()
        txtTotRec.Text = cmd.ExecuteScalar()
        cn.Close()
    End Sub
End Class