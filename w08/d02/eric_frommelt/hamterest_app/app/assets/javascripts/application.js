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
  console.log('We\'re Loaded');
  fetchPosts();
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', deletePost);
  $('body').on('click', '.card img', triggerModal);
  $('body').on('click', '#close', closeModal);
  $('body').on('click', '.edit-button', updatePost);
})

function fetchPosts() {
  $.get('/posts')
  .done(displayPosts)
  .fail( function(data) { console.log(data); });
}

function renderPost(post) {
  var container = $('#posts-container');
  var card = $('<div class="card" data-id="' + post.id + '">');
  var title = $('<h4 class="title">').append(post.title);
  var author = $('<div class="author">').text('Author: ').append(post.author);
  var img_container = $('<div class="image">');
  var img = $('<img>', {src: post.image_url}).appendTo(img_container);
  var content = $('<p class="content">').append(post.content);
  var category =$('<div class="category">').text('Category: ').append(post.category);
  var deleteBtn = $('<div class="remove">Delete</div>');
  card.append(title).append(category).append(author).append(img_container).append(content).append(deleteBtn);
  container.append(card);
}

function displayPosts(posts) {
  posts.forEach(function(currentPost) {
    renderPost(currentPost);
  });
}

function addPost() {
  console.log('clicked');

  var inputTitle = $('input[name="title"]');
  var inputAuthor = $('input[name="author"]');
  var inputImage = $('input[name="image_url"]');
  var inputContent = $('input[name="content"]');
  var inputCategory = $('input[name="category"]');

  var postParams = {
    post: {
      title: inputTitle.val(),
      author: inputAuthor.val(),
      image_url: inputImage.val(),
      content: inputContent.val(),
      category: inputCategory.val()
    }
  }

  $.ajax({
    url: '/posts',
    type: 'POST',
    data: postParams
  })
  .done(renderPost)
  .done(function(){
    inputTitle.val('');
    inputAuthor.val('');
    inputImage.val('');
    inputContent.val('');
    inputContent.val('');
  })
  .fail(function() {
    alert('There was an error');
  })
}

function deletePost() {
  var postId = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/posts/' + postId, {type: 'DELETE'});
}

function triggerModal(post) {
  console.log('activity');
  // var test = $(this).closest('.card').attr('data-id');

  var cardInfo = $(this).closest('.card');
  var title = cardInfo.find($('.title')).text();
  var image = cardInfo.find($('img')).attr('src');
  var content = cardInfo.find($('.content')).text();
  var category = cardInfo.find($('.category')).text();
  var id = cardInfo.attr('data-id');

  var editTitle = $('<input type="text" name="title" id="editTitle">').val(title);
  var editImage = $('<input type="text" name="image_url" id="editImage">').val(image);
  var editContent = $('<input type="text" name="content" id="editContent">').val(content);
  var editCategory = $('<input type="text" name="category" id="editCategory">').val(category);
  var postId = $('<input id="editId" type="hidden" value="' + id +'">');
  var editButton = $('<button class="edit-button">');

  $('#modal').show();
  $('#card-info').append('<img src=' + image + '>');
  $('#card-update').append(editTitle).append(editImage).append(editContent).append(editCategory).append(postId).append(editButton);
  editButton.text('Update');

  console.log(title);

}

function updatePost() {
  console.log('updating?');
  var oldPost = $(this).closest('.card');

  var id = $('#editId').val();
  var title = $('#editTitle').val();
  var author = $('#editAuthor').val();
  var image = $('#editImage').val();
  var content = $('#editContent').val();
  var category = $('#editCategory').val();

  var params = {
    post: {
      title: title,
      category: category,
      content: content,
      image_url: image
    }
  };

  $.ajax('/posts/' + id, { type: "PUT", data: params })
  .done(function(data) {
    // oldPost.remove();
    renderPost(data);
    closeModal();
  });


}

function closeModal() {
  console.log('close?');
  $('#card-info img').remove();
  $('#card-update').children().remove();
  $('#modal').hide();
}
