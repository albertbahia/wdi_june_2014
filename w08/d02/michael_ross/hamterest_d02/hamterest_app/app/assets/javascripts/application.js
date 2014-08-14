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


  $('body').on('click', '.image', showModal);
  $('body').on('click', '#close', closeModal);
  // $('body').on('click', '#update-button', updatePost);


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

  // append image to form
  $('#modal').show("slow");
  console.log($(this).closest('.card'))
  var cardInfo = $('#card-info');
  var card = $(this).closest('.card');
  var postId = card.attr('data-id');
  var imageSource = card.find('img').attr('src');
  var image = $('<div class="image"><img src="' + imageSource + '"></div>')
  cardInfo.append(image);

  // append form to modal
  var title = card.find('.title').text();
  var author = card.find('.author').text();
  var content = card.find('.content').text();
  var category = card.find('.category').text();

  var titleInput = $('<input id="new-title" value="' + title + '">');
  var authorInput = $('<input id="new-author" value="' + author + '">');
  var imageInput = $('<input id="new-image" value="' + imageSource + '">');
  var contentInput = $('<input id="new-content" value="' + content + '">');
  var categoryInput = $('<input id="new-category" value="' + category + '"><br>');
  var updateButton = $('<button id="new-button" type="button">Update Post</button>')
  $('#card-update').append(titleInput, authorInput, imageInput, contentInput, categoryInput, updateButton)


}

function closeModal() {
  var modal = $('#modal');
  modal.hide(500);

};

function updateModal() {
  var id = $('#modal-card').attr('card-id');
  var newTitle = $('#new-title').val();
  var newAuthor = $('#new-author').val();
  var newImage = $('#new-image').val();
  var newContent = $('#new-content').val();
  var newCat = $('#new-category').val();

  var params = { post:
    {
      id: id,
      title: newTitle,
      author: newAuthor,
      image_url: newImage,
      content: newContent,
      category: newCat,
    }
  }
  $.ajax('/posts/' + id, {type: "PUT", data: params})
  .done(function(newModal) {
    card.remove();
  })



}
