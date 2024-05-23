// toggle//
$('#main-menu').meanmenu({
meanScreenWidth: "1024",
meanMenuContainer: '.mobile-nav-menu',
});


//owl//
$(document).ready(function() {
$("#owl-demo-testimonial").owlCarousel({
items : 2,
navigation : true,
itemsDesktop: [1199,3], 
itemsDesktopSmall:  [979,2] ,
itemsTablet:  [768,3] ,
itemsMobile:  [480,1] ,
autoPlay : 5000,
stopOnHover : false,
itemsTabletSmall: false,
});
});

$(function(){$.fn.scrollToTop=function(){$(this).hide().removeAttr("href");if($(window).scrollTop()!="0"){$(this).fadeIn("slow")}var scrollDiv=$(this);$(window).scroll(function(){if($(window).scrollTop()=="0"){$(scrollDiv).fadeOut("slow")}else{$(scrollDiv).fadeIn("slow")}});$(this).click(function(){$("html, body").animate({scrollTop:0},"slow")})}});     
$(function(){
$("#toTop").scrollToTop();
});
//Sticky//
$(document).ready(function() {
jQuery(window).scroll(function () {
var scroll = jQuery(window).scrollTop();
if(jQuery(window).scrollTop() > -0) {
jQuery('.sticky').addClass('fixed');
}
if (jQuery(window).scrollTop() < 50) {
jQuery('.sticky').removeClass('fixed');
}
});
});



