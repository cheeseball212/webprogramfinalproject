Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Web
Imports System.Configuration.ConfigurationManager
Imports System.Collections
Imports System.Collections.Generic
Imports System.Data.SqlClient

Public Class physicianDataTier
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

    Public Sub addPhysician(physicianFirstName As String,
                        physicianLastName As String, physicianMiddleInitial As String, physicianDOB As String, physicianGender As String, physicianSpecialty As String, physicianWorkPhone As String,
                        physicianAddress As String, physicianCity As String, physicianState As String, physicianZipCode As String, physicianEmailAddress As String,
                         physicianSalary As String)
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL
                .Connection = connString
                .CommandType = CommandType.StoredProcedure
                .CommandTimeout = 900
                .CommandText = "ADD_PHYSICIAN" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@fName", SqlDbType.VarChar, 25).Value = physicianFirstName
                .Parameters.Add("@lName", SqlDbType.VarChar, 25).Value = physicianLastName
                .Parameters.Add("@mInitial", SqlDbType.Char, 1).Value = physicianMiddleInitial
                .Parameters.Add("@DOB", SqlDbType.Date).Value = physicianDOB
                .Parameters.Add("@gender", SqlDbType.Char, 6).Value = physicianGender
                .Parameters.Add("@specialty", SqlDbType.VarChar, 40).Value = physicianSpecialty
                .Parameters.Add("@workPhone", SqlDbType.VarChar, 15).Value = physicianWorkPhone
                .Parameters.Add("@physicianAddress", SqlDbType.VarChar, 60).Value = physicianAddress
                .Parameters.Add("@city", SqlDbType.VarChar, 60).Value = physicianCity
                .Parameters.Add("@physicianState", SqlDbType.VarChar, 2).Value = physicianState
                .Parameters.Add("@zip", SqlDbType.VarChar, 5).Value = physicianZipCode
                .Parameters.Add("@email", SqlDbType.VarChar, 80).Value = physicianEmailAddress
                .Parameters.Add("@salary", SqlDbType.Decimal, 8, 2).Value = physicianSalary
                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception
            Throw New ArgumentException(ex.Message)
        Finally
            connString.Close()

        End Try
    End Sub

    Public Sub searchPhysician(DOBstartBound As String, DOBstopBound As String, physicianName As String, physicianspecialty As String)
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "SEARCH_PHYSICIAN" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@DOBstartBound", SqlDbType.Date).Value = DOBstartBound
                .Parameters.Add("@DOBstopBound", SqlDbType.Date).Value = DOBstopBound
                .Parameters.Add("@physicianName", SqlDbType.VarChar, 51).Value = physicianName
                .Parameters.Add("@physicianSpecialty", SqlDbType.VarChar, 40).Value = physicianspecialty

                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception


        Finally
            connString.Close()

        End Try
    End Sub

End Class
