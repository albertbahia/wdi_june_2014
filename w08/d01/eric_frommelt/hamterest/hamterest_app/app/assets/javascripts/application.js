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
  console.log('We\'re Loaded');
  fetchPosts();
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', deletePost);
})

function fetchPosts() {
  $.get('/posts')
  .done(displayPosts)
  .fail( function(data) { console.log(data); });
}

function renderPost(post) {
  var container = $('#posts-container');
  var card = $('<div class="card" data-id="' + post.id + '">');
  var title = $('<h4 class="title">').append(post.title);
  var author = $('<div class="author">').text('Author: ').append(post.author);
  var img_container = $('<div class="image">');
  var img = $('<img>', {src: post.image_url}).appendTo(img_container);
  var content = $('<p class="content">').append(post.content);
  var category =$('<div class="category">').text('Category: ').append(post.category);
  var deleteBtn = $('<div class="remove">Delete</div>');
  card.append(title).append(category).append(author).append(img_container).append(content).append(deleteBtn);
  container.append(card);
}

function displayPosts(posts) {
  posts.forEach(function(currentPost) {
    renderPost(currentPost);
  });
}

function addPost() {
  console.log('clicked');

  var inputTitle = $('#forms-container').children().eq(1).children().val();
  var inputAuthor = $('#forms-container').children().eq(2).children().val();
  var inputImage = $('#forms-container').children().eq(3).children().val();
  var inputContent = $('#forms-container').children().eq(4).children().val();
  var inputCategory = $('#forms-container').children().eq(5).children().val();

  $.post('/posts', {  post: {
                      title: inputTitle,
                      author: inputAuthor,
                      image_url: inputImage,
                      content: inputContent,
                      category: inputCategory
                      } 
                    }).done(renderPost);
}

function deletePost() {
  var postId = $(this).parent().data('id');
  $(this).parent().remove();
  $ajax('/posts' + postId, {type: 'DELETE'});
}
