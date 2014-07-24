$(function() {
  console.log('Loaded bro.');
  // * Access the page title
  $('#page-title').html()
  //
  // * Access the list
  $('#awesome-list').html()
  // * Add a fourth item to the list
  $('#awesome-list').append('<li>fourth item</li>')
  // * Move the image to after the list
  var img = $('#image-container');
  img.appendTo($('body'));
  // * Make the page title red (by adding a class to the page title)
  $('#page-title').css("color", "red");
  // * Make the list items blue (add classes to each list item, not to the ul element)
  $('li').addClass('awesome-list-item')
  $('.awesome-list-item').css("color", "blue");
  // * Make the description green
  $('#description').css("color", "green");
  // * Add a red footer paragraph to the page with the id "page-footer"
  $('<p>').text('Footer').attr("id", "page-footer").appendTo($('body')).addClass("red")
  // * Instead of having that starter HTML in the page, write JavaScript to **construct** this page


});
