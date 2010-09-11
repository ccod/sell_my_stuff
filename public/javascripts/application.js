// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


$(document).ready(function(){
	
	$(".bidder_name").focusin(function() {
		$(this).parent().children('.hidden-elements').show(500);
	});
	
	$(".item_offer").focusin(function() {
		$(this).parents('.row').find('.hidden-elements').each(function() {
			$(this).hide(500);
		});
	});
});