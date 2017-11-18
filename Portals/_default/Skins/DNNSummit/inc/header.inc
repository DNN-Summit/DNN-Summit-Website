<header id="header" class="bg-color bg-primary">
	<div class="container">
		<div class="row">
			<div class="col-sm-3" id="logo"><dnn:Logo runat="server" id="dnnLogo" /></div>
			<div class="col-sm-9 hidden-xs">
				<dnn:Menu MenuStyle="Ten-Pound-DDR-Menu" runat="server" NodeSelector="*,0,5">
					<TemplateArguments> 
						<dnn:TemplateArgument Name="menuClass" Value="ten-pound-menu-desktop" />
						<dnn:TemplateArgument Name="cssAnimate" Value="true" />
					</TemplateArguments>
					<ClientOptions>
						<dnn:ClientBoolean Name="confine" Value="true" />
						<dnn:ClientString Name="container" Value=".container" />
						<dnn:ClientString Name="animateIn" Value="slideDown" />
					</ClientOptions>
				</dnn:MENU>
			</div>
			<div class="col-sm-9 visible-xs">
				<dnn:Menu MenuStyle="Ten-Pound-DDR-Menu" runat="server" NodeSelector="*,0,5">
					<TemplateArguments> 
						<dnn:TemplateArgument Name="menuClass" Value="ten-pound-menu-mobile" />
						<dnn:TemplateArgument Name="mobile" Value="true" />
					</TemplateArguments>
				</dnn:MENU>
			</div>		
		</div>
	</div>
</header>
<!--<div class="cta-link container"><a class="cta-speakers" href="https://www.papercall.io/dnnsummit2018" target="_blank">Call for Speakers</a></div>-->