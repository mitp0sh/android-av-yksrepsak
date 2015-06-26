$(function () {

	var rawIndex = prompt('getHelp:index.html'),
		index = $(rawIndex),
	
		nav = index.filter('.b-main').find('.b-nav'),
		header = index.filter('.b-header'),
		
		body = $('body');
		
	
		
	// append header
	body.prepend(header);
	
	// make correct title
	header.find('h2').html($('.b-content h1').html());
	
	// append navigation
	$('.b-main').prepend(nav);
	
	$('.b-content, .b-nav, .b-link.menu').addClass('mobile');
})