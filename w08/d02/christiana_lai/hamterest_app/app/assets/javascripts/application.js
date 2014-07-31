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

// = require jquery
// = require jquery_ujs
// = require turbolinks
// = require_tree .
$(document).ready(function () {
  console.log("JavaScript is loaded >>");
  fetchPosts();
  $('#new-post').on('click', addPost);
  $('body').on('click', '.remove', removePost);
  $('#footer').on('click', showMore);
  $('body').on('click', '.card', showModal);
  $('#modal').on('click', '#close', hideModal);
  $('#modal').on('click', '.submit', updateModal);
});

var numStart = 0;
var numEnd = 10;

function showModal() {
  $('#modal').show();
  var post = $(this);
  var cardInfo = $('#card-info');
  var cardUpdate = $('#card-update');
  var img = post.find('img').attr('src');
  var modalImg = $('<img src="' + img +'">');
  var cardTitle = post.find('.title').text();
  var cardContent = post.find('.content').text();
  var cardCategory = post.find('.category').text();
  var postId = post.data('id');
  var hiddenDiv = $('<div class="hidden" data-id="' + postId + '">');

  var titleInput = $('<input type="text" name="title" value="'+ cardTitle +'">');
  var imageInput = $('<input type="text" name="image_url" value="'+ img +'">');
  var contentInput = $('<input type="text" name="content" value="'+ cardContent +'">');
  var categoryInput = $('<input type="text" name="category" value="'+ cardCategory +'">');
  var button = $('<button class="submit">Submit</button>');
  cardInfo.append(modalImg);
  cardUpdate.append(titleInput).append(imageInput).append(contentInput).append(categoryInput).append(button).append(hiddenDiv);
}

function hideModal() {
  $('#modal').hide();
  var cardInfo = $('#card-info');
  var cardUpdate = $('#card-update');
  cardInfo.empty();
  cardUpdate.empty();
}

function updateModal() {
  var cardUpdate = $(this).parent();
  var modalDiv = cardUpdate.parent();
  var modalInfo = modalDiv.find('#card-info');
  var modalImg = modalInfo.find('img');
  var modalTitle = cardUpdate.find('title');
  var modalContent = cardUpdate.find('content');
  var modalCategory = cardUpdate.find('category');

  var id = cardUpdate.find('.hidden').attr('data-id');

  var newImg = cardUpdate.find("input[name='image_url']").val();
  var newTitle = cardUpdate.find("input[name='title']").val();
  var newContent = cardUpdate.find("input[name='content']").val();
  var newCategory = cardUpdate.find("input[name='category']").val();

  var params = {
    post: {
      image_url: newImg,
      title: newTitle,
      content: newContent,
      category: newCategory
    }
  };
  console.log(params);
  $.ajax({
    url: "/posts/" + id,
    type: "PUT",
    data: params
  }).done(function(post) {
      modalImg.replaceWith('<img src="'+newImg+'">');
      modalTitle.replaceWith('<h4>' +newTitle+ '</h4>');
      modalContent.replaceWith('<p class="content">' +newContent+ '</p>');
      modalCategory.replaceWith('<span class="category">' +newCategory+ '</span>');
    });
}


function fetchPosts() {
  $.get('/posts')
  .done(function(data) { displayPosts(data,numStart,numEnd); })
  .fail(function(data) { console.log(data); });
}

function renderPosts(post) {
  var newCard = $('<div data-id='+ post.id + ' class="card">');
  var title = $('<h4 class="title">').text(post.title);
  var author = $('<span class="author">').text(post.author);
  var image = $('<div class="image">');
  var imageUrl = $('<img src="'+ post.image_url +'">');
  var content = $('<p class="content">').text(post.content);
  var category = $('<span class="category">').text(post.category);
  var button = $('<p class="remove">X</p>');
  image.append(imageUrl);
  newCard.append(title, author, image, content, category, button);
  $('#posts-container').append(newCard);
}

function displayPosts(post, numStart, numEnd) {
  for(var i = numStart; i < numEnd; i++) {
    renderPosts(post[i]);
  }
}

function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/posts/' + id, {type: "DELETE"});
}

function addPost() {
  var newTitle = $("input[name='title']").val();
  var newContent = $("input[name='content']").val();
  var newImageUrl = $("input[name='image_url']").val();
  var newAuthor = $("input[name='author']").val();
  var newCategory = $("input[name='category']").val();
  $.post('/posts', {post: {title: newTitle, content: newContent, image_url: newImageUrl, author: newAuthor, category: newCategory}})
  .done(renderPosts);
}

function showMore() {
  numStart += 10;
  numEnd += 10;
  fetchPosts(numStart, numEnd);
}

$(window).scroll(function(){
  if ($(window).scrollTop() == $(document).height() - $(window).height() +10){
    if (numStart > numEnd){
      return false;
    } else {
      showMore();
    }
    numStart++;
  }

});
