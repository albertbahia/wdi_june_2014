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

$(function(){
  fetchPosts();
  $('body').on('click', '#new-post', addPost);
  $('body').on('click', '.remove', removePost);
});


function fetchPosts(){
  $.get('/posts')
  .done(displayPosts)
  .fail(function(data) {console.log(data);});
}

// Helped me in the browswer console.
// post = {
//   title: "Whats Up",
//   author: "Gadi Gottlieb",
//   image_url: "placekitten.com/300/300",
//   content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo blanditiis alias at ipsam placeat?',
//   category: "sports"
// }

function renderPost(post) {
  $.get('/posts')
  var postsContainer = $('#posts-container');
  var card = $('<div class="card">').append('<span class="remove">DELETE</span>');
  postsContainer.append(card)

  var title = $('<h4 class="title">').text(post.title);
  var author = $('<h5 class="author">').text(post.author);
  var divImage = $('<div class="image">').append('<img src="' + post.image_url + '">');
  var content = $('<p>').text(post.content);
  var category = $('<p>').text(post.category);

  card.append(title).append(author).append(divImage).append(content).append(category);
}

function displayPosts(posts){
  posts.forEach(function(newPost){
    renderPost(newPost);
  });
}

function addPost(){
  var inputs = $('#forms-container').children().children();
  // Creates post on browser
  var title = inputs.eq(0).val();
  var author = inputs.eq(1).val();
  var image = inputs.eq(2).val();
  var content = inputs.eq(3).val();
  var category = inputs.eq(4).val();

  // creates post in db
  inputs.eq(0).val(''); //title
  inputs.eq(1).val(''); //author
  inputs.eq(2).val(''); //image
  inputs.eq(3).val(''); //content
  inputs.eq(4).val(''); //category
  $.post('/posts', {post: {title: title, author: author, image_url: image, content: content, category: category} })
    .done(renderPost);
}

function removePost(){
  $(this).parent().remove();
}
