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
    var inputData = {posts: data};
    postContainer.append(HandlebarsTemplates['posts/allPosts'](inputData));
  } else {
    alert('No more results!');
  }
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

  $.get('/posts/'+whichCardID).done(function(data){
    modal.find('div').remove();
    var template = HandlebarsTemplates['posts/editForm'];
    var renderedTemplate = template(data);
    modal.append(renderedTemplate).show();

    $('update').click(function(){
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
      var oldCard = $('#'+whichCardID);
      var newCard = HandlebarsTemplates['posts/singlePost'](data);
      oldCard.replaceWith(newCard);
      modal.hide();
      })
    })
  });
}
