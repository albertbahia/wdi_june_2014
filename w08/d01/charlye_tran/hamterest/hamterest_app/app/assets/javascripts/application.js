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
});

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
  var author = $('<p> class="p">').text("Author: " + post.author);
  var content = $('<p class="p">').text(post.content);
  var category = $('<p class="p">').text(post.category);
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
