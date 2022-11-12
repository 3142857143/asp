Public Class Practical_6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            '2nd ListBox filled Only one time
            lstWithP.Items.Add("Ahmedabad")
            lstWithP.Items.Add("Rajkot")
            lstWithP.Items.Add("Surat")
            lstWithP.Items.Add("Morbi")
        End If
        '1st Listbox filled many times as page reload
        lstWithoutP.Items.Add("Ahmedabad")
        lstWithoutP.Items.Add("Rajkot")
        lstWithoutP.Items.Add("Surat")
        lstWithoutP.Items.Add("Morbi")
    End Sub

End Class