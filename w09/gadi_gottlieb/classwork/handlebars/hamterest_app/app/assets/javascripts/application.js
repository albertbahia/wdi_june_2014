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
//= require handlebars.runtime
//= require handlebars
//= require_tree ./templates
//= require_tree .


$(function(){
  fetchPosts();
  fetchOne();
  $('#footer').on('click', showMore);
  $('#posts-container').on('click', 'span.remove', removePost);
  $('#posts-container').on('click', '.image img', showEditModal);
  $('#new-post').on('click',addPost);
});

function fetchPosts() {
  $.get('/posts').done(displayPosts);
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
  var offset = $('#posts-container .card').children().length;
  $.get('/show_more', {offset: offset})
   .done(function(data) { displayPosts(data); });
}

// remove a post
function removePost() {
  var thisCard = $(this).closest('.card');
  $.ajax({ url: 'posts/' + thisCard.attr('id'), type: 'DELETE' })
   .done(function(){ thisCard.remove(); })
   .fail(function() { alert('There was an error, sorrels'); });
}

// add a new post
function addPost() {
  var newPostForm = $('#forms-container input');
  var postParams = {
    post: {
      title: newPostForm.eq(0).val(),
      author: newPostForm.eq(1).val(),
      image_url: newPostForm.eq(2).val(),
      content: newPostForm.eq(3).val(),
      category: newPostForm.eq(4).val()
    }
  }
  $.post('/posts', postParams)
  .done(function(data){
    renderPost(data);
    $('input').val('');
  })
  .fail(function(){
    alert('There was an error, sorrels');
  });
}

function fetchOne() {
  var offset = 29;
  var ajaxRequest;
  $(window).on('scroll', function(){
    if (($(window).scrollTop() + $(window).height() > $(document).height() - 350) && ajaxRequest === undefined ){
      ajaxRequest = $.get('/fetch_one', {offset: offset});
      ajaxRequest.done(function(data) {
        renderPost(data);
        ajaxRequest = undefined;
        offset += 1;
      }).fail(function(){
        ajaxRequest = undefined;
        offset += 1;
      });
    }
  });

}

function showEditModal(){
  $('#close').click(function(){$('#modal').hide()});
  var whichCardID = $(this).closest('.card').attr('id');
  var modal = $('#modal');
  var card = $(this).closest('.card').children();

  var modalInfoBox = $('#card-info').empty().append('<div class="image">');
  modalInfoBox.find('div.image').append($('<img>').attr('src', card.eq(3).find('img').attr('src')));

  var modalUpdateBox = $('#card-update');
  modalUpdateBox.empty();
  var titleInput = $("<div>Title<input type='text' name='update-title'></div>");
  var imageInput = $("<div>Image<input type='text' name='update-image_url'></div>");
  var contentInput = $("<div>Content<input type='text' name='update-content'></div>");
  var categoryInput = $("<div>Category<input type='text' name='update-category'></div>");
  var button = $('<button id="update">Update!</button>');

  titleInput.find('input').val(card.eq(1).text());
  imageInput.find('input').val(card.eq(3).find('img').attr('src'));
  contentInput.find('input').val(card.eq(4).text());
  categoryInput.find('input').val(card.eq(5).text().substring(1,card.eq(5).text().length));

  modalUpdateBox.append(titleInput)
                .append(imageInput)
                .append(contentInput)
                .append(categoryInput)
                .append(button);
  modal.show();
  button.click(function(){
    var postParams = {
      post: {
        title: $('[name="update-title"]').val(),
        image_url: $('[name="update-image_url"]').val(),
        content: $('[name="update-content"]').val(),
        category: $('[name="update-category"]').val()
      }
    };
    $.ajax({
      url: '/posts/' + whichCardID,
      type: 'PUT',
      data: postParams
    })
    .done(function(data){
      var deleteButton = $('<span class="remove">X</span>');
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
      $('#' + data.id).empty().append(deleteButton)
                              .append(title)
                              .append(author)
                              .append(image.parent())
                              .append(content)
                              .append(category);
      modal.hide();
    })
  })
}
