(function($) {
    $.fn.clickToggle = function(func1, func2) {
        var funcs = [func1, func2];
        this.data('toggleclicked', 0);
        this.click(function() {
            var data = $(this).data();
            var tc = data.toggleclicked;
            $.proxy(funcs[tc], this)();
            data.toggleclicked = (tc + 1) % 2;
        });
        return this;
    };
}(jQuery));

jQuery('document').ready(function($){
	
	// Panes
	$('.row').flexiblePanes();

	// Full Photo Container
	$('.dnnsummit-fullphoto').parents('.banded').addClass('stuff');
	$('.dnnsummit-fullphoto').each(function(){
		$('.module-icon',this).css({'background-image':'url('+$('img',this).attr('src')+')'});
	});

	// Full Picture Background Container
	$('.dnnsummit-photobg').parents('.banded').addClass('stuff');
	$('.dnnsummit-photobg').each(function(){
		$('.module-icon',this).css({'background-image':'url('+$('img',this).attr('src')+')'});
	});	

	$('.dnnsummit-photobg').each(function(){
		$(this).closest('.pane').addClass('photo-pane');
	});


	// Hide empty "Banded" areas
	$('.banded .container:not(:has(:visible))').parent('.banded').hide();

	// Remove empty rows if not logged in as admin
	if( !$('.skin').hasClass('admin') ){
		$('.row').each(function(i,e){
			if( !$(e).html().trim().length ){
				$(this).remove();
			}
		});
	}

	// Smooth Scroll
	  $('a[href*=#]:not([href=#])').not(".fancybox").click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	      if (target.length) {
	        $('html,body').animate({
	          scrollTop: target.offset().top
	        }, 500);
	        return false;
	      }
	    }
	  });

	// Masonry for Speaker List
	var $container = $('.masonry-list').masonry({
		columnWidth: '.masonry-item',
		gutter: 32
	});

	// Session More Mobile Button
	$('.session-more-btn').click(function(){ $(this).closest('.session__item').toggleClass('open'); });

	// Speakers Bio Expand
	$(".speaker-item",".speaker-list.testing").each(function(){
		var $item = $(this);
		var $bio = $(".speaker-item__bio",this);
		var closeTotalHeight = 500;
		var bioOpenHeight = $bio.height();

		// Calculate Height - Box should be 500px tall total, Bio should fill up space remaining after Name, Sessions, etc.
		var bioCloseHeight = closeTotalHeight - ( $(this).height() - bioOpenHeight );

		// Set calculated height
		$bio.height( bioCloseHeight );

		// Add expand functionality if bio doesn't fit
		if ( bioOpenHeight > bioCloseHeight ){

			// Add button to DOM
			$bio.after("<a class=\"more\"></a>");

			$(".more",this).clickToggle(

				// Open Function
				function(){
					$item.addClass("js-expaned");
					$bio.animate({ "height":bioOpenHeight });
				},

				// Close Function
				function(){
					$item.removeClass("js-expaned");
					$bio.animate({ "height":bioCloseHeight });
				}
			);
		}
	});

	$(".session__author__video, .speaker-item__video").fancybox({
		type 		: "iframe", 
		maxWidth	: 800,
		maxHeight	: 600,
		fitToView	: false,
		width		: '70%',
		height		: '70%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
	});


	// Accordion
	$('.TenPoundAccordion').TenPoundAccordionTabs(

	{
		type:'accordion',
		useHash:false,
		
		// Classes
		itemsWrapperName:'items',item:'item',itemTitle:'title',itemContent:'content',itemActive:'active',
		
		// Accordion Options
		accordionContainer:'accordion',accordionOpen:0,accordionDelay:0,accordionHeight:'auto',accordionSpeed:200,accordionScrollTo:false,accordionScrollSpeed:200,accordionMultiOpen:false,
	}
	);


/*
	// Reg Mod
	var regModId = 687;
	$(".custom-form-fields__radio .radio",".DnnModule-"+regModId).each(function(i,e){
		$("label",this).click(function(){
			var selSiblings = $(this).parent().siblings('.selected')
			selSiblings.removeClass('selected');
			$("input[type='radio']",selSiblings).prop( "selected", false );
			$("input[type='radio']",this).prop( "selected", true );
			$(this).parent().addClass('selected');
		});
		var price = $("input[type='hidden'][data-af-field='PricePackage"+(i+1)+"']",".DnnModule-"+regModId).val();
		// $("label",this).append("<div class=\"price\">$"+price+"</div>");
	});
*/




	
});




/*------------------------------------*\
	#REGISTRATIONDISCOUNTS
\*------------------------------------*/

function regDiscounts(items){

	// Available Coupon Codes - For a perctange discount, add percent:true to the object
	var coupons = {
		speakers:[
			{ code:"SpeakerSum17", discount:199 }
		],
		sponsors:[
			{ code:"SponsorSum$", discount:100, percent:true },
			{ code:"SponsorSum50", discount:99.5 }
		],
		attendee:[]
	};
	var discounts = 0;

	// Only run if a coupon code was entered, Registrastion is NOT "DNN On The Slopes"
	if ( items.couponCode.trim() != "" && items.regChoice != "DNN On The Slopes Only" ){

		// Function to search object within array for a provided value and return entire object
		function search(nameKey, myArray){ for (var i=0; i < myArray.length; i++) { if (myArray[i].code === nameKey) { return myArray[i]; } } }

		// Search coupons based on Registration Type (Speaker, Sponsor, Attendee)
		if (items.regType == "Speaker"){ var couponObjItem = search(items.couponCode, coupons["speakers"]); }
		else if (items.regType == "Sponsor"){ var couponObjItem = search(items.couponCode, coupons["sponsors"]); }
		else if (items.regType == "Attendee"){ var couponObjItem = search(items.couponCode, coupons["attendee"]); }

		// If Coupon code provided by user is valid
		if( typeof couponObjItem === "object" ){

			// Percent Discount
			if ( typeof couponObjItem.percent !== "undefined" ){
				discounts -= parseFloat(items.packageTotal) * (couponObjItem.discount * 0.01);
			}

			// Set Amount Discount
			else {
				discounts -= couponObjItem.discount;
			}

			// Discount Round Table by 50%
			if ( parseFloat(items.roundTableTotal) >  0 ){ discounts -= ( parseFloat(items.roundTableTotal) / 2 ); }
		}

	}

	// Returns final discount amount to form as Foating Int
	return discounts.toFixed(2);
}