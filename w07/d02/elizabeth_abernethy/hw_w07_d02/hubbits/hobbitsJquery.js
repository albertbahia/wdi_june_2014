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


var makeMiddleEarth = function(lands) {
  var middleEarth = $('<section>').appendTo($('body'));
  for (var i = 0; i < lands.length; i++) {
    $('<article>')
      .appendTo(middleEarth)
      .attr('id', 'land-' + i)
      .html('<h1>' + lands[i] + '</h1>');
  }
};

var makeHobbits = function(array) {
  var hobbits = $('<ul>').appendTo($('body')).attr('class', 'hobbits-list');
  for (var i = 0; i < array.length; i++) {
    $('<li>')
      .attr('class', 'hobbit-' + i)
      .appendTo(hobbits)
      .text(array[i]);
  }
  hobbits.appendTo('#land-0');
};

var keepItSecretKeepItSafe = function() {
  $('<div>').appendTo('#hobbit-0').attr('id', 'the-ring');
};

var makeBaddies = function(array) {
  var baddies = $('<ul>').appendTo($('body')).attr('class', 'baddies-list');
  for (var i = 0; i < array.length; i++) {
    $('<li>')
      .attr('class', 'baddie-' + i)
      .appendTo(baddies)
      .text(array[i]);
  }
  baddies.appendTo('#land-2');
};

var makeBuddies = function(array) {
  var buddies = $('<aside>').appendTo($('body'));
  for (var i = 0; i < array.length; i++) {
    $('<li>')
      .attr('class', 'buddy-' + i)
      .appendTo(buddies)
      .text(array[i]);
  }
  buddies.appendTo('body');
};

var leaveTheShire = function() {
  var hobbits = $('.hobbits-list');
  hobbits.appendTo('#land-1');
};

var beautifulStranger = function() {
  var strider = $('.buddy-3');
  strider.text('Aragorn');
};



var forgeTheFellowShip = function() {
  // WORKING
  var hobbits = $('.hobbits-list')
    .appendTo('#land-1');
  var buddies = $('aside')
    .appendTo('#land-1');
  var theFellowship = $('<the-fellowship>')
    .appendTo($('#land-1'));
  var fellowshipHeader = $('<h1>')
    .text('The Fellowship')
    .appendTo(theFellowship);

  // NOT WORKING... well
  var frodo = $('.hobbit-0')
    .appendTo(theFellowship)
    alert("Frodo has been added to your party.");

  var sam = $('.hobbit-1')
    .appendTo(theFellowship)
    alert("Legolas has been added to your party.");

  var merry = $('.hobbit-2')
    .appendTo(theFellowship)
    alert("Merry has been added to your party.");

  var pippin = $('.hobbit-3')
    .appendTo(theFellowship)
    alert("Pippin has been added to your party.");

  var gandalf = $('.buddy-0')
    .appendTo(theFellowship)
    alert("Gandalf has been added to your party.");

  var legolas = $('.buddy-1')
    .appendTo(theFellowship)
    alert("Gimli has been added to your party.");

  var gimli = $('.buddy-2')
    .appendTo(theFellowship)
    alert("Aragorn has been added to your party.");

  var aragorn = $('.buddy-3')
    .appendTo(theFellowship)
    alert("Boromir has been added to your party.");

  var boromir = $('.buddy-4')
    .appendTo(theFellowship)
    alert("Boromir has been added to your party.");
};


var theBalrog = function() {
  var gandalf = $('.buddy-0')
    .text('Gandalf the White')
    .css('background-color', 'white')
    .css('border', '1px solid gray');
};

var hornOfGondor = function() {
  alert('The horn of Gondor has been blown!');
  var boromir = $('.buddy-4')
    .css('text-decoration', 'line-through');
  var urukHai = $('.baddie-2')
    .remove(urukHai);
};

var itsDangerousToGoAlone = function() {
  var frodo = $('.hobbit-0')
    .appendTo('#land-2');
  var sam = $('.hobbit-1')
    .appendTo('#land-2');
  $('<div>').appendTo('#land-2').attr('id', 'mount-doom');
};

var weWantsIt = function() {
  $('<div>').appendTo('#land-2').attr('id', 'gollum');
  var theRing = $('#the-ring')
    .appendTo('#gollum');
  var gollum = $('#gollum')
    .appendTo('#mount-doom');
};

var thereAndBackAgain() {
  var theRing = $('#the-ring')
    .remove(theRing);
  var gollum = $('#gollum')
    .remove(gollum);
  var baddies = $('.baddies-list')
    .empty(baddies);
  var frodo = $('.hobbit-0')
    .appendTo('#land-0');
  var sam = $('.hobbit-1')
    .appendTo('#land-0');
  var merry = $('.hobbit-2')
    .appendTo('#land-0');
  var pippin = $('.hobbit-3')
    .appendTo('#land-0');
};
