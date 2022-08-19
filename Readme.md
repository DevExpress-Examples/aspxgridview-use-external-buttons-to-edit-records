<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128537632/13.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1522)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How Insert, Update and Delete ASPxGridView's records with buttons
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/128537632/)**
<!-- run online end -->


<p>To change ASPxGridView's data from the client side, there are appropriate ASPxClientGrid methods:</p><p><a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_AddNewRowtopic">AddNewRow</a><br />
<a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_DeleteRowtopic">DeleteRow</a><br />
<a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_StartEditRowtopic">StartEditRow</a></p><p>To save or cancel changes, there are:<br />
<a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_UpdateEdittopic">UpdateEdit</a><br />
<a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_CancelEdittopic">CancelEdit</a></p><p>The following example implements a custom defined toolbar with ASPxButtons, which perform all the editing capabilities over a grid's data source.</p><p>Note: to distinguish records, the property <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridViewBehaviorSettings_AllowFocusedRowtopic">AllowFocusedRow</a> should be enabled for grid.</p><p><strong>See Also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E7">Switch to the edit mode by clicking a status bar button or by double-clicking a row</a><br />
<a href="https://www.devexpress.com/Support/Center/p/E257">Editing an in-memory dataset</a><br />
<a href="https://www.devexpress.com/Support/Center/p/E2345">How to enable/disable command buttons on the client side</a></p>

<br/>


