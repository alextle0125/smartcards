// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
	newDeckButton = $("div.user-new-deck");
	modalScreen = $("div.modal-screen");
	newDeckForm = $("div.user-deck-modal");

	newDeckButton.click(function(event){
		modalScreen.css('visibility', 'visible');
		newDeckForm.css('visibility', 'visible');

		modalScreen.click(function(event){
			modalScreen.css('visibility', 'hidden');
			newDeckForm.css('visibility', 'hidden');
		});
	});
});

$(document).ready(function(){
	

	
});
