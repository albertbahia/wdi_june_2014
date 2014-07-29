//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
  console.log("Oh hai.");

  fetchPosts();
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', removePost);
  $('body').on('click', '#footer', showMore);
})

function renderPost(post) {
    var newPost = $('<div class="card" data-id="' + post.id + '">');
    newPost.prependTo('#posts-container');

    var postTitle = $('<h4 class="title">').text(post.title);
    var postAuthor = $('<span>').text(post.author);
    var postImageDiv = $('<div class="image">');
      var postImage = $('<img>').attr('src', post.image_url);
    var postContent = $('<p class="content">').text(post.content);
    var postCategory = $('<div>').text(post.category);
    var removeSpan = $('<span class="remove">DELETE</span>');

    newPost.append(postTitle).append(postAuthor).append(postImageDiv.append(postImage))
      .append(postContent).append(postCategory).append(removeSpan);
}

function prependPost(post) {
  var newPost = $('<div class="card" data-id="' + post.id + '">');
  newPost.prependTo('#posts-container');

  var postTitle = $('<h4 class="title">').text(post.title);
  var postAuthor = $('<span>').text(post.author);
  var postImageDiv = $('<div class="image">');
    var postImage = $('<img>').attr('src', post.image_url);
  var postContent = $('<p class="content">').text(post.content);
  var postCategory = $('<div>').text(post.category);
  var removeSpan = $('<span class="remove">DELETE</span>');

  newPost.append(postTitle).append(postAuthor).append(postImageDiv.append(postImage))
    .append(postContent).append(postCategory).append(removeSpan);
}

function displayPosts(posts) {
  posts.forEach(function(currentPost){
    renderPost(currentPost);
  });
}

function fetchPosts() {
  $.get("/posts")
    .done(displayPosts)
    .fail(function(data) { console.log(data); } );
}

function addPost() {
  var newPostTitle = $("input[name='title']" ).val();
  var newPostAuthor = $("input[name='author']").val();
  var newPostImage = $("input[name='image_url']").val();
  var newPostContent = $("input[name='content']").val();
  var newPostCategory = $("input[name='category']").val();

  // Ajax request:
  $.post('/posts', { post: {
      title: newPostTitle,
      author: newPostAuthor,
      image_url: newPostImage,
      content: newPostContent,
      category: newPostCategory
    }
  }).done(prependPost);

  // Empty input boxes:
  $("input[name='title']" ).val('');
  $("input[name='author']").val('');
  $("input[name='image_url']").val('');
  $("input[name='content']").val('');
  $("input[name='category']").val('');

}

function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/posts/' + id, {type: 'DELETE'});
}

function showMore() {
  // get request for posts 11 - 20
  // display selected posts appended to post container



  $.get("/posts")
    .done(displayPosts)
    .appendTo('#posts-container');
    .fail(function(data) { console.log(data); } );

  posts.forEach(function(currentPost){
    renderPost(currentPost);
  });

}


















//
