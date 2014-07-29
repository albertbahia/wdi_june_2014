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


$( function () {
	console.log ('Loaded !!!');

	fetchPosts();
	$('#new-post').click(addPost);
	$('body').on('click', '.remove', removePost);
	$('#footer').click(showMore);
})

function fetchPosts() {
	$.get('/posts', {limit: 10, order: 'desc'})
		.done(displayPosts)
		.fail(function(data) { console.log(data) });
}

function displayPosts (posts){
	posts.forEach( function (post) {
		renderPost(post);
	})
};

function renderPost(post) {
	var postContainer = $('#posts-container');
	var postDiv = $('<div class="card" data-id ="' + post.id + '">');
	var title = $('<h4 class="title">').text(post.title);
	var author = $('<span>').text(post.author);
	var image = $('<div class="image">');
	var img = $('<img src="' + post.image_url + '">');
	var content = $('<p.content>').text(post.content);
	var category = $('<div class="category">').text(post.category);
	var deleteButton = $('<span class="remove">Delete</span>');

	postContainer.append(postDiv.append(title).append(author)
		.append(image.append(img)).append(content)
		.append(category).append(deleteButton));
}

function addPost() {
	var newPostTitle = $( "input[name='title']" ).val();
	var newPostAuthor = $( "input[name='author']" ).val();
	var newPostImageUrl = $( "input[name='image_url']" ).val();
	var newPostContent = $( "input[name='content']" ).val();
	var newPostCategory = $( "input[name='category']" ).val();

	$.post("/posts", {post: {
		title: newPostTitle,
		author: newPostAuthor,
		image_url: newPostImageUrl,
		content: newPostContent,
		category: newPostCategory
	}}).done(renderPost);
}

function removePost() {
	console.log(this)
	var id = $(this).parent().data('id');
	$(this).parent().remove();
	$.ajax({ url: "posts/" + id, type: "DELETE"});
}

function showMore() {
	var offset = 10;
	$.get('/posts', {limit: 10 + offset, order: 'desc'})
		.done(displayPosts)
		.fail(function(data) { console.log(data) });
}
// ###### showMore
// - Add a button that when clicked will fetch 10 more results from the database
// - The new results should be displayed onscreen below any previous results. 
// - There should be no duplicate results displayed, and all results should be sequential
//   - i.e. If the first 10 results are displayed onload, then the next 10 should be 11-20 in the database

// ###### showMore Part Deux!
// - make it so that when a user scrolls, new entries are automatically fetched and displayed onscreen
