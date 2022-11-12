Public Class Practical_11
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblSessionID.Text = Session.SessionID.ToString()
    End Sub

    Protected Sub btnPersistenece_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSession.Click
        Session("name") = txtName.Text
        Session("city") = "Surat"
        Session("age") = 89
        Response.Redirect("P11_ViewResult.aspx")
    End Sub
End Class