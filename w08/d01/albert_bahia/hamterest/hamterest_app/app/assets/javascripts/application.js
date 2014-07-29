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
  console.log('Sooo loaded.');

  fetchPosts();

  // Event Listeners
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', removePost);

});


function fetchPosts() {
  $.get("/posts")
    .done(displayPosts)
    .fail( function(data) {
      console.log(data);
    }
  );
}

function displayPosts(posts) {
  posts.forEach( function(currentPost) {
    renderPost(currentPost);
  });
}

function renderPost(post) {
  var postItem = $('<div class="card" data-id="' + post.id + '">');

  var postTitle = $('<h4 class="title">').text(post.title).appendTo(postItem);

  var postAuthor = $('<p class="author">').text(post.author).appendTo(postItem);

  var postImage = $('<div class="image">');
  var postImageSource = $('<img src="' + post.image_url + '">').appendTo(postImage);
  postItem.append(postImage);

  var postContent = $('<p class="content">').text(post.content).appendTo(postItem);

  var postCategory = $('<p class="category">').text(post.category).appendTo(postItem);

  $('<span type="button" class="remove">').text('Delete Post').appendTo(postItem);

  $("#posts-container").append(postItem);
}

function addPost() {
  console.log('Added a post.');

  var newPostTitle =  $('#forms-container').children('div').eq(0).children().val();
  console.log('Title: ' + newPostTitle);

  var newPostAuthor =  $('#forms-container').children('div').eq(1).children().val();
  console.log('Author: ' + newPostAuthor);

  var newPostImage =  $('#forms-container').children('div').eq(2).children().val();
  console.log('Image: ' + newPostImage);

  var newPostContent =  $('#forms-container').children('div').eq(3).children().val();
  console.log('Content: ' + newPostContent);

  var newPostCategory =  $('#forms-container').children('div').eq(4).children().val();
  console.log('Category: ' + newPostCategory);

  var newPost = {
    post: {
      title: newPostTitle,
      author: newPostAuthor,
      image_url: newPostImage,
      content: newPostContent,
      category: newPostCategory
    }
  };

  // console.log(newPost['post']);

  $.post("/posts", newPost)
  .done(renderPost);

   $('#forms-container').children('div').eq(0).val('');
   $('#forms-container').children('div').eq(1).val('');
   $('#forms-container').children('div').eq(2).val('');
   $('#forms-container').children('div').eq(3).val('');
   $('#forms-container').children('div').eq(4).val('');
}

function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
}
