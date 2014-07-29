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

});
var numStart = 0;
var numEnd = 10;

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
    var cardCategory = $('<span>').text(post.category);
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
