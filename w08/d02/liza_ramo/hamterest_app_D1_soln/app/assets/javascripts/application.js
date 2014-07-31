
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function(){
  fetchPosts();
  fetchOne();
  $('#footer').on('click', showMore);
  $('#posts-container').on('click', 'span.remove', removePost);
  $('#new-post').on('click',addPost)

  $('#posts-container').on('click', '.image', showModal);
  $('#posts-container').on('click', '#close', closeModal);
  $('#modal').on('click', '#button', updateFunction);

});

function fetchPosts() {
  $.ajax({
    url: 'posts',
    type: 'GET',
    datatype: 'json'
  })
  .done(displayPosts);
}

function displayPosts(data) {
  var postContainer = $('#posts-container');
  if (data) {
    for (var i = 0; i < data.length; i++) {
      renderPost(data[i]);
    }
  } else {
    alert('No more results!');
  }
}

// Create a new Card and add information
function renderPost(data) {
  var postContainer = $('#posts-container');
  var card = $('<div>').addClass('card').append('<span class="remove">X</span>');
  var title = $('<h4>').addClass('title');
  var author = $('<span>');
  var image = $('<img>').appendTo($('<div>').addClass('image'));
  var content = $('<p>').addClass('content');
  var category = $('<a>').attr('href','#').addClass('category');

  title.text(data.title);
  author.text(data.author);
  image.attr('src', data.image_url);
  content.text(data.content);
  category.text('#' + data.category);

  card.attr('id', data.id)
  .append(title)
  .append(author)
  .append(image.parent())
  .append(content)
  .append(category);
  postContainer.append(card);
}

// display more results on screen
function showMore() {
  var offset = 20;
  $.ajax({
    type: 'GET',
    datatype: 'json',
    url: '/show_more',
    data: {offset: offset}
  })
  .done(function(data) {
    displayPosts(data);
    offset += 10;
  });
}

// remove a post
function removePost() {
  var cardID = this.parentNode.id;
  var thisCard = $('#' + cardID);
  $.ajax({
    url: 'posts/' + cardID,
    type: 'DELETE'
  })
  .done(function(){
    thisCard.remove();
  })
  .fail(function() {
    alert('There was an error, sorrels')
  });
}

// add a new post
function addPost() {
  var title = $('input[name="title"]');
  var author = $('input[name="author"]');
  var image_url = $('input[name="image_url"]');
  var content = $('input[name="content"]');
  var category = $('input[name="category"]');

  var postParams = {
    post: {
      title: title.val(),
      author: author.val(),
      image_url: image_url.val(),
      content: content.val(),
      category: category.val()
    }
  }
  $.ajax({
    url: '/posts',
    type: 'POST',
    data: postParams
  })
  .done(renderPost)
  .done(function(){
    title.val('');
    author.val('');
    image_url.val('');
    content.val('');
    category.val('');
  })
  .fail(function(){
    alert('There was an error, sorrels');
  })
}

function fetchOne() {
  var offset = 21;
  $(window).on('scroll', function(){
    if ($(window).scrollTop() + $(window).height() > $(document).height() - 350){
      $.ajax({
        type: 'GET',
        datatype: 'json',
        url: '/fetch_one',
        data: {offset: offset}
      })
      .done(function(data) {
        renderPost(data);
        offset += 1;
      }).fail(function(){
        offset += 1;
      });
    }
  });
}

function showModal() {
  closeModal();

  // this === div w/class image (under div.card)

  // card-info div
  var post = $(this).closest('.card');
  var postId = post.attr('id');
  $('#card-update').attr('data-post-id', postId);

  var modalImageDiv = $('<div class="image">').appendTo('#card-info');
  var image = $(this).find('img').attr('src');
  var id = $(this).parent().data('id');
  $('<img>').appendTo(modalImageDiv).attr('src', image);

  // card-update div
  var titleInput = $('<input>').attr('value', $(this).parent().find('h4').text());
  var imageUrlInput = $('<input>').attr('value', image);
  var contentInput = $('<input>').attr('value', $(this).parent().find('.content').text());
  var categoryInput = $('<input>').attr('value', $(this).parent().find('.category').text());
  var buttonDiv = $('<div>').append($('<button id="button">Update</button>'));

  $('#card-update').append(titleInput).append(imageUrlInput).append(contentInput).append(categoryInput)
    .append(buttonDiv);
  $('#card-update').appendTo('#modal');

  // modal show
  $('#modal').show();
}

function updateFunction() {
  var postId = $('#card-update').attr('data-post-id');
  console.log(postId);

  // - - > give inputs ids

  // var params = { post {
  //   title:
  // }};
  //
  // // Ajax PUT request
  // $.ajax('/posts/' + id, {type: "PUT", data: params })
  //   .done(function(post) {
  //     closeModal();
  //
  //     var card
  //
  //   });
}

function closeModal() {
  $('#modal').hide();
  $('#card-info').empty();
  $('#card-update').empty();
}













//
