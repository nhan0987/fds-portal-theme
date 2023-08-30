//Nav actions
$("<i class='fa fa-caret-down'></i>").insertBefore("#mainNav .child-menu");

$('#mainNav li i').on('click', function() {
	$(this).toggleClass('fa-caret-down fa-caret-up');
	$(this).parent().toggleClass('open');
});

$('#mNav > i').on('click', function() {
	$(this).parent().next().toggleClass('show-search');
});


//Search bar in Navbar
// window.onload = function() {
//     document.getElementById('searchInput').onkeypress = function searchKeyPress(event) {
//        if (event.keyCode == 13) {
//            document.getElementById('btnSearch').click();
//        }
//    };
// }

Liferay.provide(window, 'doSearch',function(){
	var A = AUI();
	var searchInput = A.one("#searchInput");

if(searchInput) {
	var keywords = searchInput.val();
	keywords = keywords.replace(/^\s+|\s+$/,"");

			if(keywords !== "") {
			var url = '/web/cong-thanh-tra/search/-/search/' + keywords;
			
			window.location.href = url;
			};
		}
	}, 
	['aui-base']
);


//Slide Home
$('.statist-slider .slider').slick({
	autoplay: false,
	slidesToShow: 1,
	slidesToScroll: 1,
	arrows: true,
	fade: false
});