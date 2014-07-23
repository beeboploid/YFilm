$(document).ready(function() {
    		var currentPosition = 0;
    		var slideWidth = 900;
    		var slides = $('.slide');
    		var numberOfSlides = slides.length;
    		var slideShowInterval;
			var speed = 4000;

			slideShowInterval = setInterval(changePosition, speed);

    		slides.wrapAll('<div id="slidesHolder"></div>')
    		slides.css({'float':'left'});
    		slides.css({'marginLeft':'255'});
    		$('#slidesHolder').css('width', slideWidth * numberOfSlides)

    		function changePosition() {
			if(currentPosition == numberOfSlides - 1) {
				currentPosition = 0;
			} else {
				currentPosition++;
			}
			moveSlide();
			}
		
		
			function moveSlide() {
					$('#slidesHolder')
					  .animate({'marginLeft' : slideWidth * (-currentPosition)});
			}

		});