Imports System.Data
Imports Microsoft.VisualBasic
Imports System.Web
Imports System.Configuration.ConfigurationManager
Imports System.Collections
Imports System.Collections.Generic
Imports System.Data.SqlClient

Public Class RefillDataTier
    'DataTier template
    Dim connString As New SqlClient.SqlConnection(ConnectionStrings("connString").ConnectionString)
    Dim cmdString As New SqlClient.SqlCommand

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

    Public Function addRefill(RxNumber As String)
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "DELETE_REFILL" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@RxNumber", SqlDbType.Int).Value = RxNumber


                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteReader()
            End With
        Catch ex As Exception

        Finally
            connString.Close()
        End Try

    End Function

    Public Function deleteRefill(refillID As String) As Integer
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "DELETE_REFILL" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app
                .Parameters.Add("@refillID", SqlDbType.Int).Value = refillID


                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteReader()
            End With
        Catch ex As Exception

        Finally
            connString.Close()

        End Try
    End Function

    Public Function searchRefill(patientName As String, physicianName As String,
                                        drugName As String, prescribedStartDateBound As String,
                                        prescribedStopDateBound As String, refillStartDateBound As String,
                                        refillStopDateBound As String, refillID As String)
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "SEARCH_REFILL" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app

                .Parameters.Add("@patientName", SqlDbType.VarChar, 51).Value = patientName
                .Parameters.Add("@physicianName", SqlDbType.VarChar, 51).Value = physicianName
                .Parameters.Add("@drugName", SqlDbType.VarChar, 60).Value = physicianName
                .Parameters.Add("@prescribedStartDateBound", SqlDbType.Date).Value = prescribedStartDateBound
                .Parameters.Add("@prescribedStopDateBound", SqlDbType.Date).Value = prescribedStopDateBound
                .Parameters.Add("@refillStopDateBound", SqlDbType.Date).Value = refillStopDateBound
                .Parameters.Add("@refillStopDateBound", SqlDbType.Date).Value = refillStopDateBound
                .Parameters.Add("@refillID", SqlDbType.Int).Value = refillID




                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception

        Finally
            connString.Close()

        End Try
    End Function

    Public Function updateRefill(refillID As String, refillDate As String) As Integer
        Try
            cmdStringConfig()

            With cmdString 'specifying SQL

                .CommandText = "UPDATE_REFILL" 'SQL stored procedure

                'how to package values from app to SQL language
                'what in SQL is = to variable in app

                .Parameters.Add("@refillID", SqlDbType.Int).Value = refillID
                .Parameters.Add("@refillDate", SqlDbType.DateTime).Value = refillDate





                '.Parameters.Add("@PHYSICIAN_ID", SqlDbType.VarChar, 5).Value = physicianID


                .ExecuteNonQuery()
            End With
        Catch ex As Exception

        Finally
            connString.Close()

        End Try
    End Function



End Class
