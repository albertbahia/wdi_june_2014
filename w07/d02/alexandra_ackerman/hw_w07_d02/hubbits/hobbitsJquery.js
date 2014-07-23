$(function(){
  console.log('Loaded, bro.');
});

var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

var baddies = [
  "Sauron",
  "Saruman", 
  "The Uruk-hai", 
  "Orcs"
];

var lands = ["The Shire", "Rivendell", "Mordor"];

var makeMiddleEarth = function(array) {
  var middleEarth = $('<section>')
    .attr('id', 'middle-earth')
    .appendTo($('body'));

  for (var i = 0; i < array.length; i++) {
    $('<article>')
      .appendTo(middleEarth)
      .attr('id', 'land-' + i)
      .html('<h1>' + lands[i] + '</h1>');
  }
};

var makeHobbits = function(array) {
  var hobbits = $('<ul>').attr('id', 'hobbits').appendTo($('section'));
  for (var i = 0; i < array.length; i++) {
    $('<li>')
      .attr('id', 'hobbit-' + i)
      .appendTo(hobbits)
      .text(array[i]);
  }
  hobbits.appendTo('#land-0');
};

var keepItSecretSafe = function() {
  $('<div>').appendTo('#hobbit-0').attr('id', 'the-ring');
};

var makeBaddies = function(array){
  var baddies = $('<ul>').attr('id', 'mordor').appendTo($('#land-2'));
  for (var i = 0; i < array.length; i++) {
    $('<li>')
      .addClass('baddy')
      .attr('id', 'baddy-' + i)
      .text(array[i])
      .appendTo(baddies);
  }
};

var makeBuddies = function(array) {
  var aside = $('<aside>').attr('id', 'buddies').appendTo($('section'));
  var buddies = $('<ul>').appendTo($(aside));
  for (var i = 0; i < array.length; i++) {
    $('<li>')
      .addClass('buddy')
      .attr('id', 'buddy-' + i)
      .text(array[i])
      .appendTo(buddies);
  }
};


var leaveTheShire = function() {
  var hobbitsToLeave = $('#hobbits');
  $(hobbitsToLeave).appendTo('#land-1');
};

var beautifulStranger = function() {
  var beautifulStranger = $('#buddy-3');
  beautifulStranger.text('Aragorn');
};

var theBalrog = function(){
  var gandalf = $('#buddy-0');
  gandalf.text('Gandalf the White').addClass('white');
};

var forgeTheFellowship = function(){
  var hobbitsToMove = $('#hobbits');
  var buddiesToMove = $('#buddies');
  $(hobbitsToMove).appendTo('#land-1');
  $(buddiesToMove).appendTo('#land-1');
};

var honorOfGondor = function() {
  window.alert('The horn of gondor has been blown!');
  var boromir = $('#buddy-4');
  var urukhai = $('#baddy-2');
  boromir.addClass('dead');
  urukhai.remove();
};

var itsDangerousToGoAlone = function(){
  var frodo = $('#hobbit-0');
  var sam = $('#hobbit-1')
  frodo.appendTo('#mordor');
  sam.appendTo('#mordor');
  $('<div>').attr('id', 'mount-doom').appendTo('#land-2');
};

var weWantsIt = function(){
 var gollum = $('<div>').attr('id', 'gollum')
 gollum.appendTo('#land-2');
 var ring = $('#the-ring');
 ring.appendTo('#gollum');
 gollum.appendTo('#mount-doom');
};

var thereAndBackAgain = function() {
  var gollum = $('#gollum');
  gollum.remove();
  var baddies = $('.baddy');
  baddies.remove();
  var hobbitsToShire = $('#hobbits');
  hobbitsToShire.appendTo('#land-0');
};