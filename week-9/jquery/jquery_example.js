// U3.W9:JQuery


// I worked on this challenge Timur.
// This challenge took me 1.25 hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image


//RELEASE 1:



//Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css(
	{'background-color': 'pink'}
	)


//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body');
tagH1 = $('h1');
tagImg = $('img');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements


// color
// border
// visibility

$('h1:first').css({
	'color': 'yellow',
	'border': '4px dotted black',
	'visibility': 'hidden'
});

$('h1:last').html("Squirrels 2016");


//RELEASE 4: Event Listener
  // Add the code for the event listener here


$('img').on('mouseover', function(e){
    e.preventDefault();
    $(this).attr('src', 'https://img0.etsystatic.com/016/0/5867750/il_570xN.447255054_fqnh.jpg')
})

$('img').on('mouseout', function(e){
    e.preventDefault();
    $(this).attr('src', 'dbc_logo.png')
})

//RELEASE 5: Experiment on your own

$('img').click(function(e){
	e.preventDefault();
	$(this).animate({
		opacity: 0.25,
		borderWidth: 10,
		height: '-=300',
	}, 1500);

});

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection
// What is jQuery? - It is a JavaScript file that you include in your web pages that lets you find elements using CSS-style selectors and then do something with the elements using jQuery methods.

// What does jQuery do for you? - It allows you to do JavaScript tasks quickly and consistently across all major browsers and without any fallback code.

// What did you learn about the DOM while working on this challenge? - How to select and modify HTML elements with jQuery. It was cool to learn about different event handlers which really brought more life to the page!