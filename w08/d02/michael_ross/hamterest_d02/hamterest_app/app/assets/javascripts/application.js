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

// This says when the document is ready and the DOM is fully loaded, console.log and run this function
$(document).ready(function(){
  console.log("WATTTTTTTTT");
  fetchPosts();

  var win = $(window);
  var doc = $(document);
    win.scroll(function() {
      if(win.scrollTop() + win.height() == doc.height()) {
        showMore();
      }
    });
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', removePost);
  $('body').on('click', '#footer', showMore);


  $('body').on('click', '.card .image', showModal);
  $('body').on('click', '#close', closeModal);
  $('body').on('click', '#update-button', updatePost);


});

var counter = 1;

function fetchPosts() {
  $.get( "/posts" )
  .done(displayPosts)
  .fail( function(data) {console.log(data);} )
};

function renderPost(post) {
    var card = $('<div class="card"> data-id="' + post.id + '"');
    var title = $('<div class="title">').append(post.title);
    var author = $('<p>').append(post.author);
    var content = $('<p class="content">').append(post.content);
    var image = $('<div class="image">').append($('<img class="image" src="' + post.image_url + '">'));
    var category = $('<a class="card">').append("#" + post.category);
    var deleteSpan = $('<span class="remove">X</span>');
    var newCard = card.append(deleteSpan).append(title).append(author).append(image).append(content).append(category);
    $('#posts-container').append(newCard);
};


function displayPosts(post, startValue, endValue) {
  var startValue = 0;
  var endValue = 10;
  for (var i = startValue; i < endValue; i++) {
    renderPost(post[i]);
  }
};

function addPost() {
  var newTitle = $("input[name='title']").val();
  var newContent = $("input[name='content']").val();
  var newImageUrl = $("input[name='image_url']").val();
  var newAuthor = $("input[name='author']").val();
  var newCategory = $("input[name='category']").val();
  var params = {post: {
    title: newTitle,
    content: newContent,
    image_url: newImageUrl,
    author: newAuthor,
    category: newCategory
  }};
  $.post('/posts', params)
  .done(renderPost);

  $('#forms-container').val('')
};

function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
  console.log("DELETEEEE")
};

function showMore() {
  $.ajax("/show_more", {data: {offset: counter}})
  .done(function(post) {
    counter++;
    displayPosts(post, 0, 10);
  })
};

///////////////////////////////////////////////
////////////////  MODALS  /////////////////////
///////////////////////////////////////////////
function showModal() {
  // console.log($(this).parent())

  // append modal image
  $('#modal').show("slow");

  var cardInfo = $('#card-info');
  var card = $(this).parent();
  var postId = card.attr('data-id');
  var imageSource = card.find('img').attr('src');
  var image = $('<div class="image"><img src="' + imageSource + '"></div>')
  cardInfo.append(image);

  // append modal form
  var title = card.find('.title').text();
  var author = card.find('.author').text();
  var content = card.find('.content').text();
  var category = card.find('.category').text();

  var titleInput = $('<input value="' + title + '">');
  var authorInput = $('<input value="' + author + '">');
  var imageInput = $('<input value="' + imageSource + '">');
  var contentInput = $('<input value="' + content + '">');
  var categoryInput = $('<input value="' + category + '"><br>');
  var updateButton = $('<button type="button">Update Post</button>')
  $('#card-update').append(titleInput, authorInput, imageInput, contentInput, categoryInput, updateButton)


}

function closeModal() {
  var modal = $('#modal');
  modal.hide(500);

};

function updateModal() {

}
