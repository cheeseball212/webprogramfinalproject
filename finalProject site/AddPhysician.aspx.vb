
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub btnAddPhysician_Click(sender As Object, e As EventArgs) Handles btnAddPhysician.Click
        Dim adatatier As New physicianDataTier

        Try
            Dim fname As String = txtFname.Text
            Dim lname As String = txtLname.Text
            Dim midinit As String = txtMidinit.Text
            Dim dob As Date = txtDOB.Text
            Dim gender As String = txtGender.Text
            Dim spec As String = txtSpec.Text
            Dim wphone As String = txtWorkPhone.Text
            Dim address As String = txtAddress.Text
            Dim city As String = txtCity.Text
            Dim state As String = txtState.Text
            Dim zip As String = txtZip.Text
            Dim email As String = txtEmail.Text
            Dim salary As Decimal = txtSalary.Text

            adatatier.addPhysician(fname, lname, midinit, dob, gender, spec, wphone, address, city, state, zip, email, salary)
        Catch ex As Exception

        End Try

        If Page.IsValid Then
            lblMessage.Text = "Physician Added"
        End If
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblMessage.Text = ""
    End Sub
End Class
