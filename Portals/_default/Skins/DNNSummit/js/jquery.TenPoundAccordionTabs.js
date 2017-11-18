/*
 * 10 Pound Accordion Tabs - jQuery Plugin
 * Simple tab & accordion enhancement
 *
 * Copyright (c) 2013 10 Pound Gorilla
 *
 * Version: 2.0.2 (09/24/2014)
 * Requires: jQuery v1.7.2+
 *
 */
 ;(function($,window,document,undefined) {
	var methods = {
		
		/*
			Default Options
		*/
		defaults:{
			type:null, // string ('accordion' or 'tabs')
			useHash:false, // boolean
			
			// Classes
			tabsContainer:'TenPoundTabs', // string
			accordionContainer:'TenPoundAccordion', // string
			tabsNavName:'Titles', // string
			itemsWrapperName:'Items', // string
			item:'Item', // string
			itemNum:'i', // string
			itemTitle:'Title', // string
			itemContent:'Content', // string
			itemActive:'Active', // string
			
			// Accordion Options
			accordionOpen:1, // integer or string ('all')
			accordionDelay:0, // integer
			accordionHeight:'auto', // string (fixed,auto,even)
			accordionSpeed:200, // integer
			accordionScrollTo:false, // boolean
			accordionScrollSpeed:200, // integer
			accordionMultiOpen:false, // boolean (only for accordion)
			
			// Tabs Options
			tabsOpen:1, // integer
			tabsNavName:'Nav',
			evenItems:false, // boolean	(only for tabs)
			inSpeed:500, // integer
			outSpeed:200, // integer
			responsive:false, // boolean
			breakpoint:640 // integer
		},
		
		
		
		/*
			
		*/
		init : function(options){
			
			this.settings = $.extend({},methods.defaults,options);
			
			var $this = this;
			
			if ( $this.settings.responsive && $this.settings.type == 'tabs' ) {
				var doit;
				$(window).resize(function(){
					clearTimeout(doit);
					doit = setTimeout(function(){ methods.resize($this); }, 250);
				});
				$(window).trigger('resize');
			}
			
			// Hash
			if ( $this.settings.useHash && window.location.hash ) {
				var hash = window.location.hash.replace('#','');
				var titles = [];
				$('.item .title a',$this).each(function(i,e){ titles.push( $(e).text() ); });
				var itemNum = $.inArray(hash, titles) + 1;
				if ( itemNum ) {
					$this.settings.accordionOpen = itemNum;
					$this.settings.tabsOpen = itemNum;
				}
			}
			
			if($this.settings.type=='tabs'){ methods._createTabs($this); }
			else if($this.settings.type=='accordion'){ methods._createAccordion($this); }
		},
		
		
		
		/*
			
		*/
		resize : function($this){
			if($(window).width() > $this.settings.breakpoint && $this.settings.type == 'accordion'){ $this.settings.type = 'tabs'; methods._createTabs($this); }
			else if($(window).width() < $this.settings.breakpoint && $this.settings.type == 'tabs'){ $this.settings.type = 'accordion'; methods._createAccordion($this); }
		},
		
		
		
		/*
			
		*/
		_createAccordion : function ($this){
			
			$('.'+$this.settings.item,$this).removeAttr('style'); // Remove style from each item
			
			$this
				.addClass($this.settings.accordionContainer) // Add Accordion Class
				.removeClass($this.settings.tabsContainer) // Remove Tabs Class
			;
			$('.'+$this.settings.tabsNavName, $this).hide(); // Hide Nav
			$('.'+$this.settings.item, $this).removeClass($this.settings.itemActive);
			
			$('.'+$this.settings.itemContent, $this).show();
			
			if ( $this.settings.accordionHeight == 'even' ){
				var maxHeight = 0;
				$('.'+$this.settings.itemContent, $this).each(function(i,e){
					if ( $(e).height() > maxHeight ){ maxHeight = $(e).outerHeight(true); }
				});
				$('.'+$this.settings.itemContent, $this).height(maxHeight);
			}
			else if ( $this.settings.accordionHeight == 'fixed' && $this.settings.accordionMultiOpen === true ){
				var height = $('.'+$this.settings.itemsWrapperName, $this).outerHeight(true);
				$('.'+$this.settings.itemsWrapperName, $this).height(height);
			}
			
			$('.'+$this.settings.itemContent, $this).hide(); // Hide Item Content
			
			// On Item Title Click
			$('.'+$this.settings.itemTitle, $this).click(function(e){
				methods.animateAccordion( $this,$(this) );
				if ($this.settings.useHash){
					window.location.hash = $('a',this).text();
				}
			});
			
			// Open all
			if($this.settings.accordionOpen=='all' && $this.settings.accordionMultiOpen){
				$('.'+$this.settings.item+' > .'+$this.settings.itemTitle, $this).trigger('click');
			}
			// Open specific item
			else if( $.isNumeric($this.settings.accordionOpen) && $this.settings.accordionOpen ){
				$('.'+$this.settings.item+':eq('+($this.settings.accordionOpen-1)+') > .'+$this.settings.itemTitle,$this).trigger('click');
			}
		},
		
		
		
		/*
			
		*/
		_createTabs : function ($this){
			$this
				.addClass($this.settings.tabsContainer) // Add Tabs Class
				.removeClass($this.settings.accordionContainer) // Remove Accordion Class
			;
			
			$nav = 	$('.'+$this.settings.tabsNavName, $this).show(); // Show Nav
			$('.'+$this.settings.item+' .content', $this).show(); // Show item content
			$('.'+$this.settings.item, $this).hide(); // Hide each item
			
			
			// On Item Title Click
			$('.'+$this.settings.tabsNavName+' > li', $this).click(function(e){
				methods.animateTabs( $this,$(this) );
				if ($this.settings.useHash){
					window.location.hash = $('a',this).text();
				}
			});
			
			// Open Item Initally
			$('li:eq('+($this.settings.tabsOpen-1)+')', $nav).trigger('click');
		},
		
		
		
		/*
			This controls the animation & functionality of the accordion
			The plugin instance ( $this ) and item clicked ( $title ) is passed to the function
		*/
		animateAccordion : function($this,$title){			
			if($this.settings.accordionMultiOpen){
				$title.next('.'+$this.settings.itemContent)
					.slideToggle($this.settings.speed)
				;
				$title.parent('.'+$this.settings.item).toggleClass($this.settings.itemActive);
			} else {
				$title.next('.'+$this.settings.itemContent)
					.delay($this.settings.accordionDelay)
					.slideToggle($this.settings.accordionSpeed,function(){
						if($this.settings.accordionScrollTo){
							$('html, body').animate({
								scrollTop: $title.closest('.'+$this.settings.item).offset().top
							}, $this.settings.accordionScrollSpeed);
						}
					})
				;
				$title.parent('.'+$this.settings.item).toggleClass($this.settings.itemActive);
				$title.parent('.'+$this.settings.item).siblings('.'+$this.settings.itemActive)
					.removeClass($this.settings.itemActive)
					.children('.'+$this.settings.itemContent).slideUp($this.settings.accordionSpeed)
				;
			}
		},
		
		
		
		/*
			This controls the animation & functionality of the tabs
		*/
		animateTabs : function($this,$title){
			var num = $title.index();
			
			// Toggle $title Active Class
			$title.addClass($this.settings.itemActive).siblings().removeClass($this.settings.itemActive);

			$('.'+$this.settings.item+':eq('+num+')',$this)
			
				// Show Current Content & Add Active Class
				.stop().show().animate({'opacity':1},$this.settings.inSpeed).addClass($this.settings.itemActive)
				
				// Hide Others & Remove Active Class
				.siblings('.'+$this.settings.item).stop().animate({'opacity':0},$this.settings.outSpeed).removeClass($this.settings.itemActive).hide()
			;
		},
		
		
		
		/*
			
		*/
		destroy : function(){
			$('.'+this.settings.itemActive, this).removeClass(this.settings.itemActive);
			this.unbind('TenPoundAccordionTabs');
			return this;
		}
	};
	
 	$.fn.TenPoundAccordionTabs = function(method) {
		// Method calling logic
		if ( methods[method] ) {
			return methods[ method ].apply( $(this), Array.prototype.slice.call( arguments, 1 ));
		} else if ( typeof method === 'object' || ! method ) {
			return methods.init.apply( $(this), arguments );
		} else {
			$.error( 'Method ' +  method + ' does not exist' );
		}
	};
})(jQuery,window,document);