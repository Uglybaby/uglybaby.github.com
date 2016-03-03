/**================================================================================
*
* Portfolio.js
* @package JANStrap
* Version 1.0
*
* Responsible for animation in Portfolio and display of portfolio on click and essential
* for those pages which have the portfolio i.e. Landing Page 
*
* Rrequires jQuery
*
**================================================================================**/

/*==========================================================
	
	Small Description And Title Display On Mouse Over
	
==========================================================*/
$(".portfolio").mouseover(function(){
	$(this).find(".portfolio-description").stop().slideDown();
}).mouseout(function(){
	$(this).find(".portfolio-description").stop().slideUp();
});

/*==========================================================
	
	Cutting of portfolio description as the size of screen
	
==========================================================*/
var portHeading=Array();
var portDesc=Array();
$.each($(".portfolio-description"),function(){
	portHeading.push($(this).find('h4').text());
	portDesc.push($(this).find('p').text());
	$(this).find('p').text($(this).find('p').text().substr(0,150)+"...");
});

/*==========================================================
	
	If page can view portfolio then displaying whole 
	portfolio on image click
	
==========================================================*/
