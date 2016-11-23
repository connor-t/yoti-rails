jQuery( function( $ ){
 	
	$('#scene, #scene-bg, #scene2').parallax();
	
	$(function() {
      $('#slides').superslides();
    });
	
	$(document).ready(function() {
	
		$("a[href='#jump-to']").click(function(){
    		$('html, body').animate({
        	scrollTop: $( $.attr(this, 'href') ).offset().top-0 }, 750); 
    		return false;
		});
	}); 
	
	$(document).ready(function() {
		$('.toggle-menu').jPushMenu();
 	}); 
	
});