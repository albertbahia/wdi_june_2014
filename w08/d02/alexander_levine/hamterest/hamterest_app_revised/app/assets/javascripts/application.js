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
  console.log("Up and at them!");
  fetchPosts();
  $('body').on('click', '.remove', removePost);
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '#footer', showMore);
  $('body').on('click', '.image', showModal);
});

function fetchPosts() {
  $.get('/posts').done(displayPosts);
}

function displayPosts(posts) {
  posts.forEach(function(currentPost) {
    renderPost(currentPost);
  });
}

function renderPost(post) {
  var postDiv = $('<div class="card" data-id="'+ post.id +'">').appendTo('#posts-container');
  var deleteSpan = $('<span class ="delete">').appendTo(postDiv);
  var deleteButton = $('<p class="remove">X</p>').appendTo(deleteSpan);
  var postTitle = $('<h4 class="title">').appendTo(postDiv).text(post.title);
  var imageDiv = $('<div class="image">').appendTo(postDiv);
  var image =$('<img src="'+ post.image_url +'">').appendTo(imageDiv);
  var content =$('<p class="content">').appendTo(postDiv).text(post.content);
}

function addPost() {
  var title = $('input[name*="title"]');
  var author = $('input[name*="author"]');
  var imageUrl = $('input[name*="image_url"]');
  var content = $('input[name*="content"]');
  var category = $('input[name*="category"]');
  $.post("/posts", {post: {title: title.val(),
                          author: author.val(),
                          image_url: imageUrl.val(),
                          content: content.val(),
                          category: category.val()}
                  }).done(function(data){
                    title.val('');
                    author.val('');
                    content.val('');
                    imageUrl.val('');
                    category.val('');
                    renderPost(data);
                  });
}

function removePost(post) {
  var id = $(this).closest('.card').data('id');
  $.ajax("/posts/" + id, {type: "DELETE"})
    .done($(this).closest('.card').remove())
    .done(fetchPosts);
}

function showMore(){
  var lastID = $('.card').last().data('id');
  for (var i = 1; i <= 10; i++) {
    var nextID = lastID + i;
    $.get("posts/"+ nextID).done(renderPost);
  }
}

function showModal(){
  var modal = $('#modal');
  $('#card-info').appendTo(modal);
  $('#card-update').appendTo(modal);
  modal.show();
  displayModalInfo();
}

function displayModalInfo(){
  cardID= $(this).parent().data('id');

}
