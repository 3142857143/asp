Imports System.Data.SqlClient
Public Class Practical_14
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSubmit.Click
        Dim strQuery As String, gender As String
        Dim result As Integer
        gender = ""
        If rdbFemale.Checked Then
            gender = "Female"
        ElseIf rdbMale.Checked Then
            gender = "Male"
        End If

        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;User Instance=True")
        'Try
        strQuery = "insert into tblStudent values('" + txtID.Text + "', '" + txtName.Text + "', '" + gender + "', '" + txtHobby.Text + "', '" + txtDepartment.Text + "', '" + txtCity.Text + "', '" + txtMobile.Text + "')"
        Dim cm As New SqlCommand(strQuery, cn)
        cn.Open()
        result = cm.ExecuteNonQuery()
        cn.Close()
        If result > 0 Then
            lblResult.Text = "Record Inserted Successfully...!!"
        End If
        ''Catch ex As Exception
        ''MsgBox(ex.Message)
        ' End Try
        txtID.Text = ""
        txtName.Text = ""
        txtHobby.Text = ""
        txtDepartment.Text = ""
        txtCity.Text = ""
        txtMobile.Text = ""
        rdbFemale.Checked = False
        rdbMale.Checked = False
    End Sub
End Class