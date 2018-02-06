Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Web
Imports System.Configuration.ConfigurationManager
Imports System.Collections
Imports System.Collections.Generic
Imports System.Data.SqlClient



Public Class patientDataTier
    'create connection
    Dim connString As New SqlConnection(ConnectionStrings("connString").ConnectionString)
    Dim cmdString As New SqlCommand
    Public Sub cmdStringConfig()
        'handles the db setup except
        '(parameters, .CommandText, Adapters, and datasets)
        ''must be called in try statement
        connString.Open()
        cmdString.Parameters.Clear()

        With cmdString
            .Connection = connString
            .CommandType = CommandType.StoredProcedure
            .CommandTimeout = 120

        End With
    End Sub

    Public Sub addPatient(ByVal patientFirstName As String,
                    patientLastName As String, patientMiddleInitial As String, patientDOB As String, patientGender As String, patientHomePhone As String, patientCellPhone As String,
                    patientAddress As String, patientCity As String, patientState As String, patientZipCode As String, patientEmailAddress As String)
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "ADDPATIENT" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@fName", SqlDbType.VarChar, 25).Value = patientFirstName
                .Parameters.Add("@lName", SqlDbType.VarChar, 25).Value = patientLastName
                .Parameters.Add("@mInitial", SqlDbType.Char, 1).Value = patientMiddleInitial
                .Parameters.Add("@DOB", SqlDbType.Date).Value = patientDOB
                .Parameters.Add("@gender", SqlDbType.Char, 6).Value = patientGender
                .Parameters.Add("@homePhone", SqlDbType.VarChar, 15).Value = patientHomePhone
                .Parameters.Add("@cellPhone", SqlDbType.VarChar, 15).Value = patientCellPhone
                .Parameters.Add("@patientAddress", SqlDbType.VarChar, 60).Value = patientAddress
                .Parameters.Add("@city", SqlDbType.VarChar, 60).Value = patientCity
                .Parameters.Add("@patientState", SqlDbType.VarChar, 2).Value = patientState
                .Parameters.Add("@zip", SqlDbType.VarChar, 5).Value = patientZipCode
                .Parameters.Add("@email", SqlDbType.VarChar, 80).Value = patientEmailAddress

                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception

        Finally
            connString.Close()

        End Try
    End Sub


    Public Function search_patient(DOBstartBound As String, DOBstopBound As String, patientName As String, patientID As String) As Object
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "SEARCH_PATIENT" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@DOBstartBound", SqlDbType.Date).Value = DOBstartBound
                .Parameters.Add("@DOBstopBound", SqlDbType.Date).Value = DOBstopBound
                .Parameters.Add("@patientName", SqlDbType.VarChar, 51).Value = patientName
                .Parameters.Add("@patientID", SqlDbType.Int).Value = patientID


                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception


        Finally
            connString.Close()

        End Try
    End Function
End Class
