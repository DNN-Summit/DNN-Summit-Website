;(function($,document,undefined) {

	var methods = {
		
		//
		init : function(opts) {
			var $menu = $(this);
			var config = $.extend({}, {}, opts);
			config.menu = $menu;
			if(config.confine){
				config.containWidth = ( $(config.container).width() != null ? $(config.container).width() : $(window).width() );
				config.containPosition = ( $(config.container).offset() != null ? $(config.container).offset() : {top:0,left:0} );
				config.containSize = config.containWidth + config.containPosition.left;
			}
			
			// Mobile
			if ( config.mobile ) {
				
				// Main Button
				config.button = $(config.mobileButton)[0];
				$(config.button).click(function(){
					if (
						$menu.hasClass(config.mobileOpenClass)
						|| $menu.parents(config.mobileContainer).hasClass(config.mobileOpenClass)
					) {
						methods.hideMobile(config);
					} else {
						methods.showMobile(config);
					}
				});

				// Mobile Menu Container
				//	Display the mobile menu but hide the parent container that is defined
				if ( config.mobileContainer ){
					$menu.removeAttr('style').parents( config.mobileContainer ).hide();
				}
						
				// Sub Toggle
				$(config.mobileSubToggle,config.menu).click(function(e){
					e.preventDefault();
					if ( $(this).closest(config.itemSelector).hasClass(config.mobileOpenClass) ) {
						methods.hideMobileSub( $(this).parent().siblings(config.subSelector), config );
					} else {
						methods.showMobileSub( $(this).parent().siblings(config.subSelector), config );
						if ( !config.mobileSubMultiOpen ){
							methods.hideMobileSub( $(this).closest(config.itemSelector).siblings(config.itmeSelector).children(config.subSelector), config );
						}
					}
				});
			
			// Desktop
			} else {
			
				// Evenly divide root item width
				if(config.evenRoot){
					var  rootCount = $(config.rootSelector,$menu).length;
					$(config.rootSelector,$menu).width((100/rootCount)+"%");
				}
				
				function itemTriggerA($this){
					$($this).addClass(config.subTriggerClass);
					methods.showSub( $(config.subSelector,$this).first() ,config);
				}
				
				function itemTriggerB($this){
					$($this).removeClass(config.subTriggerClass);
					methods.hideSub($(config.subSelector,$this).first(),config);
				}
				
				// Item Click Toggle Function | Show sub level
				if(config.subTrigger == 'click'){
					$(config.itemSelector+config.hasChildSelector+' > a',$menu).click(function(e){
						e.stopPropagation();
						$(this).closest(config.itemSelector).siblings(config.itemSelector+config.hasChildSelector+'.'+config.subTriggerClass).children('a').trigger('click');
						return (this.tog = !this.tog) ? itemTriggerA( $(this).closest(config.itemSelector)[0] ) : itemTriggerB(  $(this).closest(config.itemSelector)[0] );
					});
					$(window).click(function(){
						$(config.itemSelector+config.hasChildSelector+'.'+config.subTriggerClass,$menu).children('a').trigger('click');
					});
				}
				
				// Item Hover Function | Show sub level
				else {
					$(config.itemSelector,$menu).hover(
						
						// Hover On
						function(){ itemTriggerA(this); },
						
						// Hover Off
						function(){ itemTriggerB(this); }
						
					);
				}
			}
			
			return this;
		},
		
		// Recieves Sub Object
		setDims : function($this,config){
			var $rootParent = $this.parents(config.rootSelector).first();
			var $thisParent = $this.parents(config.subSelector).first();
			$this.css({ 'left': 'auto' });
			$this.show();
			var dims = {
				top : $this.offset().top,
				height : $this.outerHeight(true),
				left : $this.offset().left,
				width : $this.outerWidth(true),
				fullSizeH : $this.offset().left + $this.outerWidth(true),
				fullSizeV : $this.offset().top + $this.outerHeight(true),
				outside : (config.confine && ( $this.offset().left + $this.outerWidth(true) ) > config.containSize) ? true : false
			}
			$this.hide();

			if( $this.parent(config.rootSelector).length && dims.outside ){
				$this.css({"left":function(){ return 0 - (dims.fullSizeH - config.containSize); }});
			} else {
				var subLeftPos = $this.parents(config.subSelector).first().outerWidth();
				if(dims.outside){ subLeftPos = 0 - dims.width; }
				$this.css({"left":subLeftPos});
			}

			// Adjust left position for sub sub levels
			
			
			return dims;
		},
		
		
		
		// Show Sub Menu
		showSub : function($sub,config){
			$sub.addClass(config.subTriggerClass);
			if($sub.length > 0){
									
				var dims = methods.setDims($sub,config);
			
				// Fade In
				if (config.animateIn=="fade"){ $sub.stop(true,true).fadeIn(config.showSpeed); }
				
				// Slide Down
				else if (config.animateIn=="slideDown"){ $sub.stop(true,true).slideDown(config.showSpeed); }
				
				// Custom
				else if (typeof config.animateIn == 'object'){ $sub.stop(true,true).removeAttr("style").animate(config.animateIn,config.showSpeed); }
				
				// Default Show
				else { $sub.stop(true,true).show(); }
				
				// Push Content
				if (config.pushContent && $sub.parent().is(config.rootSelector) ){
					var pushSel = (config.pushContentSelector) ? config.pushContentSelector : config.menu;
					$(pushSel).css({'margin-bottom':0}).stop().animate({'margin-bottom':dims.height}, config.showSpeed);
				}
				
			}
		},
		
		
		
		// Hide Sub Menu
		hideSub : function($sub,config){
			if($sub.length > 0){
		
				// Fade Out
				if(config.animateOut=="fade"){ $sub.stop(true,true).fadeOut(config.hideSpeed); }
				
				// SlideUp
				else if(config.animateOut=="slideUp"){ $sub.stop(true,true).slideUp(config.hideSpeed); }
				
				// Custom
				else if(typeof config.animateOut === 'object'){ $sub.stop(true,true).removeAttr("style").animate(config.animateOut,config.hideSpeed); }
				
				// Default hide
				else { $sub.stop(true,true).hide(); }
				
				// Pull Content
				if (config.pushContent && $sub.parent().is(config.rootSelector) ){
					var pushSel = (config.pushContentSelector) ? config.pushContentSelector : config.menu;
					$(pushSel).stop().animate({'margin-bottom':0},config.hideSpeed);
				}
			}
		},
		
		
		
		// Show Mobile Menu
		showMobile : function(config){

			// Set selector to parent container otherwise use the menu
			var sel = ( config.mobileContainer ) ? config.mobileContainer : config.menu;
			$(sel)
				.removeClass(config.mobileClosedClass)
				.addClass(config.mobileOpeningClass)
			;
			$(sel).slideDown(config.mobileShowSpeed,function(){
				$(sel)
					.removeClass(config.mobileOpeningClass)
					.addClass(config.mobileOpenClass)
				;
				$(config.button)
					.removeClass(config.mobileClosedClass)
					.addClass(config.mobileOpenClass)
				;
			});
		},
		
		
		
		// Hide Mobile Menu
		hideMobile : function(config){

			// Set selector to parent container otherwise use the menu
			var sel = ( config.mobileContainer ) ? config.mobileContainer : config.menu;
			$(sel)
				.removeClass(config.mobileOpenClass)
				.addClass(config.mobileClosingClass)
			;
			$(sel).slideUp(config.mobileHideSpeed,function(){
				$(sel)
					.removeClass(config.mobileClosingClass)
					.addClass(config.mobileClosedClass)
				;
				$(config.button)
					.removeClass(config.mobileOpenClass)
					.addClass(config.mobileClosedClass)
				;
			});
		},
		
		
		
		// Show Mobile Sub Menu
		showMobileSub : function($sub,config){
			var $parent = $sub.parent(config.itemSelector);
			$parent
				.removeClass(config.mobileClosedClass)
				.removeClass(config.mobileClosingClass)
				.removeClass(config.mobileOpenClass)
				.addClass(config.mobileOpeningClass)
			;
			$sub.stop(false,true).slideDown(config.mobileShowSpeed,function(){
				$parent
					.removeClass(config.mobileOpeningClass)
					.addClass(config.mobileOpenClass)
				;
			});
		},
		
		
		
		// Hide Mobile Sub Menu
		hideMobileSub : function($sub,config){
			var $parent = $sub.parent(config.itemSelector);
			$parent
				.removeClass(config.mobileOpenClass)
				.removeClass(config.mobileOpeningClass)
				.removeClass(config.mobileClosedClass)
				.addClass(config.mobileClosingClass)
			;
			$sub.stop(true,false).slideUp(config.mobileHideSpeed,function(){
				$parent
					.removeClass(config.mobileClosingClass)
					.addClass(config.mobileClosedClass)
				;
			
			});
		}
	};
	
	$.fn.TenPoundMenu = function(method) {
		if (methods[method]){
			return methods[ method ].apply( this, Array.prototype.slice.call( arguments, 1 ));
		} else if (typeof method === "object" || !method){
			return methods.init.apply( this, arguments );
		} else {
			$.error("Method "+method+" does not exist on jQuery.tooltip");
		}
	};
})(jQuery);