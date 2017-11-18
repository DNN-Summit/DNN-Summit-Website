<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.DDRMenu.TemplateEngine" Assembly="DotNetNuke.Web.DDRMenu" %>

<%@ Register TagPrefix="dnn" TagName="Breadcrumb" Src="~/Admin/Skins/breadcrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Copyright" Src="~/Admin/Skins/copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Login" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Logo" Src="~/Admin/Skins/logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Menu" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Privacy" Src="~/Admin/Skins/privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Search" Src="~/Admin/Skins/search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Terms" Src="~/Admin/Skins/terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="User" Src="~/Admin/Skins/user.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>

<!-- META -->
<dnn:META runat="server" Name="viewport" Content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />

<!-- CSS -->
<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,400italic|Roboto+Slab:400,300,700' rel='stylesheet' type='text/css'>
<dnn:DnnCssInclude runat="server" FilePath="js/fancybox/jquery.fancybox.css" PathNameAlias="SkinPath" Priority="100" />
<dnn:DnnCssInclude runat="server" FilePath="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" Priority="100" />
<dnn:DnnCssInclude runat="server" FilePath="css/bootstrap.css" PathNameAlias="SkinPath" Priority="100" />
<dnn:DnnCssInclude runat="server" FilePath="css/layout.css" PathNameAlias="SkinPath" Priority="101" />
<dnn:DnnCssInclude runat="server" FilePath="css/content.css" PathNameAlias="SkinPath" Priority="102" />
<dnn:DnnCssInclude runat="server" FilePath="css/deving.css" PathNameAlias="SkinPath" Priority="103" />

<!-- Javascript -->
<dnn:JQUERY ID="dnnjQuery" runat="server" />
<dnn:DnnJsInclude runat="server" FilePath="js/respond.min.js" PathNameAlias="SkinPath"/>
<dnn:DnnJsInclude runat="server" FilePath="js/jquery.flexiblePanes.min.js" PathNameAlias="SkinPath"/>
<dnn:DnnJsInclude runat="server" FilePath="js/masonry.pkgd.js" PathNameAlias="SkinPath"/>
<dnn:DnnJsInclude runat="server" FilePath="js/fancybox/jquery.fancybox.pack.js" PathNameAlias="SkinPath"/>
<dnn:DnnJsInclude runat="server" FilePath="js/jquery.TenPoundAccordionTabs.js" PathNameAlias="SkinPath"/>
<dnn:DnnJsInclude runat="server" FilePath="js/general.js" PathNameAlias="SkinPath"/>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<![endif]-->