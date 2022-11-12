Public Class Practical_101
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnPersistenece_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnPersistenece.Click
        Response.Cookies("name").Value = txtName.Text
        Response.Cookies("name").Expires = DateTime.Now.AddSeconds(10)
        Response.Redirect("P10_ViewResult.aspx")
    End Sub

    Protected Sub btnNonPersistenece_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnNonPersistenece.Click
        Response.Cookies("City").Value = txtCity.Text
        Response.Redirect("P10_ViewResult.aspx")
    End Sub
End Class