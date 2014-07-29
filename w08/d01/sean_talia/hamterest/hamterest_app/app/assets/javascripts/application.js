//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree

$(function(){
  fetchPosts();
  $('body').on('click', '.remove', removePost);
  $('body').on('click', '#new-post', createPost);
  $('body').on('click', '#show-more', showMorePosts);
  $(window).scroll(function() {
     if($(window).scrollTop() + $(window).height() > $(document).height() + 10) {
         showMorePosts();
     };
  });
});

////////////////////////////////////////////////////////////////////////////////

function renderPost(post){
  var newCard = $('<div class="card" data-id="' + post.id + '">');
  var title = $('<h4 class="title">').text(post.title);
  var author = $('<span>').text('Author: ' + post.author);
  var image = $('<div class="image">').append($('<img src="' + post.image_url + '">'));
  var content = $('<p>').text(post.content);
  var category = $('<p>').text('Category: ' + post.category);
  var deleteSpan = $('<span class="remove">Remove Post</span>')
  newCard.append(title, author, image, content, category, deleteSpan);
  $('#posts-container').append(newCard);
};

function displayPosts(posts){
  posts.forEach(function(currentPost){
    renderPost(currentPost);
  });
};

function fetchPosts(){
  $.get('/posts')
  .done(displayPosts)
  .fail(function(data) { console.log(data) });
};

function createPost() {
  var postTitle = $('input[name="title"]').val();
  var postAuthor = $('input[name="author"]').val();
  var postImageUrl = $('input[name="image_url"]').val();
  var postContent = $('input[name="content"]').val();
  var postCategory = $('input[name="category"]').val();
  var newPost = {title: postTitle, author: postAuthor, image_url: postImageUrl, content: postContent, category: postCategory};
  $.post("/posts", {post: newPost}).done(renderPost);
  $('input[name="title"]').val('');
  $('input[name="author"]').val('');
  $('input[name="image_url"]').val('');
  $('input[name="content"]').val('');
  $('input[name="category"]').val('');
};

function removePost() {
  var post = $(this).parent();
  var id = post.attr('data-id');
  console.log(id);
  post.remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
};

function sleep(milliseconds) {
  var start = new Date().getTime();
  for (var i = 0; i < 1e7; i++) {
    if ((new Date().getTime() - start) > milliseconds){
      break;
    };
  };
};

function showMorePosts() {
  var lastIndex = parseInt($('.card').last().attr('data-id'));
  var nextId;
  for(var i = 1; i <= 10; i++){
    nextId = lastIndex + i;
    $.get('/posts/' + nextId).done(renderPost);
    sleep(25);
  };
};
