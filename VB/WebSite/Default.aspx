<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to implement a toolbar for grid with Inserting, Updating and Deleting capabilities</title>

	<script language="javascript" type="text/javascript">
	function OnNewClick(s, e) {
		grid.AddNewRow();
	}

	function OnEditClick(s, e) {
		var index = grid.GetFocusedRowIndex();
		grid.StartEditRow(index);
	}

	function OnSaveClick(s, e) {
		grid.UpdateEdit();
	}

	function  OnCancelClick(s, e) {
		grid.CancelEdit();
	} 

	function  OnDeleteClick(s, e){
		var index = grid.GetFocusedRowIndex();
		grid.DeleteRow(index);
	}  
	</script>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<table>
				<tr>
					<td>
						<dxe:ASPxButton ID="btnNew" runat="server" Text="New" AutoPostBack="false">
							<ClientSideEvents Click="function (s, e) { OnNewClick(s, e); }" />
						</dxe:ASPxButton>
					</td>
					<td>
						<dxe:ASPxButton ID="btnEdit" runat="server" Text="Edit" AutoPostBack="false">
							<ClientSideEvents Click="function (s, e) { OnEditClick(s, e); }" />
						</dxe:ASPxButton>
					</td>
					<td>
						<dxe:ASPxButton ID="btnSave" runat="server" Text="Save" AutoPostBack="false">
							<ClientSideEvents Click="function (s, e) { OnSaveClick(s, e); }" />
						</dxe:ASPxButton>
					</td>
					<td>
						<dxe:ASPxButton ID="btnCancel" runat="server" Text="Cancel" AutoPostBack="false">
							<ClientSideEvents Click="function (s, e) { OnCancelClick(s, e); }" />
						</dxe:ASPxButton>
					</td>
					<td>
						<dxe:ASPxButton ID="btnDelete" runat="server" Text="Delete" AutoPostBack="false">
							<ClientSideEvents Click="function (s, e) { OnDeleteClick(s, e); }" />
						</dxe:ASPxButton>
					</td>
				</tr>
				<tr>
					<td colspan="5">
						<dxwgv:ASPxGridView ID="grid" runat="server" ClientInstanceName="grid" OnRowDeleting="grid_RowDeleting"
							OnRowInserting="grid_RowInserting" OnRowUpdating="grid_RowUpdating" OnInitNewRow="grid_InitNewRow">
							<SettingsBehavior AllowFocusedRow="True" />
							<Templates>
								<EditForm>
									<dxwgv:ASPxGridViewTemplateReplacement ReplacementType="EditFormEditors" ID="ASPxGridViewTemplateReplacement3"
										runat="server">
									</dxwgv:ASPxGridViewTemplateReplacement>
								</EditForm>
							</Templates>
						</dxwgv:ASPxGridView>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
