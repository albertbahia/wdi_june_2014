$(function(){
  console.log('Javascript is loaded >>');
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
    var section = $('<section>').attr('id', 'middle-earth').appendTo('body');
    for (var i = 0; i < lands.length; i++) {
      var landsArticle = $('<article>').appendTo('section');
        $('<h1>').appendTo(landsArticle).text(lands[i]);
    }
}

function makeHobbits(hobbits) {
  var shire = $('article').first();
  var hobbitsList = $('<ul>').appendTo(shire).attr('id', 'hobbitsList');
    for (var i = 0; i < hobbits.length; i ++) {
    $('<li>').appendTo(hobbitsList).addClass('hobbits').text(hobbits[i]);
  }
}

function keepItSecretKeepItSafe() {
  var secret = $('<div>').attr('id', 'the-ring').appendTo('.hobbits').first();
}

function makeBaddies(baddies) {
  var mordor = $('article').last();
  var baddiesList = $('<ul>').appendTo(mordor).attr('id', 'baddiesList');
    for (var i = 0; i < baddies.length; i ++) {
    $('<li>').appendTo(baddiesList).addClass('baddies').text(baddies[i]);
  }
}

function makeBuddies(buddies) {
  var buddiesAside = $('<aside>').appendTo('section')
  var buddiesList = $('<ul>').appendTo(buddiesAside).attr('id', 'buddiesList');
    for (var i = 0; i < buddies.length; i ++) {
      $('<li>').appendTo(buddiesList).addClass('buddy').text(buddies[i]);
    }
}

function leaveTheShire() {
  var hl = $('#hobbitsList')
  hl.remove();
  $(hl).appendTo($('article').eq(1));
}

function beautifulStranger() {
  var aragorn = $('.buddy').eq(3);
  $(aragorn).text('Aragorn');
}

function forgeTheFellowShip() {
  var bl = $('#buddiesList')
    $(bl).appendTo($('article').eq(1));
      var theFellowship = $('<div>').attr('id', 'the-fellowship').appendTo('article').eq(1);
        $('<h1>').appendTo(theFellowship).text('The Fellowship');
  // after each character is added make an alert that they have joined your party
}

function theBalrog() {
  var gandalf = $('.buddy').eq(0).text('Gandalf the White');
  gandalf.css({'background':'whitesmoke', 'border':'2px solid grey', 'color':'#B3B3B3'});
}

function hornOfGondor() {
  alert('The Horn of Gondor has been blown! Boromir\'s been killed by the Uruk-Hai!')
  $('.buddy').last().css('text-decoration', 'line-through');
  $('.baddies').eq(2).remove();
}

function itsDangerousToGoAlone(){
  var hobbits = $('.hobbits:lt(2)');
  var mordor = $('article').eq(2);
  hobbits.appendTo(mordor);
  mordor.append($('<div>').attr('id', 'mount-doom'));
}

function weWantsIt() {
  var gollum = $('<div>').attr('id', 'gollum').text('Gollum');
  var mordor = $('article').eq(2);
  mordor.append(gollum);
  $('#the-ring').appendTo(gollum);
  $('#mount-doom').append(gollum);
}

function thereAndBackAgain() {
  $('#gollum').remove();
  $('#baddiesList').remove();
  var theShire = $('article').first();
  theShire.append('<ul id="hubbits">');
  $('.hobbitslist').appendTo($('#hubbits'));
}
