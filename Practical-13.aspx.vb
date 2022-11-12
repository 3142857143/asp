Public Class Practical_13
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblOnlineUser.Text = Application("TotalOnlineUsers").ToString()
        lblTotNoOfHits.Text = Application("TotHits").ToString()
    End Sub

End Class