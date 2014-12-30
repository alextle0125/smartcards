$(document).ready(function(){
	settings = $('div.user-gear');
	settingsMenu = $('ul.user-options');
	settingsOptions = $('a.user-options-item');

	settings.click(function(event){
		settingsOptions.animate({
			opacity: 1,
			bottom: '55px'
		}, 1000);
	});

	settingsMenu.mouseleave(function(e){
		settingsOptions.animate({
			opacity: 0,
			bottom: '0'
		}, 1000);
	});
});