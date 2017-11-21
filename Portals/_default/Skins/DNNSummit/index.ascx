<!--#include file="inc/head.inc" -->
<div class="dnnsummit skin home bc-<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabID%><%= IIf(Request.IsAuthenticated, " logged-In", " logged-out") %><% if UserController.GetCurrentUserInfo().IsInRole("Administrators") then %> admin<% end if %>" id="page-<%=PortalSettings.ActiveTab.TabID %>" data-name="<%=PortalSettings.ActiveTab.TabName %>">
	
	<!--#include file="inc/header.inc" -->
	<!--#include file="inc/banner.inc" -->
	
	<div class="banner-sub-pane" id="BannerSubPane" runat="server" visible="false"></div>
	
	<!-- Content -->
	<div id="content">


		<!-- CTA Band -->
		<div class="small-band bg-color bg-quinary">
			<div class="container">
				<div class="row">
					<div class="cta-pane pane col-sm-12" id="CTAPane" runat="server" visible="false" />
				</div>			
			</div>
		</div>

		<!-- Band 1: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="content-pane pane col-sm-12" id="ContentPane" runat="server" visible="false" />
				</div>
			</div>
		</div>
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-1-pane-1 pane col-sm-12" id="Band1Pane1" runat="server" visible="false" />
				</div>
			</div>
		</div>
		<div class="banded">
				<div class="row">
					<div class="band-1-pane-2 pane col-sm-12" id="Band1Pane2" runat="server" visible="false" />
				</div>
			</div>
		</div>
		<div class="banded">
				<div class="row">
					<div class="band-1-pane-3 pane col-sm-12" id="Band1Pane3" runat="server" visible="false" />
				</div>
			</div>
		</div>

		<!-- Band 2: Tan -->
		<div class="banded bg-color bg-quinary">
			<div class="container">
				<div class="row">
					<div class="band-2-top-pane pane col-sm-12" id="Band2TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex middle-panes">
					<div class="band-2-middle-1-pane pane col-sm-3" id="Band2Middle1Pane" runat="server" visible="false"></div>
					<div class="band-2-middle-2-pane pane col-sm-3" id="Band2Middle2Pane" runat="server" visible="false"></div>
					<div class="band-2-middle-3-pane pane col-sm-3" id="Band2Middle3Pane" runat="server" visible="false"></div>
					<div class="band-2-middle-4-pane pane col-sm-3" id="Band2Middle4Pane" runat="server" visible="false"></div>
				</div>
				<div class="row">
					<div class="band-2-bottom-pane pane col-sm-12" id="Band2BottomPane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>
		
		<!-- Band 3: Blue No Container -->
		<div class="banded bg-color bg-primary text-white no-container border-panes schedule-summary-section">
			<div class="container">
				<div class="row flex">
					<div class="band-3-middle-1-pane border-right-pane pane col-sm-6" id="Band3Middle1Pane" runat="server" visible="false"></div>
					<div class="band-3-middle-2-pane pane col-sm-6" id="Band3Middle2Pane" runat="server" visible="false"></div>
				</div>
				<div class="row flex border-top">
					<div class="band-3-middle-3-pane border-right-pane pane col-sm-6" id="Band3Middle3Pane" runat="server" visible="false"></div>
					<div class="band-3-middle-4-pane pane col-sm-6" id="Band3Middle4Pane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>	

		<!-- Band 4: Tan -->
		<div class="banded bg-color bg-quinary">
			<div class="container">
				<div class="row">
					<div class="band-3-top-pane pane col-sm-12" id="Band4TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex middle-panes">
					<div class="band-4-middle-1-pane pane col-sm-3" id="Band4Middle1Pane" runat="server" visible="false"></div>
					<div class="band-4-middle-2-pane pane col-sm-3" id="Band4Middle2Pane" runat="server" visible="false"></div>
					<div class="band-4-middle-3-pane pane col-sm-3" id="Band4Middle3Pane" runat="server" visible="false"></div>
					<div class="band-4-middle-4-pane pane col-sm-3" id="Band4Middle4Pane" runat="server" visible="false"></div>
				</div>
				<div class="row">
					<div class="band-4-bottom-pane pane col-sm-12" id="Band4BottomPane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>

		<!-- Band 5: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-5-top-pane pane col-sm-12" id="Band5TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex middle-panes">
					<div class="band-5-middle-1-pane pane col-sm-3" id="Band5Middle1Pane" runat="server" visible="false"></div>
					<div class="band-5-middle-2-pane pane col-sm-3" id="Band5Middle2Pane" runat="server" visible="false"></div>
					<div class="band-5-middle-3-pane pane col-sm-3" id="Band5Middle3Pane" runat="server" visible="false"></div>
					<div class="band-5-middle-4-pane pane col-sm-3" id="Band5Middle4Pane" runat="server" visible="false"></div>
				</div>
				<div class="row">
					<div class="band-5-bottom-pane pane col-sm-12" id="Band5BottomPane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>	

		<!-- Band 6: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-6-top-pane pane col-sm-12" id="Band6TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex middle-panes">
					<div class="band-6-middle-1-pane pane col-sm-3" id="Band6Middle1Pane" runat="server" visible="false"></div>
					<div class="band-6-middle-2-pane pane col-sm-3" id="Band6Middle2Pane" runat="server" visible="false"></div>
					<div class="band-6-middle-3-pane pane col-sm-3" id="Band6Middle3Pane" runat="server" visible="false"></div>
					<div class="band-6-middle-4-pane pane col-sm-3" id="Band6Middle4Pane" runat="server" visible="false"></div>
				</div>
				<div class="row">
					<div class="band-6-bottom-pane pane col-sm-12" id="Band6BottomPane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>								
			
	</div>

	<!--#include file="inc/footer.inc" -->
</div>