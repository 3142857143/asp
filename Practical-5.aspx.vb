Public Class Practical_5
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not Page.IsPostBack Then
        For i = 1 To 31
            dpDay.Items.Add(i)
        Next
        For i = 1 To 12
            dpMonth.Items.Add(i)
        Next
        For i = 1990 To 2010
            dpYear.Items.Add(i)
        Next

        dpCity.Items.Add("Ahmedabad")
        dpCity.Items.Add("Rajkot")
        dpCity.Items.Add("Baroda")
        dpCity.Items.Add("Surat")
        'End If
    End Sub

    Protected Sub dpState_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles dpState.SelectedIndexChanged
        dpCity.Items.Clear()
        If dpState.Text = "Gujarat" Then
            dpCity.Items.Add("Ahmedabad")
            dpCity.Items.Add("Rajkot")
            dpCity.Items.Add("Baroda")
        ElseIf dpState.Text = "Maharastra" Then
            dpCity.Items.Add("Bombay")
            dpCity.Items.Add("Pune")
            dpCity.Items.Add("Nagpur")
        End If
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        pnlDisplay.Visible = True
        pnlDisplay.GroupingText = "Student Registration Details"
        Dim totR As Integer
        Dim tr As TableRow
        Dim tc1 As TableCell, tc2 As TableCell
        Dim tblDisplay As New Table
        Dim strHobbies As String
        'Dim result As String

        'result = "UserName:" + txtUserName.Text + "</br>" + _
        '         "Name:" + txtFullName.Text + "</br>" + _
        '         "Email:" + txtEmail.Text + "</br>"
        'lblResult.Text = result
        pnlDisplay.Controls.Add(tblDisplay)

        totR = 8
        strHobbies = ""
        For r = 1 To totR
            tr = New TableRow()

            tc1 = New TableCell()
            tc2 = New TableCell()
            If r = 1 Then
                tc1.Text = "Username:"
                tc2.Text = txtUserName.Text
            ElseIf r = 2 Then
                tc1.Text = "Full Name:"
                tc2.Text = txtFullName.Text
            ElseIf r = 3 Then
                tc1.Text = "Birth Date:"
                tc2.Text = dpDay.Text & "/" & dpMonth.Text & "/" & dpYear.Text
            ElseIf r = 4 Then
                tc1.Text = "Gender:"
                If rdbMale.Checked = True Then
                    tc2.Text = "Male"
                Else
                    tc2.Text = "FeMale"
                End If
            ElseIf r = 5 Then
                tc1.Text = "E-mail:"
                tc2.Text = txtEmail.Text
            ElseIf r = 6 Then
                tc1.Text = "Address:"
                tc2.Text = txtAddress1.Text & ", " & txtAddress2.Text & ", " & dpCity.Text & ", " & dpState.Text
            ElseIf r = 7 Then
                tc1.Text = "Percentage:"
                tc2.Text = txtPercentage.Text
            ElseIf r = 8 Then
                tc1.Text = "Hobbies:"
                For x = 0 To chkHobbies.Items.Count - 1
                    If chkHobbies.Items(x).Selected Then
                        strHobbies = chkHobbies.Items(x).Value & ", " & strHobbies
                    End If
                Next
                If chkOther.Checked Then
                    strHobbies = txtOther.Text & ", " & strHobbies
                End If
                strHobbies = Left(strHobbies, Len(strHobbies) - 2)
                tc2.Text = strHobbies
            End If
            tr.Cells.Add(tc1)
            tr.Cells.Add(tc2)

            tblDisplay.Rows.Add(tr)
        Next r
    End Sub

    Protected Sub chkOther_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles chkOther.CheckedChanged
        If chkOther.Checked = True Then
            txtOther.Visible = True
        End If
    End Sub

    Protected Sub checkLength(ByVal source As Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        If txtFullName.Text.Length < 8 Then
            args.IsValid = False
        Else
            args.IsValid = True
        End If
    End Sub
End Class