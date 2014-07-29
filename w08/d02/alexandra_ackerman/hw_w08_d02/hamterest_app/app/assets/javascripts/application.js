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
  console.log('Ready, bro!');
  fetchPosts();
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', removePost);
  $('body').on('click', 'img', showModal);
  $('body').on('click', '#close', hideModal);
  // $(window).on('scroll', showMore);
});

function fetchPosts() {
  $.get('/posts').done(renderPosts)
  .fail(function(data) {console.log(data);});
}

function displayPost(post){
  var card = $('<div class="card">').attr('data-id', post.id);
  var title = $('<h4 class="title">').appendTo(card);
  var author = $('<h3 class="author">').appendTo(card);
  var content = $('<p class="content">').appendTo(card);
  var imageDiv = $('<div class="image">').appendTo(card);
  var category = $('<h3 class="category">').appendTo(card);
  var deleteButton = $('<span class="remove">Remove</span>').appendTo(card);

  //adds ajax get request info to divs
  title.text(post.title);
  author.text(post.author);
  content.text(post.content);
  imageDiv.html('<img src="' + post.image_url + '">');
  category.text(post.category);

  //append cards to post-container div
  card.appendTo('#posts-container');
}

function renderPosts(posts) {
  posts.forEach(function(currentPost){
    displayPost(currentPost);
  });
}

function addPost() {
  var cardTitle = $('#title-input').val();
  var cardAuthor = $('#author-input').val();
  var cardImage = $('#image-input').val();
  var cardContent = $('#content-input').val();
  var cardCategory = $('#category-input').val();

  var postInfo = {post: {
    title: cardTitle,
    author: cardAuthor,
    image_url: cardImage,
    content: cardContent,
    category: cardCategory
  }}; 

  $.post('/posts', postInfo).done(displayPost);

  $('#title-input').val('');
  $('#author-input').val('');
  $('#image-input').val('');
  $('#content-input').val('');
  $('#category-input').val('');
};

function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/posts/' + id , {type: 'DELETE'});
};

function modalDisplay(post){
  var titleInput = $('<input id="edit-title">').appendTo('#card-update');
  var imageInput = $('<input id="edit-image">').appendTo('#card-update');
  var contentInput = $('<input id="edit-content">').appendTo('#card-update');
  var categoryInput = $('<input id="edit-category">').appendTo('#card-update');
  var updateButton = $('<button id="update-button">Update Post</button>').appendTo('#card-update');

  titleInput.val(post.title);
  imageInput.val(post.image_url);
  contentInput.val(post.content);
  categoryInput.val(post.category);
}

function showModal(){
  $('#modal').show();

  var post = $(this).closest('.card');
  var id = post.attr('data-id');
  
  $.get('/posts/' + id).done(modalDisplay)
  .fail(function(data) {console.log(data);});

  // var cardImage = $(this).attr('src');
  // var modalImage = $('#modal-image').attr('src', cardImage);
  // modalImage.css({"width": "170px", "height": "170px"});

  // var post = $(this).closest('.card');

  // var titleInput = $('<input id="edit-title">').appendTo('#card-update');
  // var imageInput = $('<input id="edit-image">').appendTo('#card-update');
  // var contentInput = $('<input id="edit-content">').appendTo('#card-update');
  // var categoryInput = $('<input id="edit-category">').appendTo('#card-update');
  // var updateButton = $('<button id="update-button">Update Post</button>').appendTo('#card-update');

  // titleInput.val(post.)
}

function hideModal(){
  $('#modal').hide();
  $('#card-update').html('');
}

// function showMore(){
//   var more = 10;
//   $.get('/posts', {limit: 10 + more, order: 'desc'}).done(renderPosts);
// }
