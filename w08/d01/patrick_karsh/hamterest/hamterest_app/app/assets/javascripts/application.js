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
	$('#posts-container').on('click', 'span.remove', removePost);
	$('#new-post').on('click',addPost)
}); 

function fetchPosts() {
	$.ajax({ 
		url: 'post',
		type: 'GET', 
		datatype: 'json'	
	})
	.done(displayPosts); 
}

function displayPosts(data) {
	var postContainer = $('#posts-container');
	if (data) { 
		for (var i = post.length - 1; i >= 0; i--) {
			renderPost(post[i]); 
		}
	} else { 
		alert('No more results!'); 
	}
}	

function renderPost(data) {
	var postContainer = $('#posts-container'); 
	var card = $('<div>').addClass('card').append('<span class="remove">X</span>'); 
	var title = $('<h4>').addClass('title'); 
	var author = $('<span>'); 
	var image = $('<img>').appendTo($('<div>').addClass('image'));
	var content = $('<p>').addClass('content'); 
	var category = $('<a>').attr('href', '#').addClass('category'); 

	title.text(data.title); 
	author.text(data.author); 
	image.attr('src', data.image_url); 
	content.text(data.content); 
	category.text('#' + data.category); 

	card.attr('id', data.id)
	.append(title)
	.append(author)
	.append(image.parent())
	.append(content)
	.append(category); 
	postContainer.append(card); 
}

function addPost(){
	var title = $('input[name="title"]'); 
	var author = $('input[name="author"]'); 
	var image_url = $('input[name="image_url"]'); 
	var content = $('input[name="content"]'); 
	var category = $('input[name="category"]'); 

	var postParams = { 
		post: { 
			title: title.val(),
			author: author.val(), 
			image_url: image_url.val(), 
			content: content.val(), 
			category: category.val()
		}
	}
	$.ajax({
		url: '/posts', 
		type: 'POST', 
		data: postParams
	})
	.done(renderPost)
	.done(function(){
		title.val(''); 
		author.val(''):
		image_url.val(''); 
		content.val(''); 
		catergory.val(''); 
	})
	.fail(function(){
		alert('There has been an error!'); 
	})
}

function removePost() {
	var cardID = this.parentNode.id; 
	var thisCard = $('#' + cardID);
	$.ajax({
		url: 'post/' + cardID, 
		type: 'DELETE'
	})
	.done(function() {
		thisCard.remove(); 
	})
	.fail(function() {
		alert('An error has occured')
	}); 
}

function fetchOne() {
	var offset = 21; 
	$(window).on('scroll', function(){ 
		if ($(window).scrollTop() = $(window).height() > $(document).height() -350){
			$.ajax({
				type: 'GET', 
				datatype: 'json', 
				url: '/fetch_one', 
				data: {offset: offset}
			})
			.done(function(data) {
				renderPost(data); 
				offset += 1; 
			}).fail(function(){
				offset += 1; 
			}); 
		}
	}); 
}



