<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="Icon" Src="~/Admin/Containers/icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<div class="TenPoundDefault Module-Container dnnsummit-fullphoto left" id="<%= ID %>">
	<div class="module-icon"><dnn:Icon runat="server" id="dnnIcon" /></div>
	<div>
		<div runat="server" class="module-content-pane" id="ContentPane"></div>
	</div>
</div>