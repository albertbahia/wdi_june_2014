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

$(function() {
	console.log('locked n loaded');
	fetchPosts();
  $('body').on('click', '.remove', deletePost);
  $('#new-post').on('click', addPost);
  $('#show-more').on('click', showMore);
});

var postCountStart = 0;
var postCountEnd = 10;

function fetchPosts() {
	$.get('/posts')
  .done(displayPosts);
}

function displayPosts(posts) {
  for (var i = 0; i < posts.length; i++) {
    var currentPost = posts[i];
    renderPost(currentPost);
  }
}

function showMore() {
  postCountStart += 10;
  postCountEnd += 10;
  fetchPosts();
};

function renderPost(post) {
  var postDisplayed = $('<div class="card" data-id="' + post.id + '">')
  .appendTo('#posts-container');
  var postTitle = $('<h4>').text(post.title)
    .addClass('title'); 
  var postContent = $('<p>').text(post.content)
    .addClass('content');
  var postAuthor = $('<span>').text('Author: ' + post.author);
  var postCategory = $('<span>').text('Category: ' + post.category);
  var postImgDisplay = $('<div>').addClass('image')
    .html($('<img src="' + post.image_url + '">')
      .addClass('image'));
  var deleteButton = $('<button class="remove">').text('delete this post?');
  
  postDisplayed.append(postTitle)
    .append(postContent)
    .append(postImgDisplay)
    .append(postAuthor)
    .append(postCategory)
    .prepend(deleteButton);
}


function deletePost() {
  var id = $(this).parent().data('id');
  console.log(id);
  $(this).parent().remove();
  $.ajax('/posts/' + id, {type: 'DELETE'});
}

function addPost() {
  var newPost = {title: $('input[name="title"]').val(), 
                author: $('input[name="author"]').val(),
                image_url: $('input[name="image_url"]').val(), 
                content: $('input[name="content"]').val(),
                category: $('input[name="category"]').val()};

  $.post('/posts', {post: newPost})
  .done(renderPost);
  $('.input').val('');
};










