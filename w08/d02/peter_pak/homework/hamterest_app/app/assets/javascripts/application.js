
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree

$(function() {
  console.log('this is loaded');
  fetchPosts();
  $('#new-post').on('click', addPost);
  $('body').on('click', '.remove', deletePost);
  $('body').on('click', '#footer', loadMorePosts);
  $(window).scroll(function() {
    if ($(window).scrollTop() === 700){
      loadMorePosts();
    }
  });
  $('body').on('click', '.image', showModal);
  $('#modal').on('click', '#close', hideModal);
  $('#modal').one('click', '.button', updateCard)
})



function fetchPosts() {
    $.get('/posts', {limit: 10, order: 'ASC'})
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
    var newTitle = $('<h4 class="title">').text(post.title)
    var newAuthor = $('<span class="author">').text(post.author);
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
  var lastAddedId = $('.card').last().data('id');
  var newId = lastAddedId + 1
  for (var i = 1; i < 11; i++) {
    $.get('/posts/' + newId)
     .done(renderPost);
    newId++
  };
}


function showModal() {
  var modal = $('#modal');
    if (modal.find('#card-info').children().length === 0) {
    modal.show();
    var cardInfo = $('#card-info');
    var imageUrl = $(this).find('img').attr('src');
    var modalImage = $('<div class="image">').append($('<img src="' + imageUrl + '">'));
    modalImage.appendTo(cardInfo);
    // newImageSrc.appendTo(newImage);
    // var originalCard = $(this).parent();
    var cardId = $(this).parent().data('id');
    // var originalTitle = $(this).siblings('.title').text;
    // console.log(originalTitle)

    $.get('posts/' + cardId)
      .done(editCard);
    }
}

function editCard(data) {
  var cardUpdate = $('#card-update');
  var titleInput = $('<input type="text area" class="edit-title">').val(data.title);
  var imageInput = $('<input type="text area" class="edit-image">').val(data.image_url);
  var contentInput = $('<input type="text area" class="edit-content">').val(data.content);
  var categoryInput = $('<input type="text area" class="edit-category">').val(data.category);
  var updateButton = $('<div class="button">').append($('<button type="button">Update</button>'));
  cardUpdate.append(categoryInput).append(contentInput).append(imageInput).append(titleInput);
  updateButton.appendTo(cardUpdate);
  var sendData = data;
  $('.button').one('click', function(){
    updateCard.call(sendData);
  })
}

function hideModal() {
  $('#modal').hide();
  $('#card-info').empty();
  $('#card-update').empty();
}

function updateCard() {
  var updateArea = $('.modal').find('#card-update');
  var newTitle = $('.edit-title').val();
  var newContent = $('.edit-content').val();
  var newImageUrl = $('.edit-image').val();
  var newCategory = $('.edit-category').val();
  var post_params = { post:
    { title: newTitle,
      content: newContent,
      image_url: newImageUrl,
      category: newCategory}
  };
  var postId = this.id;
  var oldPost = $('.card[data-' + postId + ']');
  console.log(oldPost)
  $.ajax('/posts/' + postId,
    { type: "PUT",
      data: post_params})
      .done(function(data){
        oldPost.remove();
        renderPost(data);
        hideModal();
      })
}
