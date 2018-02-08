
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnAddPatient_Click(sender As Object, e As EventArgs) Handles btnAddPatient.Click
        Dim aDatatier As New patientDataTier
        Try
            Dim fname As String = txtFName.Text.Trim
            Dim lName As String = txtLName.Text.Trim
            Dim midInitial As String = txtMidinit.Text.Trim
            Dim DOB As String = txtDOB.Text.Trim
            Dim gender As String = txtGender.Text.Trim
            Dim homePhone As String = txtHomePhone.Text.Trim
            Dim cellPhone As String = txtCellPhone.Text.Trim
            Dim address As String = txtAddress.Text.Trim
            Dim city As String = txtCity.Text.Trim
            Dim state As String = txtState.Text.Trim
            Dim zip As String = txtZip.Text.Trim
            Dim email As String = txtEmail.Text.Trim

            aDatatier.addPatient(fname, lName, midInitial, DOB, gender, homePhone, cellPhone, address, city, state, zip, email)
        Catch ex As Exception

        End Try
    End Sub
    Protected Sub txtDOB_TextChanged(sender As Object, e As EventArgs) Handles txtDOB.TextChanged

    End Sub
End Class


