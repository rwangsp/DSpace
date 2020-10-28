 jQuery(document).ready(function() 
 {

    var bg_list  = {"background_images": [{"image_url": "image/bee2.jpg", "alt": "Farmed Solitary Bees", "description": "Featured collection: P. E. Hallett (2011) Farmed Solitary Bees & Wasps, Data Set (generations 1997-2008)", "url": "https://tspace.library.utoronto.ca/handle/1807/30434"},
					{"image_url": "image/kung.jpg", "alt": "Dobe !Kung", "description": "Featured collection: Dobe !Kung, Prof Richard B. Lee", "url": "https://tspace.library.utoronto.ca/handle/1807/10394"},
					{"image_url": "image/vole.jpg", "alt": "moles and voles", "description": "Featured collection: Moles & Voles, Prof Rudy Boonstra", "url": "https://tspace.library.utoronto.ca/handle/1807/247"},
					{"image_url": "image/thesis2.jpg", "alt": "school of graduate studies - theses", "description": "Featured collection: School of Graduate Studies - Theses",  "url": "https://tspace.library.utoronto.ca/handle/1807/9944"}]
				};
				
				
				
				

	var image_size = bg_list['background_images'].length;

	var random_index = Math.floor(Math.random() * image_size);

	//console.log(random_index);

	var random_img_url = bg_list['background_images'][random_index]['image_url'];
	var random_img_text = bg_list['background_images'][random_index]['description'];
	var random_img_link = bg_list['background_images'][random_index]['url'];
	var random_img_alt = bg_list['background_images'][random_index]['alt'];


	//jQuery('.hero-full-width-image-1').css('background-image', "url('"+random_img_url+"')");
	jQuery('#hero_img_area').attr('src',random_img_url);

	jQuery('#header_text').html(random_img_text);

	jQuery('#findOut').attr('href', random_img_link);
	
	jQuery('#hero_img_area').attr('alt', random_img_alt);
	
	var offset = jQuery( ".tspaceNav" ).offset();
	
	jQuery(window).scroll(function() {

	    if ( jQuery(window).scrollTop() > offset.top) {
	        jQuery('.tspaceNav').addClass('fixed');
	        
	    } else {
	         jQuery('.tspaceNav').removeClass('fixed');
	         
	    } 

	}); 
	
	/* Search */
	/*
	jQuery('.stretcher').focus(function() {
		jQuery(this).attr('size', 45);
	});	
	jQuery('.stretcher').blur(function() {
		jQuery(this).attr('size', 35);
	});	
	*/

	/* Refine search hide/show */
	jQuery('#adv-search-button').click(function(event) {
		event.preventDefault();
		jQuery('#adv-search-container').toggle();
	});
 });

function validateFilters() {
	return document.getElementById("filterquery").value.length > 0;
} 
