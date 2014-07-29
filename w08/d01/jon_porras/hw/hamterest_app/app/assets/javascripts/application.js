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
  console.log('sup thug');
  fetchPosts();

  $('body').on('click', '.remove', removePost);
  $('body').on('click', '#new-post', addPost);
  $(window).scroll(function() {
     if($(window).scrollTop() + $(window).height() == $(document).height()) {
         showMore();
     }
   });
  $('body').on('click', '#footer', showMore);
});

function fetchPosts() {
  $.get('/posts')
  .done(displayPosts)
  .fail(function(data) {
    console.log(data);
  });
}

function renderPost(post) {
    var postDiv = $("<div class='card' data-id='"+ post.id +"'>");
    var title = $("<h4 class='title'>").append(post.title);
    var content = $("<p class='content'>").append(post.content);
    var img = $("<div class='image'>").css('content', "url('"+post.image_url+"')");
    var author = $("<a>").append(post.author);
    var category = $("<a>").append(post.category);
    var deleteSpan = $("<span class='remove'>Remove</span>");
    postDiv.append(title).append(content).append(img).append(author).append(category).append(deleteSpan).append(post.author);
    $('#posts-container').append(postDiv);
}

var idHolder=0;
function displayPosts(posts) {
  counter = 0;
  posts.forEach(function(post) {
    if(counter<10 && post.id>idHolder){
      renderPost(post);
      counter++;
      idHolder = post.id;
    }
  });
}

function addPost() {
  var title = $("input[name='title']").val();
  var author = $("input[name='author']").val();
  var image = $("input[name='image_url']").val();
  var content = $("input[name='content']").val();
  var category = $("input[name='category']").val();
  var params = {post: {
    title: title,
    author: author,
    image_url: image,
    content: content,
    category: category
  }};
  $.post('/posts', params)
  .done(renderPost);
}

function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax('/posts/'+id, {type:'DELETE'});
}

function showMore() {
  fetchPosts();
}
