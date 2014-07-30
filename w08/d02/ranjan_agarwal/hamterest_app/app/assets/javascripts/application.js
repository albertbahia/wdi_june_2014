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

$(function() {
  console.log('Hello');
  fetchPosts();
  $('body').on('click', '.remove', removePost);
  $('#new-post').on('click', addPost);
  $('#footer').on('click', showMore);

  $('body').on('click', '.card', showModal);
  $('body').on('click', '#close', hideModal);
  $('body').on('click', '.edit-button', updatePost);

});
var numStart = 0;
var numEnd = 10;

function showModal() {
  $( "#modal" ).show();
  var post = $(this);
  var cardInfo = $('#card-info');
  var oldTitle = post.find('.title').text();
  var titleHeader = $('<h4>').append(oldTitle);
  var image = post.find('img').attr('src');
  var newImage = $('<img src='+ image +'>');
  cardInfo.append(titleHeader).append(newImage);
  var oldContent = post.find('.content').text();
  var oldCategory = post.find('.category').text();

  var id = $(this).data('id');
  var hiddenId = $('<div class="hidden-id" data-id="'+ id +'">');
  var cardUpdate = $('#card-update');
  var titleInput = $('<input type="text" name="title" value="' + oldTitle +'">');
  var imageInput = $('<input type="text" name="image_url" value="' + image +'">');
  var contentInput = $('<input type="text" name="content" value="' + oldContent +'">');
  var categoryInput = $('<input type="text" name="category" value="' + oldCategory +'">');
  var editButton = $('<button class="edit-button">Update</button>');

  cardUpdate.append(titleInput).append(imageInput).append(contentInput).append(categoryInput).append(editButton).append(hiddenId);

}

function updatePost() {

  var modalDiv = $(this).parent().parent();
  var info = modalDiv.find('#card-info');
  var infoTitle = info.find('h4');
  var infoImg = info.find('img');
  var update = $(this).parent();
  var id = update.find('.hidden-id').attr('data-id');
  var card = $(this).parent().parent().parent().find('div[data-id="'+ id +'"]');
  console.log(card);
  var cardTitle = card.find('h4');
  var cardImg = card.find('img');
  var cardContent = card.find('.content');
  var cardCategory = card.find('.category');
  var newTitle = update.find('input[name="title"]').val();
  var newImage = update.find('input[name="image_url"]').val();
  var newContent = update.find('input[name="content"]').val();
  var newCategory = update.find('input[name="category"]').val();

  var params = {
    post: {id: id, title: newTitle, image_url: newImage, content: newContent, category: newCategory}
  };

  $.ajax("/posts/" + id, {type: "PUT", data: params})
      .done(function(post) {
        infoTitle.replaceWith('<h4>'+ newTitle +'</h4>');
        infoImg.replaceWith('<img src="'+ newImage +'">');
        cardTitle.replaceWith('<h4>'+ newTitle +'</h4>');
        cardImg.replaceWith('<img src="'+ newImage +'">');
        cardContent.replaceWith('<p class="content">'+ newContent +'</p>');
        cardTitle.replaceWith('<span class="category">'+ newTitle +'</span>');
        console.log('hi');
        hideModal();
      });

}

function hideModal() {
  $('#modal').find('div').empty();
  $("#modal").hide();
}



function fetchPosts(){

  $.get('/posts')
  .done(function(data) {displayPosts(data,numStart, numEnd)})
  .fail(function(data) { console.log(data); });
};

function renderPost(post) {
    var newCard = $('<div data-id=' + post.id + ' class="card">');
    var cardTitle = $('<h4 class="title">').text(post.title);
    var imageDiv = $('<div class="image">');
    var cardImage = $('<img src="' + post.image_url + '">');
    imageDiv.append(cardImage);
    var cardAuthor = $('<span>').text(post.author);
    var cardContent = $('<p class="content">').text(post.content);
    var cardCategory = $('<span class="category">').text(post.category);
    var cardRemove = $('<span class="remove">X</span>')
    newCard.append(cardTitle,cardAuthor,imageDiv,cardContent,cardCategory, cardRemove);
    $('#posts-container').append(newCard);
}

function displayPosts(posts, numStart, numEnd) {
  for (var i = numStart; i < numEnd; i++) {
    renderPost(posts[i]);
  }
};

function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
}

function addPost() {
  var newPostTitle = $('input[name="title"]').val();
  var newPostAuthor = $('input[name="author"]').val();
  var newPostImg = $('input[name="image_url"]').val();
  var newPostContent = $('input[name="content"]').val();
  var newPostCategory = $('input[name="category"]').val();

  var postParams = {title: newPostTitle, image_url: newPostImg, author: newPostAuthor, content: newPostContent, category: newPostCategory };

  $.post( "/posts", { post: postParams })
  .done(renderPost);

  $('input[name="title"]').val('');
  $('input[name="author"]').val('');
  $('input[name="image_url"]').val('');
  $('input[name="content"]').val('');
  $('input[name="category"]').val('');
};


function showMore() {
  numStart += 10;
  numEnd += 10;
  fetchPosts(numStart,numEnd);
}



  $(window).scroll(function(){
    if  ($(window).scrollTop() == $(document).height() - $(window).height()){
      if (numStart > numEnd){
          return false;
      }else{
          showMore();
      }
      numStart++;
    }
});
