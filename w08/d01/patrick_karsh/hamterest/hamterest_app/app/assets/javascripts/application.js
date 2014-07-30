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
	console.log("hello");
	fetchPosts(); 
	$('#new-post').click(createPost)
	$('body').on('click', '.remove', removePost);
}); 

function fetchPosts() {
	$.get('/posts', 
		function(data){
		displayPosts(data)	
	}) 
}

function renderPost(post) {

	var cardDiv = $('<div class ="card">').appendTo('#posts-container'); 
	var imageDiv = $('<div class= "image">'); 
	var image = $('<img src="'+ post.image_url + '">');
	var deleteSpan = $('<span class="delete">X</span>');

	$('<h4 class= "title" >').text(post.title).appendTo(cardDiv);
	$('<p class= "content">').text(post.content).appendTo(cardDiv)
	$('<p class= "author">').text(post.author).appendTo(cardDiv); 
	$('<p class= "catergory">').text(post.catergory).appendTo(cardDiv); 
	deleteSpan.appendTo(cardDiv); 
	image.appendTo(imageDiv);
	imageDiv.appendTo(cardDiv); 
}

function displayPosts(post, num) {
	for (var i = post.length - 1; i >= 0; i--) {
		renderPost(post[i])
	};
}	

function createPost(){

	var newPost = { post: { 
		title: $('input[name= "title" ]').val(), 
		author: $('input[name= "author"]').val(), 
		image_url: $('input[name= "image_url"]').val(),
		content: $('input[name= "content"]').val(),
		category:  $('input[name= "category"]').val()
		}
	};

	$.post('/posts', newPost).done(renderPost(newPost)); 
}
function removePost() {
  var post = $(this).parent();
  var id = post.attr('data-id');
  console.log(id);
  post.remove();
  $.ajax("/posts/" + id, {type: "DELETE"});
};



