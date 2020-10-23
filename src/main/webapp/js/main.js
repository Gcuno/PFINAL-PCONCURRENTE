
$(document).ready(function(){
	$(function () {
		$.scrollUp({
	        scrollName: 'scrollUp', 
	        scrollDistance: 300, 
	        scrollFrom: 'top', 
	        scrollSpeed: 300, 
	        easingType: 'linear', 
	        animation: 'fade', 
	        animationSpeed: 200, 
	        scrollTrigger: false, 
	        scrollText: '<i class="fa fa-angle-up"></i>', 
	        scrollTitle: false, 
	        scrollImg: false, 
	        activeOverlay: false, 
	        zIndex: 2147483647 
		});
	});
});



var btnAbrirPopup = document.getElementById('btn-abrir-popup'),
	overlay = document.getElementById('overlay'),
	popup = document.getElementById('popup'),
	btnCerrarPopup = document.getElementById('btn-cerrar-popup');

btnAbrirPopup.addEventListener('click', function(){
	overlay.classList.add('active');
	popup.classList.add('active');
});

btnCerrarPopup.addEventListener('click', function(e){
	e.preventDefault();
	overlay.classList.remove('active');
	popup.classList.remove('active');
});




var elementTop = $('.nav').offset().top;
$(window).scroll(function(){
    if($(window).scrollTop() >=elementTop){
        $('body').addClass('nav_fixed');
    }else{
        $('body').removeClass('nav_fixed');
    }
});


