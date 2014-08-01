$(function() {
  console.log('Loaded, bro');
  var body = $("body");
});



function addImages(imageUrl, imgClass){
	$('<img src='+ imageUrl+'>').addClass(imgClass).appendTo('body'); 
}

