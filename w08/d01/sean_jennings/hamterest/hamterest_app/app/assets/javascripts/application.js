//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {

  fetchPosts();
  $('#new-post').on('click', addPost);
  $('posts-container').on('click', '.remove', deletePost);
});

function fetchPosts() {
  $.get('/posts')
  .done(function(data) {
      displayPosts(data);
    }
  )
}

function displayPosts(posts) {
  posts.forEach(function(currentPost) {
    renderPost(currentPost);
  });
}

function renderPost(post) {
  var $card = $('<div class="card" data-id="' + post.id + '">');
  var $image = $('<div>').addClass('image');
  var $deleteButton = $('<button>delete</button>').addClass('remove');
  $image.append('<img src="'+ post.image_url +'">');
  $card.append('<h4 class="title">' + post.title);
  $card.append('<p>' + post.author);
  $card.append($image);
  $card.append('<span>' + post.content);
  $card.append('<span>' + post.category);
  $card.append($deleteButton);
  $card.appendTo('#posts-container');
}

function addPost() {
  var titleInput = $("input[name='title']").val();
  var authorInput = $("input[name='author']").val();
  var imageInput = $("input[name='image_url']").val();
  var contentInput = $("input[name='content']").val();
  var categoryInput = $("input[name='category']").val();

  $.post('/posts',{post: {
    title: titleInput,
    author: authorInput,
    image_url: imageInput,
    content: contentInput,
    category: categoryInput
  }}).done(renderPost);
}


function deletePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
}
