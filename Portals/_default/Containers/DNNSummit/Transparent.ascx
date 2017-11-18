<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<div class="TenPoundDefault Module-Container Transparent" id="<%= ID %>">
	<h1 class="ContainerTitle"><dnn:TITLE runat="server" id="dnnTITLE" CssClass="Title" /></h1>
	<div class="ContainerContentPane clearfix" runat="server" id="ContentPane"></div>
</div>