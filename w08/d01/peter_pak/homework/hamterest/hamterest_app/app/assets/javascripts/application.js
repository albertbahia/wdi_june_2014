
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree
var lastScrollTop = 0;

$(function() {
  console.log('this is loaded');
  fetchPosts();
  $('#new-post').on('click', addPost);
  $('body').on('click', '.remove', deletePost);
  $('body').on('click', '#footer', loadMorePosts);
  $(window).scroll(function(event){
   var st = $(this).scrollTop();
   if (st > lastScrollTop){
       loadMorePosts();
   }
   lastScrollTop = st;
 });
})


function fetchPosts() {
    $.get('/posts', {limit: 10, order: 'desc'})
    .done(displayPosts)
    .fail(function(data) {console.log(data)});
}


function displayPosts(posts) {
  posts.forEach(function(currentPost){
    renderPost(currentPost)
  });
}

function renderPost(post) {
    var newContainer = $('#posts-container');
    var newPost = $('<div class="card" data-id="'+post.id+'">');
    var newTitle = $('<h4 class="title">').text(post.title +' - '+post.author);
    var newContent = $('<p class="content">').text(post.content);
    var newImage = $('<div class="image">')
    var newImageSrc = $('<img>').attr('src', post.image_url);
    newImageSrc.appendTo(newImage);
    var newCategory = $('<div class="category">').text(post.category);
    var removeButton = $('<span class="remove">X</span>');
    newPost.append(removeButton)
           .append(newTitle)
           .append(newCategory)
           .append(newImage)
           .append(newContent)
    newPost.appendTo(newContainer);
}

function addPost() {
  var newTitle = $('input[name="title"]').val();
  var newAuthor = $('input[name="author"]').val();
  var newImageUrl = $('input[name="image_url"]').val();
  var newContent = $('input[name="content"]').val();
  var newCategory = $('input[name="category"]').val();
  $.post('/posts', {post:
          {title: newTitle,
           author: newAuthor,
           image_url: newImageUrl,
           content: newContent,
           category: newCategory}
    })
    .done(renderPost);
  $('input[name="title"]').val('');
  $('input[name="author"]').val('');
  $('input[name="image_url"]').val('');
  $('input[name="content"]').val('');
  $('input[name="category"]').val('');
}

function deletePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax({
    url: 'posts/' + id,
    type: 'delete'
  });
}

function loadMorePosts() {
  console.log('do not want to load more')
}
