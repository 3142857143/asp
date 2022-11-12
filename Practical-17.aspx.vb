Imports System.Data.SqlClient

Public Class Practical_17
    Inherits System.Web.UI.Page

    Protected Sub btnFillGridView_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnFillGridView.Click
        Dim cmd As SqlCommand
        Dim objCon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
        cmd = New SqlCommand("select * from tblStudent", objCon)
        Dim objAdapter As New SqlDataAdapter(cmd)

        Dim objDataset As New DataSet()
        objAdapter.Fill(objDataset)

        gvBound.DataSource = objDataset.Tables(0)
        gvBound.DataBind()
    End Sub
End Class