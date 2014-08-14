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
  console.log("Locked and Loaded!");
  fetchPosts();
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', deletePost);
  $('body').on('click', '.image', showModal);
  $('body').on('click', '#close', hideModal);
  $('body').on('click', '.edit', updatePost);
  $('body').on('click', '#footer', showMore);
});

function fetchPosts() {
  $.get("/posts").done(displayPosts);
}

function displayPosts(posts) {
  posts.forEach(function(currentPost) {
    renderPost(currentPost);
  });
}

function renderPost(post) {
var newPost = $('<div class="card" data-id="' + post.id + '">')
  .appendTo('#posts-container');
var title = $('<h4 class="title">')
  .append(post.title)
  .appendTo(newPost);
var imageDiv = $('<div class="image">')
  .appendTo(newPost);
var image = $('<img>', {src: post.image_url})
  .appendTo(imageDiv);
var content = $('<p class="content">')
  .append(post.content)
  .appendTo(newPost);
var category = $('<h6>').append(post.category).prependTo(newPost);
var deleteButton = $('<span class="remove">Delete Post</span>').appendTo(newPost);
}

function addPost() {
  console.log("Clicked!");
  var titleInput = $('#forms-container').children().eq(1).children().val();
  var authorInput = $('#forms-container').children().eq(2).children().val();
  var imageInput = $('#forms-container').children().eq(3).children().val();
  var contentInput = $('#forms-container').children().eq(4).children().val();
  var categoryInput = $('#forms-container').children().eq(5).children().val();
  $.post("/posts", {post: {title: titleInput,
                           content: contentInput,
                           image_url: imageInput,
                           author: authorInput,
                           category: categoryInput}
                         }).done(renderPost);
}

function deletePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $ajax("/posts/" + id, {type: "Delete"});
}

function showModal() {
  var modal = $(this).parent().parent().find('#modal');
  var id = $(this).parent().attr('data-id');
  modal.attr('data-id', id);
  var cardInfo = modal.find('#card-info');
  var cardUpdate = modal.find('#card-update');
  var imageUrl = $(this).find($('img')).attr('src');
  var imageDiv = $('<div class="image">')
    .appendTo(cardInfo);
  var image = $('<img>', {src: imageUrl})
    .appendTo(imageDiv);
  var oldTitle = $(this).parent().find('h4').text();
  var oldImageUrl = $(this).find('img').attr('src');
  var oldContent = $(this).parent().find('p').text();
  var oldCategory = $(this).parent().find('h6').text();
  var titleInput = $('<input class="title">').val(oldTitle).appendTo(cardUpdate);
  var imageUrlInput = $('<input class="image-url">').val(oldImageUrl).appendTo(cardUpdate);
  var contentInput = $('<input class="content">').val(oldContent).appendTo(cardUpdate);
  var categoryInput = $('<input class="category">').val(oldCategory).appendTo(cardUpdate);
  var button = $('<button class="edit">Update</button>').appendTo(cardUpdate);
  modal.show();
}


function hideModal() {
  var modal = $(this).parent();
  modal.hide();
  modal.find('div').empty();
}

function updatePost() {
  var post = $(this).parent();
  var id = post.parent().data('id');
  var newTitle = post.find('.title').val();
  var newImageUrl = post.find('.image-url').val();
  var newContent = post.find('.content').val();
  var newCategory = post.find('.category').val();
  var params = {
    post: {
      title: newTitle,
      image_url: newImageUrl,
      content: newContent,
      category: newCategory
    }
  };
  $.ajax("/posts/" + id, { type: 'PUT', data: params })
    .done(function(post) {
      hideModal.call($('#close'));
    });
}

//Thus far unsuccessful attempt at showMore below:

// function showMore() {
//   $.get("/show_more").done(displayNextTen);
// }
//
// function displayNextTen(posts) {
//   numPosts = $('.card').size();
//   console.log(numPosts);
//   for (var i = 0; i < numPosts; i++) {
//     $('.card').eq(i).remove();
//   }
//   for (var j = 0; j < numPosts + 10; j++) {
//     renderPost(posts[i]);
//   }
//   console.log(numPosts);
// }


arr = [3, 5, 6, 2, 8];
