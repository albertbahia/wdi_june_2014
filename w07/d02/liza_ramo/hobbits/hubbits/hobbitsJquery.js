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

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
    // append the section to the body
    var middleEarth = $('<section>').attr('id', 'middle-earth').appendTo('body');

    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    for (var i = 0; i < lands.length; i++) {
      var middleEarthLands = $('<article>').appendTo(middleEarth);
      var landsNames = $('<h1>').text(lands[i]).appendTo(middleEarthLands);
    }
}
// makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var shire = $('article')[0];
  var shireHobbits = $('<ul>').appendTo(shire).attr('id', 'hobbits-list');
  for (var i = 0; i < hobbits.length; i++) {
  // give each hobbit a class of hobbit
    var hobbit = $('<li>').text(hobbits[i]).appendTo(shireHobbits).addClass('hobbit');
  }
}
// makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var frodo = $('li')[0];
  var theRing = $('<div>').attr('id', 'the-ring').appendTo(frodo);
}
// keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  var mordor = $('article')[2];
  var baddieList = $('<ul>').appendTo(mordor).addClass('baddyList');
  for (var i = 0; i < baddies.length; i++) {
    var baddiesGuys = $('<li>').text(baddies[i]).appendTo(baddieList).addClass('baddy');
  }
}
// makeBaddies(baddies);

function makeBuddies(buddies) {
  var mordor = $('article')[2];
  var aside = $('<aside>').appendTo(mordor);
  var buddyUl = $('<ul>').appendTo(aside).addClass('buddyList');
  for (var i = 0; i < buddies.length; i++) {
    buddyList = $('<li>').text(buddies[i]).appendTo(buddyUl).addClass('buddy');
  }
}
// makeBuddies(buddies);

function leaveTheShire() {
  var rivendell = $('article').eq(1);
  var hobbitsList = $('ul').eq(0).appendTo(rivendell);
}
// leaveTheShire();

function beautifulStranger() {
  var strider = $('.buddy').eq(3);
  strider.text('Aragorn');
}
// beautifulStranger();

function forgeTheFellowship() {
  var rivendell = $('article').eq(1);
  var theFellowship = $('<div>').attr('id', 'the-fellowship').appendTo(rivendell);
  var fellowship = $('<h1>').text('The Fellowship').appendTo(theFellowship);

  $('.hobbit').empty();
  $('.buddy').empty();

  for (var i = 0; i < hobbits.length; i++) {
    $('<li>').text(hobbits[i]).appendTo(theFellowship);
    alert(hobbits[i] + " is joining the party");
  }

  for (var i = 0; i < buddies.length; i++) {
    $('<li>').text(buddies[i]).appendTo(theFellowship);
    alert(buddies[i] + " is joining the party");
  }
}
// forgeTheFellowship();

function theBalrog() {
  var gandalf = $('.buddy').eq(0);
  gandalf.text('Gandalf the White').css('background-color', 'white').css('border', '5px solid gray');
}
// theBalrog();

function hornOfGondor() {
  alert("The horn of Gondor has been blown.");
  alert("Boromir is dead, killed by the Uruk-hai");

  var boromir = $('.buddy').eq(4);
  boromir.css('text-decoration', 'line-through');

  var urukhai = $('.baddy').eq(2);
  urukhai.remove();
}
// hornOfGondor();

function itsDangerousToGoAlone() {
  var mordor = $('article')[2];
  var frodo = $('.hobbit').eq(0);
  var sam = $('.hobbit').eq(1);
  var mountDoom = $('<div>').appendTo(mordor);

  frodo.appendTo(mountDoom);
  sam.appendTo(mountDoom);
}
// itsDangerousToGoAlone();

function weWantsIt() {
  var mordor = $('article')[2];
  var gollum = $('<div>').attr('id', 'gollum').appendTo(mordor);
  var mountDoom = $('<div>').appendTo(mordor);
  var theRing = $('<div>').attr('id', 'the-ring').appendTo(gollum);
  gollum.appendTo(mountDoom);
}
// weWantsIt();

function thereAndBackAgain() {

}
// thereAndBackAgain();














//
