$(function() {
  console.log('Loaded bro.');
  // * Access the page title
  console.log($('#page-title'));
  // * Access the list
  console.log($('#awesome-list'));
  // * Add a fourth item to the list
  $('<li>').text('OMGOMG').appendTo('#awesome-list');
  // * Move the image to after the list
  $('#image-container img').appendTo('body');

  // * Make the page title red (by adding a class to the page title)
  $('#page-title').attr('class','red');
  // * Make the list items blue (add classes to each list item, not to the ul element)
  $('li').addClass('blue');
  // * Make the description green
  $('#description').addClass('green');

  // * Add a red footer paragraph to the page with the id "page-footer"
  $('<p>')
    .text('footer dawg')
    .attr('id', 'page-footer')
    .attr('class', 'red')
    .appendTo('body');
  // * Instead of having that starter HTML in the page, write JavaScript to **construct** this page
  // $('body').html('<section>');



});
