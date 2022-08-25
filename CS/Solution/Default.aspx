<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Solution.Default" %>

<!DOCTYPE html>

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

        function OnCancelClick(s, e) {
            grid.CancelEdit();
        }

        function OnDeleteClick(s, e) {
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
                        <dx:aspxbutton id="btnNew" runat="server" text="New" autopostback="false">
                            <clientsideevents click="function (s, e) { OnNewClick(s, e); }" />
                        </dx:aspxbutton>
                    </td>
                    <td>
                        <dx:aspxbutton id="btnEdit" runat="server" text="Edit" autopostback="false">
                            <clientsideevents click="function (s, e) { OnEditClick(s, e); }" />
                        </dx:aspxbutton>
                    </td>
                    <td>
                        <dx:aspxbutton id="btnSave" runat="server" text="Save" autopostback="false">
                            <clientsideevents click="function (s, e) { OnSaveClick(s, e); }" />
                        </dx:aspxbutton>
                    </td>
                    <td>
                        <dx:aspxbutton id="btnCancel" runat="server" text="Cancel" autopostback="false">
                            <clientsideevents click="function (s, e) { OnCancelClick(s, e); }" />
                        </dx:aspxbutton>
                    </td>
                    <td>
                        <dx:aspxbutton id="btnDelete" runat="server" text="Delete" autopostback="false">
                            <clientsideevents click="function (s, e) { OnDeleteClick(s, e); }" />
                        </dx:aspxbutton>
                    </td>
                </tr>
                <tr>
                    <td colspan="5">
                        <dx:aspxgridview id="grid" Width="100%" runat="server" clientinstancename="grid" onrowdeleting="grid_RowDeleting"
                            onrowinserting="grid_RowInserting" onrowupdating="grid_RowUpdating" oninitnewrow="grid_InitNewRow">
                            <settingsbehavior allowfocusedrow="True" />
                            <templates>
                                <editform>
                                    <dx:aspxgridviewtemplatereplacement replacementtype="EditFormEditors" id="ASPxGridViewTemplateReplacement3"
                                        runat="server">
                                    </dx:aspxgridviewtemplatereplacement>
                                </editform>
                            </templates>
                        </dx:aspxgridview>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
