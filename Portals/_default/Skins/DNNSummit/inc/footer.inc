<div id="footer-news" class="banded bg-color bg-quinary">
	<div class="container">
		<div class="row">
			<div class="footer-news-pane pane col-sm-12" id="FooterNewsPane" runat="server" visible="false"></div>
		</div>
	</div>
</div>

<div id="footer-sponsor">
	<div class="container">
		<div class="row flex">
			<div class="footer-sponsor-pane pane col-sm-12" id="FooterSponsorPane" runat="server" visible="false"></div>
		</div>
	</div>
</div>

<footer id="footer">
	<div class="container">
		
		<div class="row flex">
			<div class="footer-1-pane pane col-sm-9" id="Footer1Pane" runat="server" visible="false"></div>
			<div class="footer-2-pane pane col-sm-3" id="Footer2Pane" runat="server" visible="false"></div>
		</div>
		
	</div>
</footer>

<div id="footer-contact">
	<div class="container">
		<div class="row flex">
			<div class="footer-contact-pane pane col-sm-12" id="FooterContactPane" runat="server" visible="false"></div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="footer-copyright pane col-sm-12 text-center white-text light-text">
				<br /><br />
				<dnn:Copyright runat="server" id="dnnCopyright" />
			</div>
		</div>
	</div>

	<dnn:Login runat="server" id="dnnLogin" CssClass="login-hidden" />	

</div>