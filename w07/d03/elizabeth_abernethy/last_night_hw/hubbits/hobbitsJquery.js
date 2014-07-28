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



// ------------------------------ MCKENNETH's ANSWERS --------------------------



function makeMiddleEarth(lands) {
  var section = $("<section id='middle-earth'>");
  for (var i = 0; i < lands.length; i++) {
    var landArticleTag = $('<article>').append($('<h1>').text(lands[i]));
    section.append(landArticleTag);
  }
  $('body').append(section);
}

function makeHobbits(hobbits){
  var theShire = $('article').eq(0);
  var listOfHobbits = $('<ul>');
  for (var i = 0; i < hobbits.length; i++) {
    var hobbit = $('<li>').addclass('hobbit').text(hobbits[i]);
    listOfHobbits.append(hobbit);
  }
  theShire.append(listOfHobbits);
}

function keepItSecretKeepItSafe() {
  var frodo = $('.hobbit').eq(0).append($('<div>').attr('id', 'the-ring'));
}


function makeBaddies(baddies) {
  var baddieList = $('<ul>');
  for (var i = 0; i < baddies.length; i++) {
    var baddy = $('<li>').addClass('baddy').text(baddies[i]);
    baddieList.append(baddy);
  }
  var mordor = $('article').eq(2);
  mordor.append(baddieList);
}

function makeBuddies(buddies) {
  var buddieAside = $('<aside>');
  var buddieList = $('<ul>');
  for (var i = 0; i < buddies.length; i++) {
    var buddie = $('<li>').text(buddies[i]).addClass('buddy');
    buddieList.append(buddie);
  }
  buddieAside.append(buddieList);
  $('body').append(buddieAside);
}

function leaveTheShire() {
  var rivendell = $('article').eq(1);
  var rivendellList = $('<ul>');
  var hobbits = $('.hobbit').appendTo(rivendellList);
  rivendellList.appendTo(rivendell);
}
leaveTheShire();

function beautifulStranger() {
  var strider = $('.buddy').eq(3).text('Aragorn');
}

function forgeTheFellowShip() {
  var hobbits = $('.hobbit');
  var buddies = $('.buddy');
  var theFellowship = $('<div>').attr('id', 'the-fellowship').append('<h1>The Fellowship</h1>');
  var rivendell = $('article').eq(1);
  rivendell.append(hobbits).append(buddies);
  var hobbitBuddyList = $('<ul>');
  for (var i = 0; i < hobbits.length; i++) {
    hobbitBuddyList.append(hobbits[i]);
    alert(hobbits[i].innerText);
  }
  for (var i = 0; i < buddies.length; i++) {
    hobbitBuddylist.append(buddies[i]);
    alert(buddies[i].innerText);
  }
  theFellowship.append(hobbitBuddyList).appendTo(rivendell);
}

function theBalrog() {
  var gandalf = $('.buddy').eq(0).text('Gandalf the White');
  gandalf.css({'background':'whitesmoke', 'border':'2px solid grey'});
}

function hornOfGondor() {
  alert('The Horn of Gondor has been blown! Boromir\'s been killed by the Uruk-Hai!');
  $('.buddy').last().css('text-decoration', 'line-through');
  $('.baddy').eq(2).remove();
}

// :lt(2) => selects all hobbits with an index value < 2
// :gt(num) => selects all with index > num

// .eq(2) => select with an index of 2

function itsDangerousToGoAlone() {
  var hobbits = $('.hobbit:lt(2)');
  var mordor = $('article').eq(2);
  hobbits.appendTo(mordor);
  mordor.append($('<div>').attr('id', 'mount-doom'));
}

function weWantsIt() {
  var gollum = $('<div>').attr('id', 'gollum');
  var mordor = $('article').eq(2);
  mordor.append(gollum);
  $('#the-ring').appendTo(gollum);
  $('#mount-doom').append(gollum);
}

function thereAndBackAgain() {
  $('#gollum').remove();
  $('.baddy').remove();
  var theShire = $('article').first();
  theShire.append('<ul id="hubbits">');
  $('.hobbit').appendTo($('#hubbits'));
}
