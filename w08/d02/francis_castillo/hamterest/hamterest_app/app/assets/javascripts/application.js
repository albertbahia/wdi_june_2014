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
  $('#posts-container').on('click', '.card', showModal);
  $('#posts-container').on('click', '#close', function() {
    $(this).parent().hide();
    $('#card-info .image').siblings('.card');
    $('#card-update').removeAttr("data-id").children().remove();
    $('#card-info').children().remove();
  });
  $('#posts-container').on('click', '#update-button',
    function() {
      updatePost.call(this);
    }
  );
  // $(window).scroll(showMore);
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

function showModal () {

  var card = $(this);
  var card1 = card['0'];
  var id = $(this).data("id");

  var imgDiv = card.children('.image')['0'];
  var img = $(imgDiv).children()['0'];
  var imgSrc = $(img).attr('src');
  var singlePostImgDiv = $('<div class="image">');
  var singlePostImg = $('<img width="170px" height="170px" src="' + imgSrc + '">')
    .appendTo(singlePostImgDiv);

  $('#modal').show();
  $('#card-info').append(singlePostImg);

  var title = $($(card1).children('.title')['0']).text();
  var content = $($(card1).children('.content')['0']).text();
  var category = $($(card1).children('a')['1']).text();

  $('#card-update').attr("data-id", id);
  var titleInput = $('<input class="title" value="' + title + '">');
  titleInput.appendTo('#card-update');

  var imageURLInput = $('<input class="image-url" value="' + imgSrc + '">');
  imageURLInput.appendTo('#card-update');

  var contentInput = $('<input class="content" value="' + content + '">');
  contentInput.appendTo('#card-update');

  var categoryInput = $('<input class="category" value="' + category + '">');
  categoryInput.appendTo('#card-update');

  var inputButton = $('<button id="update-button">Update</button>');
  inputButton.appendTo('#card-update');

}

function updatePost () {
  var id = $(this).parent('#card-update').data("id");

  var titleVal = $('#card-update .title').val();
  var imageUrlVal = $('#card-update .image-url').val();
  var contentVal = $('#card-update .content').val();
  var categoryVal = $('#card-update .category').val();
  var params = {post: { title: titleVal,image_url: imageUrlVal, content: contentVal, category: categoryVal}}

  $.ajax('/posts/' + id, { type: 'PUT', data: params
}).done(function(post) {
  $('#close').trigger('click');
  
});
}
