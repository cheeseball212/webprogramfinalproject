Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Web
Imports System.Configuration.ConfigurationManager
Imports System.Collections
Imports System.Collections.Generic
Imports System.Data.SqlClient


Public Class prescriptionDataTier

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

    Public Function addPrescription(ByVal patientID As String, physicianID As String,
                                    drugName As String, drugDescription As String, expireDate As String,
                                    drugDoseage As String, intakeMethod As String, drugFrequency As String,
                                    maxRefills As String) As Integer
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "ADD_PRESCRIPTION" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@patientID", SqlDbType.Int).Value = patientID
                .Parameters.Add("@physicianID", SqlDbType.Int, 5).Value = physicianID
                .Parameters.Add("@drugName", SqlDbType.VarChar, 60).Value = drugName
                .Parameters.Add("@drugDescription", SqlDbType.VarChar, 60).Value = drugDescription
                .Parameters.Add("@expireDate", SqlDbType.Date).Value = expireDate
                .Parameters.Add("@DRUGDOSAGE", SqlDbType.VarChar, 40).Value = drugDoseage
                .Parameters.Add("@intakeMethod", SqlDbType.VarChar, 50).Value = intakeMethod
                .Parameters.Add("@drugFrequency", SqlDbType.VarChar, 50).Value = drugFrequency
                .Parameters.Add("@maxRefills", SqlDbType.Int).Value = maxRefills

                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception

        Finally
            connString.Close()

        End Try
    End Function

    Public Function deletePrescription(rxNumber As String) As Integer
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "DELETE_PRESCRIPTION" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@rxNumber", SqlDbType.Int).Value = rxNumber


                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteReader()
            End With
        Catch ex As Exception

        Finally
            connString.Close()

        End Try
    End Function

    Public Function searchPrescription(RxNumber As String, patientName As String, physicianName As String, drugName As String, prescribedStartDateBound As String, prescribedStopDateBound As String) As Object

        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "SEARCH_PRESCRIPTION" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@RxNumber", SqlDbType.Int).Value = RxNumber
                .Parameters.Add("@patientName", SqlDbType.VarChar, 51).Value = patientName
                .Parameters.Add("@physicianName", SqlDbType.VarChar, 51).Value = physicianName
                .Parameters.Add("@drugName", SqlDbType.VarChar, 60).Value = drugName
                .Parameters.Add("@prescribedStartDateBound", SqlDbType.Date).Value = prescribedStartDateBound
                .Parameters.Add("@prescribedStopDateBound", SqlDbType.Date).Value = prescribedStopDateBound




                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception

        Finally
            connString.Close()

        End Try
    End Function

    Public Function updatePrescription(rxNumber As String, drugDescription As String,
                                       drugDosage As String, drugFrequency As String,
                                       intakeMethod As String, maxRefills As String) As Integer
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "UPDATE_PRESCRIPTION" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app

                .Parameters.Add("@rxNumber", SqlDbType.Int).Value = rxNumber
                .Parameters.Add("@DrugDescription", SqlDbType.Int).Value = drugDescription
                .Parameters.Add("@DRUGDOSAGE", SqlDbType.VarChar, 40).Value = drugDosage
                .Parameters.Add("@drugFrequency", SqlDbType.VarChar, 50).Value = drugFrequency
                .Parameters.Add("@intakeMethod", SqlDbType.VarChar, 50).Value = intakeMethod
                .Parameters.Add("@maxRefills", SqlDbType.Int).Value = maxRefills




                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception

        Finally
            connString.Close()

        End Try
    End Function

End Class
