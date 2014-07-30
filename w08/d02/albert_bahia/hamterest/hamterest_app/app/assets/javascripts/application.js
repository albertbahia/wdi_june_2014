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
  console.log('Sooo loaded.');

  fetchPosts();

  // Event Listeners
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', removePost);
  $('body').on('click', '.image', showModal);
  $('body').on('click', '#close', closeModal);
  $('body').on('click', '#update-button', updatePost);
});

function fetchPosts() {
  $.get("/posts")
    .done(displayPosts)
    .fail( function(data) {
      console.log(data);
    }
  );
}

function displayPosts(posts) {
  posts.forEach( function(currentPost) {
    renderPost(currentPost);
  });
}

function renderPost(post) {
  var postItem = $('<div class="card" data-id="' + post.id + '">');

  var postTitle = $('<h4 class="title">').text(post.title).appendTo(postItem);

  var postAuthor = $('<p class="author">').text(post.author).appendTo(postItem);

  var postImage = $('<div class="image">');
  var postImageSource = $('<img src="' + post.image_url + '">').appendTo(postImage);
  postItem.append(postImage);

  var postContent = $('<p class="content">').text(post.content).appendTo(postItem);

  var postCategory = $('<p class="category">').text(post.category).appendTo(postItem);

  $('<span type="button" class="remove">').text('Delete Post').appendTo(postItem);

  $("#posts-container").append(postItem);
}

function addPost() {
  console.log('Added a post.');

  var newPostTitle =  $('#forms-container').children('div').eq(0).children().val();
  console.log('Title: ' + newPostTitle);

  var newPostAuthor =  $('#forms-container').children('div').eq(1).children().val();
  console.log('Author: ' + newPostAuthor);

  var newPostImage =  $('#forms-container').children('div').eq(2).children().val();
  console.log('Image: ' + newPostImage);

  var newPostContent =  $('#forms-container').children('div').eq(3).children().val();
  console.log('Content: ' + newPostContent);

  var newPostCategory =  $('#forms-container').children('div').eq(4).children().val();
  console.log('Category: ' + newPostCategory);

  var newPost = {
    post: {
      title: newPostTitle,
      author: newPostAuthor,
      image_url: newPostImage,
      content: newPostContent,
      category: newPostCategory
    }
  };

  $.post("/posts", newPost)
  .done(renderPost);

   $('#forms-container').children('div').eq(0).val('');
   $('#forms-container').children('div').eq(1).val('');
   $('#forms-container').children('div').eq(2).val('');
   $('#forms-container').children('div').eq(3).val('');
   $('#forms-container').children('div').eq(4).val('');
}

function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
}

function showModal() {
  var post = $(this).parent();
  var imageUrlText = $(this).children().attr('src');

  // console.log(image);
  post.attr('id', 'modal');
  $('<span type="button" id="close">').text('Close').appendTo(post);

  var cardInfo = $('#card-info');
  cardInfo.append('<img src="'+ imageUrlText + '">');
  // console.log(cardInfo);

  var cardUpdate = $('#card-update');

  var cardTitleText = post.find('.title').text();
  var cardUpdateTitle = $('<input type="text" class="title" placeholder="Title">').val(cardTitleText).appendTo(cardUpdate);
  // console.log(cardTitleText);

  var cardUpdateImage = $('<input type="text" class="image_url" placeholder="Image URL">').val(imageUrlText).appendTo(cardUpdate);
  // console.log(imageUrlText);

  var cardContentText = post.find('.content').text();
  var cardUpdateContent = $('<input type="text" class="content" placeholder="Content">').val(cardContentText).appendTo(cardUpdate);
  // console.log(cardContentText);

  var cardCategoryText = post.find('.category').text();
  var cardUpdateCategory = $('<input type="text" class="category" placeholder="Category">').val(cardCategoryText).appendTo(cardUpdate);
  // console.log(cardCategoryText);

  var updateButton = $('<button type="button" id="update-button">').text('Update').appendTo(cardUpdate);

  post.append(cardUpdate);
  post.show();
}

function closeModal() {
  var currentPost = $(this).parent();
  currentPost.hide();
  currentPost.find('input').remove();
  currentPost.find('button').remove();
}

function updatePost() {
  var modal = $(this).parent().parent();
  var id = modal.attr('data-id');

  var newTitle = $('#card-update').find('input.title').val();
  var newImage = $('#card-update').find('input.image_url').val();
  var newContent = $('#card-update').find('input.content').val();
  var newCategory = $('#card-update').find('input.category').val();

  var params = {
    post: {
      title: newTitle,
      image_url: newImage,
      content: newContent,
      category: newCategory
    }
  }

  $.ajax("/posts/" + id, { type: "PUT", data: params })
    .done( function(post) {
      console.log(post.title);
      console.log(post.image_url);
      console.log(post.content);
      console.log(post.category);
      renderPost(post);

      modal.hide();
      modal.find('input').remove();
      modal.find('button').remove();
    }
  );
}
