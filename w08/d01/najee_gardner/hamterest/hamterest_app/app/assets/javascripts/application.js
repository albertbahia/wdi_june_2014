//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  fetchPosts();
  $('#new-post').on('click', addPost);
  $('#posts-container').on('click', '.remove', removePost);
  $(window).on('scroll', showMore);

});

var offset = 10;

function fetchPosts() {
  $.get('/posts').done(displayPosts);
}


function renderPost(post) {
  var newPost = $('<div class="card" data-id="'+ post.id +'">')
  $('<h4 class="title">').text(post.title).appendTo(newPost);
  $('<p>').text(post.author).appendTo(newPost);
  $('<div class="image">').appendTo(newPost)
    .append('<img src="'+ post.image_url +'">');

  $('<p class="content">').appendTo(newPost).text(post.content);
  $('<p>').text(post.category).appendTo(newPost);
  $('<span class="remove">').appendTo(newPost).text('Remove');

  $('#posts-container').append(newPost);

}

function displayPosts(posts) {
  posts.forEach(function(post) {
    renderPost(post);
  });
}

function addPost() {
  var inputs = $('#forms-container').find('input');
  var postData = {post: {
    title: inputs.eq(0).val(),
    author: inputs.eq(1).val(),
    image_url: inputs.eq(2).val(),
    content: inputs.eq(3).val(),
    category: inputs.eq(4).val()
  }};

  $.post('/posts', postData).done(renderPost);
}

function removePost() {
  var post = $(this).parent();
  post.remove();

  $.ajax('/posts/'+ post.data('id'), {type: 'DELETE'});
}

function showMore() {
  $.get('/show_more', {offset: offset}, displayPosts);
  offset += 10;
}
