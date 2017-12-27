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

<div class="sub-header sub-header--alert">
	<div class="container">
		<div class="col-sm-12 text-center">
			<!-- <div class="sub-header__close"><span class="glyphicon glyphicon-remove"></span></div> -->
			<h2 class="sub-header__title ts-h3"><strong>Register Now!</strong> Prices increase on January 6<sup>th</sup></h2>
			<div class="sub-header__details">2 day pass will increase from $449 to $599 &amp; 2 day pass with full day training will increase from $679 to $829</div>
		</div>
	</div>
</div>

<!--<div class="cta-link container"><a class="cta-speakers" href="https://www.papercall.io/dnnsummit2018" target="_blank">Call for Speakers</a></div>-->