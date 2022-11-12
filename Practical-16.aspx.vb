Imports System.Data.SqlClient

Public Class Practical_16
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;User Instance=True")
            Dim cmd As SqlCommand
            cmd = New SqlCommand("select * from tblStudent", con)
            con.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            dr.Read()
            dpID.Items.Add(dr(0))
            While dr.Read()
                dpID.Items.Add(dr(0))
            End While
            con.Close()
        End If
    End Sub

    Protected Sub dpID_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles dpID.SelectedIndexChanged
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As SqlCommand
        cmd = New SqlCommand("select * from tblStudent where id='" + dpID.Text + "'", con)
        con.Open()
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()
        While dr.Read()
            txtName.Text = dr(1)
            If dr(2) = "Male" Then
                rdbMale.Checked = True
                rdbFemale.Checked = False
            ElseIf dr(2) = "Female" Then
                rdbFemale.Checked = True
                rdbMale.Checked = False
            End If
            txtHobby.Text = dr(3)
            txtDepartment.Text = dr(4)
            txtCity.Text = dr(5)
            txtMobile.Text = dr(6)
        End While
        con.Close()
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnUpdate.Click
        Dim strQuery As String, gender As String
        Dim result As Integer
        gender = ""
        If rdbFemale.Checked Then
            gender = "Female"
        ElseIf rdbMale.Checked Then
            gender = "Male"
        End If

        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;User Instance=True")

        strQuery = "UPDATE tblStudent set name='" + txtName.Text + "', " + _
                                       "gender='" + gender + "', " + _
                                        "hobby='" + txtHobby.Text + "', " + _
                                   "department='" + txtDepartment.Text + "', " + _
                                         "city='" + txtCity.Text + "', " + _
                                       "mobile='" + txtMobile.Text + "' " + _
                                    "where id='" + dpID.Text + "'"

        Dim cm As New SqlCommand(strQuery, cn)
        cn.Open()
        result = cm.ExecuteNonQuery()
        cn.Close()
        If result > 0 Then
            lblResult.Text = "Record Updated Successfully...!!"
            clearFields()
        End If
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnDelete.Click
        Dim strQuery As String
        Dim result As Integer
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\vggDB.mdf;Integrated Security=True;User Instance=True")

        strQuery = "DELETE from tblStudent where id='" + dpID.Text + "'"
        Dim cm As New SqlCommand(strQuery, cn)
        cn.Open()
        result = cm.ExecuteNonQuery()
        cn.Close()
        If result > 0 Then
            lblResult.Text = "Record Deleted Successfully...!!"
            clearFields()
        End If
    End Sub

    Private Sub clearFields()
        txtName.Text = ""
        txtHobby.Text = ""
        txtDepartment.Text = ""
        txtCity.Text = ""
        txtMobile.Text = ""
        rdbFemale.Checked = False
        rdbMale.Checked = False
    End Sub
End Class