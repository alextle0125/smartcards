$(document).ready(function(){
	settings = $('div.user-gear');
	settingsOptions = $('li.user-options-item');

	settings.click(function(event){
		settingsOptions.animate({
			opacity: 1,
			top: '-=55px'
		}, 1000);
	});
});