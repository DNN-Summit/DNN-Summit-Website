<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	




	<!-- Default Paramerters -->
	<xsl:param name="menuId" />
	<xsl:param name="Options" />
	<xsl:param name="showDesc" />
	<xsl:param name="showIcon" />
	<xsl:param name="showKeywords" />
	<xsl:param name="clearRoot" />
	<xsl:param name="clearSub" />
	





	<!-- Default Classes -->
	<xsl:param name="clearClass" />
	<xsl:param name="menuClassContsant">ten-pound-menu</xsl:param>
	<xsl:param name="menuClass" />
	<xsl:param name="subClass" />
	<xsl:param name="showSubIndicator" />
	<xsl:param name="subIndicatorClass" />
	<xsl:param name="itemClass" />
	<xsl:param name="rootClass" />
	<xsl:param name="pageIDClass" />
	<xsl:param name="hasChildClass" />
	<xsl:param name="numClass" />
	<xsl:param name="disabledClass" />
	<xsl:param name="disabledSelected" />
	<xsl:param name="firstClass" />
	<xsl:param name="lastClass" />
	<xsl:param name="onlyClass" />
	<xsl:param name="bcClass" />
	<xsl:param name="selClass" />
	<xsl:param name="textClass" />
	<xsl:param name="iconClass" />
	<xsl:param name="descClass" />
	<xsl:param name="keywordsClass" />
	<xsl:param name="depthClass" />
	<xsl:param name="useScript" />
	





	<!-- Mobile Options -->
	<xsl:param name="mobile" />
	<xsl:param name="mobileSeperateButton" />
	<xsl:param name="mobileButtonText" />
	<xsl:param name="mobileButtonName" />
	<xsl:param name="mobileSubToggleClass" />
	<xsl:param name="mobileSubToggleText" />





	<!-- Apply the Root Template -->
	<xsl:template match="/*">
		<xsl:apply-templates select="root"></xsl:apply-templates>
	</xsl:template>
	




	<!-- Root Template -->
	<xsl:template match="root">
		




		<!-- Mobile Button -->
		<xsl:if test="$mobile='true' and $mobileSeperateButton=''">
			<button class="collapsed" data-toggle="collapse" type="button">
			
				<xsl:choose>
					<xsl:when test="$menuId">
						<xsl:attribute name="id">
							<xsl:value-of select="$menuId" /><xsl:text>-button</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>

						<!-- Classes -->
						<xsl:attribute name="class">
							<xsl:if test="$menuClass">
								<xsl:if test="$mobileButtonName">
									<xsl:value-of select="$menuClass" /><xsl:value-of select="$mobileButtonName" />
								</xsl:if>
							</xsl:if>
						</xsl:attribute>

					</xsl:otherwise>
				</xsl:choose>
				
				<!-- Text -->
				<xsl:if test="$mobileButtonText"><xsl:value-of select="$mobileButtonText"  disable-output-escaping="yes" /></xsl:if>
			</button>
		</xsl:if>
		<!-- End Mobile Button -->
		




		<!-- Main Menu -->
		<ul>

			<!-- ID -->
			<xsl:if test="$menuId"><xsl:attribute name="id"><xsl:value-of select="$menuId" /></xsl:attribute></xsl:if>
			
			<!-- Classes -->
			<xsl:attribute name="class">
				<xsl:if test="$menuClass"><xsl:value-of select="$menuClass" /></xsl:if>
				<xsl:if test="$menuClass != $menuClassContsant"><xsl:text> </xsl:text><xsl:value-of select="$menuClassContsant" /></xsl:if>
				<xsl:if test="$clearRoot = 'true'"><xsl:if test="$clearClass"><xsl:text> </xsl:text><xsl:value-of select="$clearClass" /></xsl:if></xsl:if>
			</xsl:attribute>
			
			<xsl:if test="$mobile='true'">
				<xsl:attribute name="style"><xsl:text>display:none;</xsl:text></xsl:attribute>
			</xsl:if>
			
			<xsl:apply-templates select="node" />
		</ul>
		<!-- End Main Menu -->
		
		<!-- Script -->
		<xsl:if test="$useScript = 'true'"><xsl:call-template name="script" /></xsl:if>
		
		
	</xsl:template>
	<!-- End Root Template -->
	




	<!-- Node Template -->
	<xsl:template match="node">
		<li>

			<!-- Node Classes -->
			<xsl:attribute name="class">
				<xsl:if test="$itemClass"><xsl:value-of select="$itemClass" /></xsl:if>
				<xsl:if test="(@enabled = 0) and ($disabledClass)"><xsl:text> </xsl:text><xsl:value-of select="$disabledClass" /></xsl:if>
				<xsl:if test="(@enabled = 1) and ($disabledClass) and ($disabledSelected='true') and (@selected = 1)"><xsl:text> </xsl:text><xsl:value-of select="$disabledClass" /></xsl:if>
				<xsl:if test="$pageIDClass"><xsl:text> </xsl:text><xsl:value-of select="$pageIDClass" /><xsl:value-of select="@id" /></xsl:if>
				<xsl:if test="$numClass"><xsl:text> </xsl:text><xsl:value-of select="$numClass" /><xsl:value-of select="position()" /></xsl:if>
				<xsl:if test="($rootClass) and (@depth = 0)"><xsl:text> </xsl:text><xsl:value-of select="$rootClass" /></xsl:if>
				<xsl:if test="($hasChildClass) and (node)"><xsl:text> </xsl:text><xsl:value-of select="$hasChildClass" /></xsl:if>
				<xsl:if test="($selClass) and (@selected = 1)"><xsl:text> </xsl:text><xsl:value-of select="$selClass" /></xsl:if>
				<xsl:if test="($bcClass) and (@breadcrumb = 1)"><xsl:text> </xsl:text><xsl:value-of select="$bcClass" /></xsl:if>
				<xsl:if test="($onlyClass) and (@only = 1)"><xsl:text> </xsl:text><xsl:value-of select="$onlyClass" /></xsl:if>
				<xsl:if test="($firstClass) and (@first = 1)"><xsl:text> </xsl:text><xsl:value-of select="$firstClass" /></xsl:if>
				<xsl:if test="($lastClass) and (@last = 1)"><xsl:text> </xsl:text><xsl:value-of select="$lastClass" /></xsl:if>
			</xsl:attribute>
			<!-- End Node Classes -->
			
			<!-- Node Link -->
			<a>
				<xsl:if test="(@url) and (@enabled = 1)">
				
					<!-- Node Link URL -->
					<xsl:choose>
						<xsl:when test="($disabledSelected='true') and not(@selected = 1)">
							<xsl:attribute name="href"><xsl:value-of select="@url" /></xsl:attribute>
						</xsl:when>
						<xsl:when test="$disabledSelected='false'">
							<xsl:attribute name="href"><xsl:value-of select="@url" /></xsl:attribute>
						</xsl:when>
						<xsl:otherwise></xsl:otherwise>
					</xsl:choose>
					
					<!-- Node Link Target -->
					<xsl:if test="@target"><xsl:attribute name="target"><xsl:value-of select="@target" /></xsl:attribute></xsl:if>
					
				</xsl:if>
				
				<!-- Node Icon -->
				<xsl:if test="($showIcon='true') and (@icon)">
					<span>
						
						<!-- Node Icon Classes -->
						<xsl:attribute name="class">
							<xsl:if test="$iconClass"><xsl:value-of select="$iconClass" /></xsl:if>
						</xsl:attribute>
						
						<img src="{@icon}" alt="{@title}" />
					</span>
				</xsl:if>
				
				<!-- Node Text -->
				<span>
					<xsl:attribute name="class">
						<xsl:if test="$textClass"><xsl:value-of select="$textClass" /></xsl:if>
					</xsl:attribute>
					<xsl:value-of select="@text" />
				</span>
				
				<!-- Node Sub Indicator -->
				<xsl:if test="(node) and ($showSubIndicator) and ($subIndicatorClass)">
					<span>
						<xsl:attribute name="class">
							<xsl:value-of select="$subIndicatorClass" />
						</xsl:attribute>
					</span>
				</xsl:if>
				
				<!-- Node Mobile Toggle -->
				<xsl:if test="($mobile='true') and (node)">
					<span>

						<!-- Node Mobile Toggle Classes -->
						<xsl:attribute name="class">
							<xsl:if test="$mobileSubToggleClass"><xsl:value-of select="$mobileSubToggleClass" /></xsl:if>
						</xsl:attribute>
						
						<xsl:if test="$mobileSubToggleText"><xsl:value-of select="$mobileSubToggleText" /></xsl:if>
					</span>
				</xsl:if>
			</a>
			<!-- End Node Link -->
			
			<!-- Node Description -->
			<xsl:if test="($showDesc = 'true') and (description)">
				<span>
					
					<!-- Node Description Classes -->
					<xsl:attribute name="class">
						<xsl:if test="$descClass"><xsl:value-of select="$descClass" /></xsl:if>
					</xsl:attribute>
					
					<xsl:value-of select="description" />
				</span>
			</xsl:if>
			
			<!-- Node Keywords -->
			<xsl:if test="($showKeywords = 'true') and (keywords)">
				<span>

					<!-- Node Keywords Classes -->
					<xsl:attribute name="class">
						<xsl:if test="$keywordsClass"><xsl:value-of select="$keywordsClass" /></xsl:if>
					</xsl:attribute>
					
					<xsl:value-of select="keywords" />
				</span>
			</xsl:if>
			





			<!-- Node Sub -->
			<xsl:if test="node">
				<ul>
					
					<!-- Node Sub Classes -->
					<xsl:attribute name="class">
						<xsl:if test="$subClass"><xsl:value-of select="$subClass" /></xsl:if>
						<xsl:if test="$depthClass"><xsl:text> </xsl:text><xsl:value-of select="$depthClass" /><xsl:value-of select="@depth" /></xsl:if>
						<xsl:if test="($clearSub = 'true') and ($clearClass)"><xsl:text> </xsl:text><xsl:value-of select="$clearClass" /></xsl:if>
					</xsl:attribute>
					
					<xsl:apply-templates select="node" />
				</ul>
			</xsl:if>
			
		</li>
	</xsl:template>
	<!-- End Node Template -->





	<!-- Script -->
	<xsl:template name="script">
		<script type="text/javascript">

			<!-- Choose Selector -->
			<xsl:text>var sel = '</xsl:text>
			<xsl:choose>
				<xsl:when test="$menuId">
					<xsl:text>#</xsl:text><xsl:value-of select="$menuId" />
				</xsl:when>
				<xsl:when test="$menuClass">
					<xsl:text>.</xsl:text><xsl:value-of select="$menuClass" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>.</xsl:text><xsl:value-of select="$menuClassContsant" />
				</xsl:otherwise>
			</xsl:choose>
			<xsl:text>';</xsl:text>
			
			<!-- Set Options -->
			$opts = <xsl:value-of select="$Options" />;
			$opts.mobile = <xsl:value-of select="$mobile" />;
			$opts.mobileButton = 
				<xsl:choose>
					<xsl:when test="$mobileSeperateButton">
						<xsl:text>'</xsl:text><xsl:value-of select="$mobileSeperateButton" /><xsl:text>';</xsl:text>
					</xsl:when>
					<xsl:when test="$menuId">
						<xsl:text>'#</xsl:text><xsl:value-of select="$menuId" /><xsl:value-of select="$mobileButtonName" /><xsl:text>';</xsl:text>
					</xsl:when>
					<xsl:when test="$menuClass">
						<xsl:text>'.</xsl:text><xsl:value-of select="$menuClass" /><xsl:value-of select="$mobileButtonName" /><xsl:text>';</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>'.</xsl:text>
						<xsl:value-of select="$menuClassContsant" /><xsl:value-of select="$mobileButtonName" /><xsl:text>';</xsl:text>
					</xsl:otherwise>
				</xsl:choose>

			$opts.mobileSubToggle = '.<xsl:value-of select="$mobileSubToggleClass" />';
			$opts.itemSelector = '.<xsl:value-of select="$itemClass" />';
			$opts.rootSelector = '.<xsl:value-of select="$rootClass" />';
			$opts.hasChildSelector = '.<xsl:value-of select="$hasChildClass" />';
			$opts.subSelector = '.<xsl:value-of select="$subClass" />';

			<!-- Instantiate Menu-->
			$(sel).TenPoundMenu($opts);
		</script>
	</xsl:template>
	<!-- End Script -->
	
</xsl:stylesheet>