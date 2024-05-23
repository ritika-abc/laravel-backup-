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
//top//
$(function(){$.fn.scrollToTop=function(){$(this).hide().removeAttr("href");if($(window).scrollTop()!="0"){$(this).fadeIn("slow")}var scrollDiv=$(this);$(window).scroll(function(){if($(window).scrollTop()=="0"){$(scrollDiv).fadeOut("slow")}else{$(scrollDiv).fadeIn("slow")}});$(this).click(function(){$("html, body").animate({scrollTop:0},"slow")})}});     
$(function(){
$("#toTop").scrollToTop();
});
//owl//
$(document).ready(function() {
$("#owl-demo").owlCarousel({
items : 6,
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
//menu//
$(document).ready(function () {
    ma5menu({
        menu: '.site-menu',
        activeClass: 'active',
        footer: '#ma5menu-tools',
        position: 'left',
        closeOnBodyClick: true
    });
});