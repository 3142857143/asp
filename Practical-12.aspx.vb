Public Class Practical_12
    Inherits System.Web.UI.Page

    Protected Sub btnViewState_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnViewState.Click
        ViewState("name") = txtName.Text
        lblViewState.Text = ViewState("name").ToString()
        'Response.Redirect("P12_ViewResult.aspx")
    End Sub

    Protected Sub btnQueryString_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnQueryString.Click
        'Response.Redirect("P12_ViewResult.aspx?name=Vipul Gajjar&city=Rajkot")
        Response.Redirect("P12_ViewResult.aspx?name=" & txtName.Text & "&city=" & txtCity.Text)
    End Sub
End Class