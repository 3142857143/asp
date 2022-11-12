Public Class Practical_20
    Inherits System.Web.UI.Page
    Protected TransactionCount As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TransactionCount = 10

        ' Now convert all the data binding expressions on the page.
        Me.DataBind()
        If Not Page.IsPostBack Then
            Dim ls As New List(Of String)
            ls.Add("Cricket")
            ls.Add("Football")
            ls.Add("Hockey")
            chkRepeatedBound.DataSource = ls
            chkRepeatedBound.DataBind()
        End If
    End Sub

End Class