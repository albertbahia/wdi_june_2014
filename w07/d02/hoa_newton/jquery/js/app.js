$(function() {
  console.log('Loaded bro.');
// * Access the page title
	var title = $('#page-title')

// * Access the list
	var list = $('#awesome-list');

// * Add a fourth item to the list
	// var newListItem = $('<li>'); 		// make a list item
	// newListItem.text('This is the fifth Item');
	// newListItem.appendTo(list);

	$('<li>')
		.text('I am the fifth')
		.addClass('awesome-list-item')  // add a class to this list item
		.appendTo(list);

	list.append($('<li>').text('This is fifth item'));

// * Move the image to after the list
	var image = $('#image-container');
	image.remove();   	//this is optional because appending automatically removes from existing position
	image.appendTo('body');
	//$('section').append(image);

// * Make the page title red (by adding a class to the page title)
	title.addClass('red');

// * Make the list items blue (add classes to each list item, not to the ul element)
	list.addClass('blue');


// * Make the description green
	$('#description').addClass('green');

// * Add a red footer paragraph to the page with the id "page-footer"
	$('<p>')
		.addClass('red')
		.attr('id', 'page-footer')
		.appendTo('body')
		.text("This is the footer");

// * Instead of having that starter HTML in the page, write JavaScript to **construct** this page
	
});
