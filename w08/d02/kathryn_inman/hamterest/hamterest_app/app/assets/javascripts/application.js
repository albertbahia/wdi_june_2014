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

  $('#posts-container').on('click', '.image img', openModalBox);
  $('#modal').on('click', '#close', closeModalBox);
  $('#update-post').on('click', updatePost);
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
  var postAuthor = $('<span id="author">').text('by: ' + post.author);
  var postCategory = $('<span id="category">')
    .text(post.category);
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


// Modal feature/Update from modal

function openModalBox() {
  var cardElement = $(this).closest('.card');
  $('div#modal').show();

  var imageUrl = cardElement.find('.image img').attr('src');
  
  $('#info-image').html('<img src="' + imageUrl + '">');
  $('input[name="new-title"]').val(cardElement.find('h4').text()); 
  $('input[name="new-image_url"]').val(imageUrl); 
  $('input[name="new-content"]').val(cardElement.find('p').text());
  $('input[name="new-category"]').val(cardElement.find('#category').text());
  $('#update-post').attr('data-id', cardElement.attr('data-id'));
};

function closeModalBox() {
  $('#info-image').empty();
  $('#card-update').children().children().empty();
  $('div#modal').hide();
};

function updatePost() {
  var updateID = $('#update-post').data('id');
  var cardElement = $('#posts-container').find($('.card[data-id="' + updateID + '"]'));
  var params = {post: {title: $('input[name="new-title"]').val(), 
                image_url: $('input[name="new-image_url"]').val(), 
                content: $('input[name="new-content"]').val(),
                category: $('input[name="new-category"]').val()}};
  $.ajax({
     url: '/posts/' + updateID,
     type: 'PUT',
     data: params
   })
  .done(function(data){
    console.log(data),
    cardElement.replaceWith(renderPost(data)), 
    closeModalBox()
  });
};
