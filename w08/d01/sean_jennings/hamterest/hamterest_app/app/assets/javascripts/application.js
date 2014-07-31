//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {

  fetchPosts();
  $('#new-post').on('click', addPost);
  $('#posts-container').on('click', '.remove', removePost);
  $('#posts-container').on('click', '.card', openModal);
  $('#close').on('click', closeModal);
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
  var $card = $('<div class="card" data-id="'+ post.id + '">');
  var $title = $('<h4 class="title">').text(post.title);
  var $author = $('<span>').text(post.author);
  var $imageDiv = $('<div class="image">');
  var $image = $('<img src="'+ post.image_url +'">');
  var $content = $('<p>').text(post.content);
  var $category = $('<span>').text(post.category);
  var $deleteButton = $('<button class="remove">X</button>');

  $imageDiv.append($image);

  $card.append($title)
        .append($author)
        .append($imageDiv)
        .append($content)
        .append($category)
        .append($deleteButton);

  $card.appendTo('#posts-container');
}

function addPost() {
  var titleInput = $("input[name='title']").val();
  var authorInput = $("input[name='author']").val();
  var imageInput = $("input[name='image_url']").val();
  var contentInput = $("input[name='content']").val();
  var categoryInput = $("input[name='category']").val();

  var params = {
    post: {
      title: titleInput,
      author: authorInput,
      image_url: imageInput,
      content: contentInput,
      category: categoryInput
    }
  }
  $.post('/posts', params).done(renderPost);
}


function removePost() {
  var id = $(this).parent().data('id');
  $(this).parent().remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
}

function openModal() {
  $('#card-info').empty();
  $('#card-update').empty();
  var id = $(this).data('id');

  $.get('/posts/' + id).done(function(d) {
    var $imageDiv = $('<div class="image">');
    var $image = $('<img src="'+ d.image_url +'">');
    $imageDiv.append($image);

    $('#card-info').append($imageDiv);

    var $title = $('<input type="text" name="title">').val(d.title);
    var $imageUrl = $('<input type="text" name="image_url">').val(d.image_url);
    var $content = $('<input type="text" name="content">').val(d.content);
    var $category = $('<input type="text" name="category">').val(d.category);
    var $button = $('<button>Update</button>');

    var $modalDiv = $('#card-update');
    $modalDiv.append($title).append($imageUrl).append($content).append($category).append($button);
  });

  $('#modal').show();
}

function closeModal() {
  $('#modal').hide();

}
