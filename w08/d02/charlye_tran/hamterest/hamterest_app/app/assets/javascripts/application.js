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
  fetchPosts();
  $('#new-post').on('click', addPost);
  $('body').on('click', '.delete', deletePost);
  $('#posts-container').on('click', '.image', showModal);
  $('#posts-container').on('click', '#close', hideModal);
  $('#modal').on('click', '.update', updatePost);
});

function showModal(){
  var cardInfo = $('#card-info');
  if (cardInfo.children().length === 0) {
    $('#modal').show();
    var currentImage = $(this).find('img').attr('src');
    var cardUpdate = $('#card-update');
    var newDiv = ($('<div class="image">'));
    newDiv.append($('<img src="' + currentImage + '">'));
    cardInfo.append(newDiv);
    // var id = $(this).parent().data('id');
    var title = $(this).parent().find($('.title')).text();
    var image_url = $(this).parent().find($('img')).attr('src');
    var content = $(this).parent().find($('.content')).text();
    var category = $(this).parent().find($('.category')).text();
    var id = $(this).parent().data('id');
    var editTitle = $('<input type="text" id="editTitle">').val(title);
    var editImage = $('<input type="text" id="editImage">').val(image_url);
    var editContent = $('<input type="text" id="editContent">').val(content);
    var editCategory = $('<input type="text" id="editCategory">').val(category);
    var currentPostId = $('<input id="editId" type="hidden" value="' + id + '">');
    cardUpdate.append(editTitle).append(editImage).append(editContent).append(editCategory).append(currentPostId);
    cardUpdate.append($('<input class="update" type="button" value="Update">'));}
}

function hideModal(){
  $('#modal').hide();
}

function fetchPosts(){
  $.get('/posts')
  .done(displayPosts)
  .fail(function(data) {console.log(data); });
}

function displayPosts(posts) {
  posts.forEach(function(currentPost){
    renderPost(currentPost);
  });
}

function renderPost(post) {
  var postItem = $('<div data-id="' + post.id + '">').addClass("card");
  var deleteSpan = $('<span class="delete">Delete Post</span>');
  postItem.prepend(deleteSpan);
  var title = $('<h4 class="title">').text("Title: " + post.title);
  var author = $('<p> class="author">').text("Author: " + post.author);
  var content = $('<p class="content">').text(post.content);
  var category = $('<p class="category">').text(post.category);
  var image = $('<div class="image">');
  var imageTag = $('<img>').attr("src", post.image_url);
  image.append(imageTag);
  $(postItem).append(title).append(author).append(content).append(category).append(image);
  $('#posts-container').append($('#card')).append(postItem);
}

function addPost(post){
  var title = $("input[name='title']").val();
  var author = $("input[name='author']").val();
  var image_url = $("input[name='image_url']").val();
  var content = $("input[name='content']").val();
  var category = $("input[name='category']").val();
  $.post( "/posts/", { post: {
    title: title,
    author: author,
    image_url: image_url,
    content: content,
    category: category
  }})
  .done(renderPost);
  $("#forms-container").val("");
}

function deletePost() {
  $(this).parent().remove();
  var id = $(this).parent().data('id');
  console.log(id);
  $.ajax("/posts/" +id, {type: "delete"});
}

function updatePost(){
  var id = $('#editId').val();
  var title = $('#editTitle').val();
  var category = $('#editCategory').val();
  var content = $('#editContent').val();
  var image = $('#editImage').val();
  var params = {
    post: {
      title: title,
      category: category,
      content: content,
      image_url: image,
    }};
  $.ajax('/posts/' + id, { type: "PUT", data: params})
  .done(function(data){
    renderPost(data);

    hideModal();
  });
  var oldPost = $(".card[data-id='" +id + "']").remove();
  console.log(oldPost);
}
