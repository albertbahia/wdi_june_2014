$(function() {
  console.log('Loaded bro.');
  // * Access the page title
  console.log($('#page-title'));
  // * Access the list
  console.log($('#awesome-list'));
  // * Add a fourth item to the list
  $('#awesome-list')
  .append($('<li>holla</li>')
  .addClass("awesome-list-item"));
  // * Move the image to after the list
  var image = $('#image-container');
  image.remove();
  $('body').append(image);
  // * Make the page title red (by adding a class to the page title)
  $('#page-title').attr("class", "red");
  // * Make the list items blue (add classes to each list item, not to the ul element)
  $('.awesome-list-item').attr('class', 'blue');
  $('li.awesome-list-item')
  // * Make the description green
  $('#description').attr('class', 'green');
  // * Add a red footer paragraph to the page with the id "page-footer"
  $('<p>hello</p>').appendTo('body').attr('class', "red").attr("id", "page-footer");
  // * Instead of having that starter HTML in the page, write JavaScript to **construct** this page

});
