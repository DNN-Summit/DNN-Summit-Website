<!--#include file="inc/head.inc" -->
<div class="dnnsummit skin interior blog-skin bc-<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabID%><%= IIf(Request.IsAuthenticated, " logged-In", " logged-out") %><% if UserController.GetCurrentUserInfo().IsInRole("Administrators") then %> admin<% end if %>" id="page-<%=PortalSettings.ActiveTab.TabID %>" data-name="<%=PortalSettings.ActiveTab.TabName %>">
	
	<!--#include file="inc/header.inc" -->
	<!--#include file="inc/banner.inc" -->

	<!-- Content -->
	<div id="content">

		<div class="container">
			<div class="row flex">
				<div class="content-pane pane col-sm-8" id="ContentPane" runat="server" visible="false" />
				<div class="right-pane pane col-sm-4" id="RightPane" runat="server" visible="false" />
			</div>						
		</div>													
							
			
	</div>

	<!--#include file="inc/footer.inc" -->
</div>