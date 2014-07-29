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
  $('#new-post').on('click', addPost);
  $('body').on('click', '.remove', removePost);
  $(window).on('scroll', showMore);
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

  $.post('/posts', postInfo).done(renderPosts);

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

function showMore(){
  var more = 10;
  $.get('/posts', {limit: 10 + more, order: 'desc'}).done(renderPosts);
}
