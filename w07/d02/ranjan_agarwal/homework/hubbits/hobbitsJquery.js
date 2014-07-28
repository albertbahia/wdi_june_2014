$(function(){
  console.log('Loaded, bro.');
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
  makeBaddies(baddies);
  makeBuddies(buddies);
  leaveTheShire();
  beautifulStranger();
  forgeTheFellowShip();
  theBalrog();
  hornOfGondor();
  itsDangerousToGoAlone();
  weWantsIt();
  thereAndBackAgain();
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


function makeMiddleEarth(lands) {
    var section = $('<section>').attr('id','middle-earth').appendTo('body');
    for (i = 0; i < lands.length; i++) {
      var landsArticle = $('<article>').appendTo(section);
      $('<h1>').appendTo(landsArticle).text(lands[i]);
    }
}

function makeHobbits(hobbits) {
  var shire = $('article').first();
  var hobbitsList = $('<ul>').attr('id', 'hobbits-list').appendTo(shire);
  for (i= 0; i < hobbits.length; i++) {
    $('<li>').addClass('hobbit').appendTo(hobbitsList).text(hobbits[i]);
  }
}


function keepItSecretKeepItSafe() {
  var secret = $('<div>').attr('id','the-ring').text('The Ring').appendTo("li:contains('Frodo')").first();
}

function makeBaddies(baddies) {
  var mordor = $('article').last();
  var baddiesList = $('<ul>').attr('id', 'baddies-list').appendTo(mordor);
  for (i= 0; i < baddies.length; i++) {
    $('<li>').addClass('baddies').appendTo(baddiesList).text(baddies[i]);
  }
}

function makeBuddies(buddies) {
  var buddiesAside = $('<aside>').appendTo('#middle-earth');
  var buddiesList = $('<ul>').attr('id','buddies-list').appendTo(buddiesAside);
  for (i = 0; i< buddies.length; i++) {
    $('<li>').addClass('buddy').appendTo(buddiesList).text(buddies[i]);
  }
}

function leaveTheShire() {
  var hl = $('#hobbits-list');
  hl.remove();
  $(hl).appendTo($('article').eq(1));
}

function beautifulStranger() {
  var aragorn = $('.buddy').eq(3);
  $(aragorn).text('Aragorn');
}

function forgeTheFellowShip() {
  var bl = $('#buddies-list');
  bl.remove();
  $(bl).appendTo($('article').eq(1));
  var fellowship = $('<div>').attr('id','the-fellowship').appendTo('article').eq(1);
  $('<h1>').appendTo(fellowship).text('The Fellowship');
  $('.buddy').each(function() {
    // alert($(this,'.buddy').text() + 'has joined');
    $('.buddy').appendTo(fellowship);
  });
  $('.hobbit').each(function() {
    // alert($(this, '.hobbit').text() + 'has joined');
    $('.hobbit').appendTo(fellowship);
  });
}

function theBalrog() {
  $('.buddy').first().text('Gandalf the White');
  $('.buddy').first().css('color', '#59BDFB');
  $('.buddy').first().css('background', '#FFFFFF');
  $('.buddy').first().css('border', '2px solid #B3B3B3');
}

function hornOfGondor() {
  // alert('The Horn of Gondor has been blown!!!')
  $('.buddy').last().css('text-decoration', 'line-through');
  $('.baddies').eq(2).remove();
}

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  $("li:contains('Frodo')").remove();
  $("li:contains('Sam')").remove();
  $("li:contains('Frodo')").appendTo('#middle-earth article').last();
  $("li:contains('Sam')").appendTo('#middle-earth article').last();

  // add a div with an id of 'mount-doom' to Mordor
  $('<div>').attr('id','mount-doom').text('mount doom').appendTo('#middle-earth article').last();
}

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  $('<div>').attr('id','gollum').appendTo('article').last();
  // Remove the ring from Frodo and give it to Gollum
  $('#the-ring').appendTo('#gollum');
  // Move Gollum into Mount Doom
  $('#gollum').appendTo('#mount-doom');
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $('#gollum').remove();
  $('#baddies-list').remove();

  $('.hobbit').appendTo('#hobbits-list');
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
