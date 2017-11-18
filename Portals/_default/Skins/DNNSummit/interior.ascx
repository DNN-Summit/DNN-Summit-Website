<!--#include file="inc/head.inc" -->
<div class="dnnsummit skin interior bc-<%=PortalSettings.ActiveTab.BreadCrumbs(0).TabID%><%= IIf(Request.IsAuthenticated, " logged-In", " logged-out") %><% if UserController.GetCurrentUserInfo().IsInRole("Administrators") then %> admin<% end if %>" id="page-<%=PortalSettings.ActiveTab.TabID %>" data-name="<%=PortalSettings.ActiveTab.TabName %>">
	
	<!--#include file="inc/header.inc" -->
	<!--#include file="inc/banner.inc" -->

	<!-- Content -->
	<div id="content">


		<!-- Band 1: White -->
		<div class="even-padding">
			<div class="container">
				<div class="row">
					<div class="content-pane pane col-sm-12" id="ContentPane" runat="server" visible="false" />
				</div>				
				<div class="row flex">
					<div class="band-1-middle-1-pane pane col-sm-3 medium-col" id="Band1Middle1Pane" runat="server" visible="false" />
					<div class="band-1-middle-2-pane pane col-sm-3 medium-col" id="Band1Middle2Pane" runat="server" visible="false" />
					<div class="band-1-middle-3-pane pane col-sm-3 medium-col" id="Band1Middle3Pane" runat="server" visible="false" />
					<div class="band-1-middle-4-pane pane col-sm-3 medium-col" id="Band1Middle4Pane" runat="server" visible="false" />
				</div>			
			</div>
		</div>

		<!-- Highlight Pane: Tan -->
		<div class="banded bg-color bg-quinary">
			<div class="container">
				<div class="row">
					<div class="band-highlight-1-pane pane col-sm-12" id="Highlight1Pane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-highlight-1-pane pane col-sm-4" id="Highlight1LeftPane" runat="server" visible="false"></div>
					<div class="band-highlight-1-pane pane col-sm-4" id="Highlight1MiddlePane" runat="server" visible="false"></div>
					<div class="band-highlight-1-pane pane col-sm-4" id="Highlight1RightPane" runat="server" visible="false"></div>
				</div>				
			</div>
		</div>		


		
		<!-- Blue Pane -->
		<div class="banded bg-color bg-primary text-white">
			<div class="container">
				<div class="row flex">
					<div class="band-blue-pane pane col-sm-12" id="Blue1Pane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-blue-pane pane col-sm-6" id="BlueLeftPane" runat="server" visible="false"></div>
					<div class="band-blue-pane pane col-sm-6" id="BlueRightPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-blue-pane pane col-sm-12" id="BlueBottomPane" runat="server" visible="false"></div>
				</div>				
			</div>
		</div>		



		<!-- Band 2: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-2-top-pane pane col-sm-12" id="Band2TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
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

		<!-- Highlight Pane: Tan -->
		<div class="banded bg-color bg-quinary">
			<div class="container">
				<div class="row flex">
					<div class="band-highlight-2-pane pane col-sm-12" id="Highlight2Pane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-highlight-2-pane pane col-sm-6" id="Highlight2LeftPane" runat="server" visible="false"></div>
					<div class="band-highlight-2-pane pane col-sm-6" id="Highlight2RightPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-highlight-2-pane pane col-sm-12" id="Highlight2BottomPane" runat="server" visible="false"></div>
				</div>				
			</div>
		</div>
			

		<!-- Band 3: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-3-top-pane pane col-sm-12" id="Band3TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-3-middle-1-pane pane col-sm-3" id="Band3Middle1Pane" runat="server" visible="false"></div>
					<div class="band-3-middle-2-pane pane col-sm-3" id="Band3Middle2Pane" runat="server" visible="false"></div>
					<div class="band-3-middle-3-pane pane col-sm-3" id="Band3Middle3Pane" runat="server" visible="false"></div>
					<div class="band-3-middle-4-pane pane col-sm-3" id="Band3Middle4Pane" runat="server" visible="false"></div>
				</div>
				<div class="row">
					<div class="band-3-bottom-pane pane col-sm-12" id="Band3BottomPane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>

		<!-- Band 4: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-4-top-pane pane col-sm-12" id="Band4TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
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
				<div class="row flex">
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
				<div class="row flex">
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

		<!-- Band 7: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-7-top-pane pane col-sm-12" id="Band7TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-7-middle-1-pane pane col-sm-3" id="Band7Middle1Pane" runat="server" visible="false"></div>
					<div class="band-7-middle-2-pane pane col-sm-3" id="Band7Middle2Pane" runat="server" visible="false"></div>
					<div class="band-7-middle-3-pane pane col-sm-3" id="Band7Middle3Pane" runat="server" visible="false"></div>
					<div class="band-7-middle-4-pane pane col-sm-3" id="Band7Middle4Pane" runat="server" visible="false"></div>
				</div>
				<div class="row">
					<div class="band-7-bottom-pane pane col-sm-12" id="Band7BottomPane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>		

		<!-- Band 8: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-8-top-pane pane col-sm-12" id="Band8TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-8-middle-1-pane pane col-sm-3" id="Band8Middle1Pane" runat="server" visible="false"></div>
					<div class="band-8-middle-2-pane pane col-sm-3" id="Band8Middle2Pane" runat="server" visible="false"></div>
					<div class="band-8-middle-3-pane pane col-sm-3" id="Band8Middle3Pane" runat="server" visible="false"></div>
					<div class="band-8-middle-4-pane pane col-sm-3" id="Band8Middle4Pane" runat="server" visible="false"></div>
				</div>
				<div class="row">
					<div class="band-8-bottom-pane pane col-sm-12" id="Band8BottomPane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>	

		<!-- Band 9: White -->
		<div class="banded">
			<div class="container">
				<div class="row">
					<div class="band-9-top-pane pane col-sm-12" id="Band9TopPane" runat="server" visible="false"></div>
				</div>
				<div class="row flex">
					<div class="band-9-middle-1-pane pane col-sm-3" id="Band9Middle1Pane" runat="server" visible="false"></div>
					<div class="band-9-middle-2-pane pane col-sm-3" id="Band9Middle2Pane" runat="server" visible="false"></div>
					<div class="band-9-middle-3-pane pane col-sm-3" id="Band9Middle3Pane" runat="server" visible="false"></div>
					<div class="band-9-middle-4-pane pane col-sm-3" id="Band9Middle4Pane" runat="server" visible="false"></div>
				</div>
				<div class="row">
					<div class="band-9-bottom-pane pane col-sm-12" id="Band9BottomPane" runat="server" visible="false"></div>
				</div>
			</div>
		</div>														
							
			
	</div>

	<!--#include file="inc/footer.inc" -->
</div>