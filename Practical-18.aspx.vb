Imports System.Data.SqlClient

Public Class Practical_18
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim cmd As SqlCommand
            Dim objCon As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
            cmd = New SqlCommand("select * from tblStudent", objCon)
            Dim objAdapter As New SqlDataAdapter(cmd)

            Dim objDataset As New DataSet()
            objAdapter.Fill(objDataset)
            Dim dv As New DataView()

            dv = objDataset.Tables(0).DefaultView

            dv.Sort = "NAME"
            Session("myDataset") = objDataset
            gvSortUsingDataView.DataSource = objDataset.Tables(0)
            gvSortUsingDataView.DataBind()
        End If
    End Sub

    Protected Sub dpID_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dpID.SelectedIndexChanged
        Dim objDataset As DataSet
        objDataset = Session("myDataset")
        Dim dv As New DataView()

        dv = objDataset.Tables(0).DefaultView

        dv.Sort = dpID.Text
        Session("myDataset") = objDataset
        gvSortUsingDataView.DataSource = objDataset.Tables(0)
        gvSortUsingDataView.DataBind()
    End Sub
End Class