// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  console.log('Loaded, bro.');
  fetchPosts();
  $('#new-post').on('click', addPost);
  $('#posts-container').on('click', '.remove', removePost);
})

// make a request to the server => fetch 10 posts displayed on screen
// should run on page load
function fetchPosts() {
  $.get('/posts')
    .done(displayPosts)
    .fail(function(data) { console.log(data); });
}

// build the HTML element representing a post and display it on screen
function renderPost(post) {
  var card = $('<div class="card" data-id"' + post.id + '">');
  var title = $('<h4 class="title">').appendTo(card);
  var author = $('<h5 class="author">').appendTo(card);
  var image = $('<div class="image">').appendTo(card);
  var content = $('<p class="content">').appendTo(card);
  var category = $('<h6 class="category">').appendTo(card);
  var removeSpan = $('<span class="remove">Remove</span>');

  title.text(post.title);
  author.text(post.author);
  content.text(post.content);
  image.html('<img src="' + post.image_url + '">');
  category.text(post.category);

  card.append(removeSpan);
  card.appendTo('#posts-container');
}

function displayPosts(posts) {
  posts.forEach(function(currentPost) {
    renderPost(currentPost);
  });
}


function addPost() {
  var cardTitle = $('#new-post-title').val();
  var cardAuthor = $('#new-post-author').val();
  var cardImage = $('#new-post-image').val();
  var cardContent = $('#new-post-content').val();
  var cardCategory = $('#new-post-category').val();

  $.post('/posts', { post: {
      title: cardTitle,
      author: cardAuthor,
      image_url: cardImage,
      content: cardContent,
      category: cardCategory
    }})
  .done(renderPost);

  $('#new-post-title').val('');
  $('#new-post-author').val('');
  $('#new-post-image').val('');
  $('#new-post-content').val('');
  $('#new-post-category').val('');
}


function removePost() {
  var post = $(this).parent();
  post.remove();

  $.ajax('/posts/' + post.data('id'), {type: 'DELETE'});
}
