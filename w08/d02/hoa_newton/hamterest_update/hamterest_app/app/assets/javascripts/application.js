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


$(function(){
  fetchPosts();
  $('#footer').on('click', showMore);
  $('#posts-container').on('click', 'span.remove', removePost);
  $('#new-post').on('click',addPost);
  $('#posts-container').on('click', '.image', showModal);
  $('#posts-container').on('click', '#close', hideModal);
  $('#posts-container').on('click', '.update', updatePost);

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
  var card = $('<div data-id="'+ data.id + '">').addClass('card').append('<span class="remove">X</span>');
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

///////////// NEW CODE ///////////////
function showModal(){
  hideModal();

  var cardInfo = $('#card-info');

  // Generate and append image in to modal div //
  imageUrl = $(this).find('img').attr('src');
  modalImage = $('<img>').attr('src', imageUrl);
  modalImageDiv = $('<div>').addClass('image').prepend(modalImage);
  cardInfo.append(modalImageDiv);

  //generate and append info into modal div //
  currentPost = $(this).parent();
  var titleValue = currentPost.find('.title').text();
  var authorValue = currentPost.find('span').text();
  var contentValue = currentPost.find('.content').text(); 
  var categoryValue = currentPost.find('.category').text();

  var cardUpdate = $('#card-update')
  var titleInput = $('<input>').addClass('title').val(titleValue);
  var authorInput = $('<input class="author">').val(authorValue);
  var contentInput = $('<input>').addClass('content').val(contentValue);
  var categoryInput = $('<input>').addClass('category').val(categoryValue);
  var imageInput = $('<input>').addClass('image').val(imageUrl);
  var modalWindow = $('div #modal').append(cardInfo).append(cardUpdate);

  var updateButton = $('<div class="update">').append($('<span>').text("Ham It Up"));

  cardUpdate.append(titleInput).append(authorInput).append(imageInput)
    .append(contentInput).append(categoryInput).append(updateButton);

  modalWindow.show();

}

function hideModal() {
  $('div #modal .image').remove();
  $('div #modal .input').remove();
  $('div #modal .content').remove();
  $('div #modal .category').remove();
  $('div #modal .author').remove();
  $('div #modal .update').remove();
  $('div #modal .title').remove();
  $('div #modal').hide();
}

function updatePost (){
  var postId = $(this).parent().data('id');
  // console.log($(this).parent().find(.);

  console.log(postId);
//   var modalDiv = $(this).parent();
//   var newTitle = modalDiv.find('.title').val();
//   var newContent = modalDiv.find('.content').val();
//   var newCategory = modalDiv.find('.category').val();
//   var newImageUrl = modalDiv.find('.image').val()

//   var params = {
//     post: {
//       title: newTitle,
//       // author: author.val(),
//       image_url: newImageUrl,
//       content: newContent,
//       category: newCategory 
//   }}
  
//   $.ajax('/posts/' + postId, { type: 'PUT', data: params }).done(function(post) {
//     renderPost();
//     hideModal();
//   })

//   $.get('/posts/').done(displayPosts(data))
//     .fail( function(data) { console.log(data); });
//   hideModal();
}
















