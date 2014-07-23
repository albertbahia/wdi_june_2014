$(function() {
  console.log('Loaded bro.');

  // * Access the page title
    $('#page-title').html()

  // * Access the list
    $('#awesome-list').text();

  // * Add a fifth item to the list
        $('#awesome-list').append('<li>');
        $('<li>')
          .text('Hi, how are you?')
          .addClass('.awesome-list-item')
          .appendTo('#awesome-list');

  // * Move the image to after the list
      var image = $('#image-container');
      image.appendTo($('body'));

  // * Make the page title red (by adding a class to the page title)
    $('#page-title').addClass('red')

  // * Make the list items blue (add classes to each list item, not to the ul element)
    $('li.awesome-list-item').addClass('blue');

  // * Make the description green
    $('#description').addClass('green')

  // * Add a red footer paragraph to the page with the id "page-footer"
    $('<p>')
    .text('Thank you for visiting.')
    .attr('id', 'page-footer')
    .addClass('red')
    .appendTo($('body'));


  // * Instead of having that starter HTML in the page, write JavaScript to **construct** this page



  


});
