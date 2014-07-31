//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree

$(function(){
  fetchPosts();
  $('body').on('click', '.remove', removePost);
  $('body').on('click', '#new-post', createPost);
  $('body').on('click', '#show-more', showMorePosts);
  $(window).scroll(function() {
     if($(window).scrollTop() + $(window).height() > $(document).height() + 10) {
         showMorePosts();
     };
  });
  $('body').on('click', '.card .image', displayModal);
  $('body').on('click', '#close', closeModal);
  $('body').on('click', '#update-button', updatePost)
});

////////////////////////////////////////////////////////////////////////////////


function displayModal() {
  // Append the Image
  var infoDiv = $('#card-info');
  var card = $(this).parent();
  var postId = card.attr('data-id');
  var imageSource = card.find('img').attr('src');
  var imageTag = $('<img src="' + imageSource + '">')
  var image = $('<div class="image">').append(imageTag);
  infoDiv.append($('<div id="modal-card" card-id="'+postId+'">').text(postId).css('display', 'none'), image);

  // Append the Form
  var title = card.find('.title').text();
  var author = card.find('.author').text();
  var content = card.find('.content').text();
  var category = card.find('.category').text();

  var titleInput = $('<input id="edit-title" value="'+ title +'">');
  var authorInput = $('<input id="edit-author" value="'+ author +'">');
  var imageInput = $('<input id="edit-source" value="'+ imageSource +'">');
  var contentInput = $('<input id="edit-content" value="'+ content +'">');
  var categoryInput = $('<input id="edit-category" value="'+ category +'"><br>');
  var updateButton = $('<button type="button" id="update-button">Update Post</button>')
  $('#card-update').append(titleInput, authorInput, imageInput, contentInput, categoryInput, updateButton)

  // Display the Modal
  $('#modal').show();
}

function closeModal(){
  $('#card-info').text('');
  $('#card-update').text('');
  $('#modal').hide();
}

function updatePost(){
  var id = $('#modal-card').attr('card-id');
  var newTitle = $('#edit-title').val();
  var newAuthor = $('#edit-author').val();
  var newImageUrl = $('#edit-source').val();
  var newContent = $('#edit-content').val();
  var newCategory = $('#edit-category').val();

  var params = { post:
    {
      id: id,
      title: newTitle,
      author: newAuthor,
      image_url: newImageUrl,
      content: newContent,
      category: newCategory
    }
  }
  $.ajax({
    url: '/posts/' + id,
    data: params,
    type: 'PUT'
  })
  .done(function(newPost){
    $('div[data-id="' + id + '"]').remove();
    renderPost(newPost);
    closeModal();
  });

}

function renderPost(post){
  var newCard = $('<div class="card" data-id="' + post.id + '">');
  var title = $('<h4 class="title">').text(post.title);
  var author = $('<span class="author">').text(post.author);
  var image = $('<div class="image">').append($('<img src="' + post.image_url + '">'));
  var content = $('<p class="content">').text(post.content);
  var category = $('<p class="category">').text(post.category);
  var deleteSpan = $('<span class="remove">Remove Post</span>');
  newCard.append(title, author, image, content, category, deleteSpan);
  $('#posts-container').append(newCard);
};

function displayPosts(posts){
  posts.forEach(function(currentPost){
    renderPost(currentPost);
  });
};

function fetchPosts(){
  $.get('/posts')
  .done(displayPosts)
  .fail(function(data) { console.log(data) });
};

function createPost() {
  var postTitle = $('input[name="title"]').val();
  var postAuthor = $('input[name="author"]').val();
  var postImageUrl = $('input[name="image_url"]').val();
  var postContent = $('input[name="content"]').val();
  var postCategory = $('input[name="category"]').val();
  var newPost = {title: postTitle, author: postAuthor, image_url: postImageUrl, content: postContent, category: postCategory};
  $.post("/posts", {post: newPost}).done(renderPost);
  $('input[name="title"]').val('');
  $('input[name="author"]').val('');
  $('input[name="image_url"]').val('');
  $('input[name="content"]').val('');
  $('input[name="category"]').val('');
};

function removePost() {
  var post = $(this).parent();
  var id = post.attr('data-id');
  post.remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
};


////// Show More Posts Button //////

function sleep(milliseconds) {
  var start = new Date().getTime();
  for (var i = 0; i < 1e7; i++) {
    if ((new Date().getTime() - start) > milliseconds){
      break;
    };
  };
};

function showMorePosts() {
  var lastIndex = parseInt($('.card').last().attr('data-id'));
  var nextId;
  for(var i = 1; i <= 10; i++){
    nextId = lastIndex + i;
    $.get('/posts/' + nextId).done(renderPost);
    sleep(25);
  };
};
