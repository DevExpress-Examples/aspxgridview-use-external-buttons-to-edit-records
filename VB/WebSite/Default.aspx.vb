Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Private Function GetTable() As DataTable
		'You can store a DataTable in the session state
		Dim table As DataTable = TryCast(Session("Table"), DataTable)
		If table Is Nothing Then
			table = New DataTable()

			Dim colid As DataColumn = table.Columns.Add("ID", GetType(Int32))
			Dim nameid As DataColumn = table.Columns.Add("Name", GetType(String))
			table.PrimaryKey = New DataColumn() { colid }
			colid.ReadOnly = True

			For i As Integer = 0 To 22
				Dim aRow As DataRow = table.NewRow()
				aRow("ID") = i
				aRow("Name") = String.Format("Name{0}", i)

				table.Rows.Add(aRow)
			Next i
			Session("Table") = table
		End If
		Return table
	End Function

	Public Function GetLastKey() As Int32
		Dim table As DataTable = GetTable()

		Dim max As Int32 = Int32.MinValue
		For Each row As DataRow In table.Rows
			If Convert.ToInt32(row("ID")) > max Then
				max = Convert.ToInt32(row("ID"))
			End If
		Next row
		Return max
	End Function


	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
		grid.DataSource = GetTable()
		grid.KeyFieldName = "ID"
		grid.DataBind()
	End Sub

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

	End Sub

	Protected Sub grid_RowDeleting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataDeletingEventArgs)
		Dim grid As ASPxGridView = TryCast(sender, ASPxGridView)

		Dim table As DataTable = GetTable()
		Dim found As DataRow = table.Rows.Find(e.Keys(0))
		table.Rows.Remove(found)

		Session("Table") = table

		e.Cancel = True
	End Sub

	Protected Sub grid_RowInserting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataInsertingEventArgs)
		Dim grid As ASPxGridView = TryCast(sender, ASPxGridView)

		Dim table As DataTable = GetTable()
		table.Rows.Add(New Object() { e.NewValues("ID"), e.NewValues("Name") })

		Session("Table") = table

		e.Cancel = True
		grid.CancelEdit()
	End Sub

	Protected Sub grid_RowUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
		Dim grid As ASPxGridView = TryCast(sender, ASPxGridView)

		Dim table As DataTable = GetTable()
		Dim found As DataRow = table.Rows.Find(e.Keys(0))
		found("Name") = e.NewValues("Name")

		Session("Table") = table

		e.Cancel = True
		grid.CancelEdit()
	End Sub
	Protected Sub grid_InitNewRow(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataInitNewRowEventArgs)
		e.NewValues("ID") = GetLastKey() + 1
	End Sub
End Class
