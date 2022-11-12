Public Class Practical_4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        panelMarksheet.Visible = True
        Dim net As Integer, ens As Integer, icn As Integer, java As Integer, total As Integer
        Dim per As Double

        net = CInt(txtNet.Text)
        lbl_M_Net.Text = net
        lbl_G_Net.Text = getGrade(net)
        'ICN
        icn = CInt(txtICN.Text)
        lbl_M_ICN.Text = icn
        lbl_G_ICN.Text = getGrade(icn)
        'Java
        java = CInt(txtJava.Text)
        lbl_M_Java.Text = java
        lbl_G_Java.Text = getGrade(java)
        'ENS
        ens = CInt(txtENS.Text)
        lbl_M_ENS.Text = ens
        lbl_G_ENS.Text = getGrade(ens)

        total = net + ens + icn + ens
        per = total / 4
        MsgBox("Your overall grade is:->" + getGrade(per), MsgBoxStyle.Information, "Grade")
    End Sub

    Public Function getGrade(ByVal marks As Integer) As String
        Dim strGrade As String
        strGrade = "FF"
        If marks > 90 And marks <= 100 Then
            strGrade = "AA"
        ElseIf marks > 80 And marks <= 90 Then
            strGrade = "AB"
        ElseIf marks > 70 And marks <= 80 Then
            strGrade = "BB"
        ElseIf marks > 60 And marks <= 70 Then
            strGrade = "BC"
        ElseIf marks > 50 And marks <= 60 Then
            strGrade = "CC"
        ElseIf marks > 40 And marks <= 50 Then
            strGrade = "DD"
        End If
        Return strGrade
    End Function
End Class