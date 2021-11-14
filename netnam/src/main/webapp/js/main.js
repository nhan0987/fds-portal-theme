jQuery( document ).ready(function( $ ) {
	
	//Toggle Nav
	$(".toggle-nav + div .dropdown").append("<i class='fa dropdown-toggle hidden-md hidden-lg fa-caret-down'></i>");
	$('.toggle-nav + div i').on('click', function() {
		$(this).parent().siblings().children('i').removeClass('fa-caret-down fa-caret-up');
		$(this).parent().siblings().children('i').addClass('fa-caret-down');
		$(this).toggleClass('fa-caret-down fa-caret-up');
		$(this).parent().siblings().removeClass("open");
		$(this).parent().toggleClass('open');
	});
	
	$('.toggle-nav').on('click', function() {
		$(this).next().toggleClass('appear');
	});
	$(document).mouseup(function(e) {
	    var container = $("#banner .toggle-nav + div, #banner .toggle-nav + div *, #banner .toggle-nav");
	    if (!container.is(e.target) && container.has(e.target).length === 0) {
	    	$("#banner .toggle-nav + div").removeClass("appear");
	    	$("#banner .toggle-nav + div .dropdown").removeClass("open");
	    }
	});
	
	//Nav Fixed on Scroll
	$(window).scroll(function() {
	    var scroll = $(window).scrollTop();
	    if (scroll >= 90) $("#banner").addClass("scrolled");
	    else $("#banner").removeClass("scrolled")
	});
	
	//Slider Main
	$('.main-slide').slick({
		autoplay: true,
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		dots: true,
		fade: false
	});
	
	
	//Slider Review
	$('.review-slide').slick({
		autoplay: true,
		slidesToShow: 2,
		slidesToScroll: 2,
		arrows: false,
		autoplaySpeed: 8000,
		dots: true,
		fade: false,
		responsive: [
        {
        	breakpoint: 767,
        	settings: {
        		slidesToShow: 1,
        		slidesToScroll: 1, 
        		dots: false
        	}
        }
        ]
	});
	
	
	//Slider Partner
	$('.logo-slide').slick({
		autoplay: true,
		slidesToShow: 8,
		slidesToScroll: 8,
		arrows: false,
		dots: true,
		fade: false,
		responsive: [
        {
        	breakpoint: 991,
        	settings: {
        		slidesToShow: 5,
        		slidesToScroll: 5
        	}
        },
        {
        	breakpoint: 767,
        	settings: {
        		slidesToShow: 3,
        		slidesToScroll: 3, 
        		dots: false
        	}
        }
        ]
	});
	
	
	//Toggle Info Organization
	$('.organization-wrapper i').on('click', function(event){
		$(this).toggleClass('fa-plus-circle fa-minus-circle');
		$(this).next().slideToggle();
	});
	
	
	//Responsive Tabs
	$('.tab-responsive .tab-responsive-heading').on('click', function(event){
		$(this).next().slideToggle();
	});

	
	
	//Toggle Box
	$('.list-item i').on('click', function(event){
		$(this).toggleClass('fa-plus-circle fa-minus-circle');
		$(this).parent().next().slideToggle();
	});
	
	
	//Remove placeholder
	$('#banner :input').removeAttr('placeholder');
	
});