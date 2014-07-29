//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
var showCountStart =  0;
var showCountEnd   = 10;
var dbMax = 0;
$(function() {
  console.log("Loaded Brah!");
  fetchPosts(showCountStart, showCountEnd);
  $('#new-post').on('click', addPost)
  $('body').on('click', '.delete', removePost);
  $(window).scroll(showMore);
  // $('#footer').on('click', showMore);
})

function fetchPosts (start, end) {
  $.get('/posts')
    .done(function(data) {
      displayPosts(data, start, end);
      dbMax = data.length;
    })
    .fail(function(data) {
      console.log(data);});
}

function renderPosts (posts) {
  var singlePostDiv = $('<div class="card" data-id="'
    + posts.id + '">')
    .appendTo('#posts-container');
  var singlePostSpan = $('<span class="delete">').text('X')
    .appendTo(singlePostDiv);
  var singlePostTitle = $('<h4 class="title">')
    .text(posts.title)
    .appendTo(singlePostDiv);
  var singlePostAuthor = $('<a>')
    .text(posts.author)
    .appendTo(singlePostDiv);
  var singlePostImgDiv = $('<div class="image">')
    .appendTo(singlePostDiv);
  var singlePostImg = $('<img src="' + posts.image_url + '">')
    .appendTo(singlePostImgDiv);
  var singlePostContent = $('<p class="content"></p>')
    .text(posts.content)
    .appendTo(singlePostDiv);
  var singlePostCategory = $('<a>')
    .text(posts.category)
    .appendTo(singlePostDiv);
}

function displayPosts (post,numStart, numEnd) {

  for (var i = numStart; i < numEnd; i++) {
    renderPosts(post[i]);
  }
}

function addPost () {

  var postParams = { post: {
    title: $('input[name="title"]')
      .val(),
    author: $('input[name="author"]')
      .val(),
    image_url: $('input[name="image_url"]')
      .val(),
    content: $('input[name="content"]')
      .val(),
    category: $('input[name="category"]')
      .val()
    }
  };

  $.post('/posts', postParams)
    .done(renderPosts);

  $('input[name="title"]')
    .val("");
  $('input[name="author"]')
    .val("");
  $('input[name="image_url"]')
    .val("");
  $('input[name="content"]')
    .val("");
  $('input[name="category"]')
    .val("");

}

function removePost () {

  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/posts/' + id, { type: 'DELETE'
  });
}

function showMore () {
  showCountStart += 10;
  showCountEnd += 10;
  if (showCountEnd >= dbMax) {
  } else {
    fetchPosts(showCountStart, showCountEnd);
  }


}
