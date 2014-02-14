$(function(){
	// make menus of the artist dropdown automatically
	$('ul.nav li.dropdown').hover(
		function(){
			$('ul.dropdown-menu',this).fadeIn();
		},
		function(){
			$('.dropdown-menu',this).fadeOut('fast');	
		}
	); // hover
}); //Jquery loading