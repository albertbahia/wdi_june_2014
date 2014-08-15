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
  $('#footer').on('click', showMoreResults);
  $('#new-post').on('click',addPost);
  $('#posts-container').on('click', 'span.remove', removePost);
  $('#posts-container').on('click', '.image img', showEditModal);
});

function fetchPosts() {
  $.get('/posts').done(displayPosts);
}

function displayPosts(data) {
  var postContainer = $('#posts-container');
  var template = HandlebarsTemplates['posts/allPosts'];
  var postsInfo = {posts: data};
  var compiledTemplate = template(postsInfo);
  postContainer.append(compiledTemplate);
  setTimeout(function() { fetchOne(); }, 100);
}

function showMoreResults() {
  var offset = $('#posts-container .card').children().length;
  $.get('/show_more', {offset: offset})
   .done(function(data) { displayPosts(data); });
}

function removePost() {
  var thisCard = $(this).closest('.card');
  $.ajax({ url: 'posts/' + thisCard.attr('id'), type: 'DELETE' })
   .done(function(){ thisCard.remove(); })
   .fail(function() { alert('There was an error, sorrels'); });
}

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
      $('input').val('');
      $('#posts-container').append(HandlebarsTemplates['posts/singlePost'](data));
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
      ajaxRequest = $.get('/fetch_one', {offset: offset})
      ajaxRequest.done(function(data) {
        $('#posts-container').append(HandlebarsTemplates['posts/singlePost'](data))
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
  modal.find('div').remove();
  var card = $(this).closest('.card').children();
  // shoutout to Alex A for this suggestion
  $.get('/posts/'+whichCardID)
   .done(function(data){
    var formTemplate = HandlebarsTemplates['posts/editForm'];
    modal.append(formTemplate(data));
    modal.show();

    $('#update').click(function(){
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
        var cardTemplate = HandlebarsTemplates['posts/singlePost'];
        $('#' + whichCardID).replaceWith(cardTemplate(data))
        modal.hide().find('div').remove();
      })
    });
  });
}
