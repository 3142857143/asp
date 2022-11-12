Public Class Practical_8
    Inherits System.Web.UI.Page

    Protected Sub change_Theme(ByVal sender As Object, ByVal e As EventArgs) Handles rbRed.CheckedChanged, rbBlue.CheckedChanged, rbGreen.CheckedChanged
        If rbRed.Checked Then
            'Theme = "Red"
            Session("theme") = rbRed.Text
            Server.Transfer(Request.FilePath)
        ElseIf rbBlue.Checked Then
            'Theme = "Blue"
            Session("theme") = rbBlue.Text
            Server.Transfer(Request.FilePath)
        ElseIf rbGreen.Checked Then
            'Theme = "Green"
            Session("theme") = rbGreen.Text
            Server.Transfer(Request.FilePath)
        End If
    End Sub

    Private Sub Practical_8_PreInit(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreInit
        If Session("theme") Is Nothing Then
            Theme = "Blue"  'for the first time Session("theme") does not contain any value.
        Else
            Theme = Session("theme").ToString() 'with in the Radio selection name of theme in session variable, 
            'this is set when user selects his choice of theme from Radiobutton
        End If
    End Sub
End Class