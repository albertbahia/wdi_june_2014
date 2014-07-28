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
  var section = $('<section>')
    .attr('id', 'middle-earth')
  for (var i = 0; i < lands.length; i++) {
    var article = $('<article>').appendTo(section);
    var header = $('<h1>')
      .text(lands[i])
      .appendTo(article);
  }
  section.appendTo($('body'));
}

function makeHobbits(hobbits) {
  var shire = $('article')[0];
  var hobbitList = $('<ul>').appendTo(shire);
  for (var i = 0; i < hobbits.length; i++) {
    var hobbit = $('<li>').text(hobbits[i]).appendTo(hobbitList);
    hobbit.addClass('hobbit');
  }
}

function keepItSecretKeepItSafe() {
  var ring = $('<div>').attr('id', 'the-ring').appendTo($('li')[0]);
}

function makeBaddies(baddies) {
  var mordor = $('article')[2];
  var baddiesList = $('<ul>').appendTo(mordor);
  for (var i = 0; i < baddies.length; i++) {
    var baddie = $('<li>').text(baddies[i]).appendTo(baddiesList);
    baddie.addClass('baddies');
  }
}

function makeBuddies(buddies) {
  var mordor = $('article')[2];
  var aside = $('<aside>').appendTo(mordor);
  var buddiesList = $('<ul>').appendTo(aside);
  for (var i = 0; i < buddies.length; i++) {
    var buddy = $('<li>').text(buddies[i]).appendTo(buddiesList);
    buddy.addClass('buddies');
  }
}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var rivendell = $('article').eq(1);
  var hobbitList = $('ul').eq(0);
  hobbitList.appendTo(rivendell);
}

function beautifulStranger() {
  var strider = $('.buddies').eq(3);
  strider.text('Aragorn');
}

function forgeTheFellowShip() {
  var rivendell = $('article').eq(1);
  var hobbitList = $('ul').eq(0);
  var buddyList = $('ul').eq(2);
  hobbitList.appendTo(rivendell);
  buddyList.appendTo(rivendell);
  var theFellowship = $('<div>').attr('id', 'the-fellowship').appendTo(rivendell);
  var fellowshipHeader = $('<h1>').text('The Fellowship').appendTo(theFellowship);

  for (var i = 0; i < hobbitList.length; i++) {
    alert(hobbitList[i].innerText + "has joined the fellowship!");
    hobbitList.eq(i).appendTo(theFellowship);
  };
  for (var i = 0; i < buddyList.length; i++) {
    alert(buddyList[i].innerText + "has joined the fellowship!");
    buddyList.eq(i).appendTo(theFellowship);
  };
}

function theBalrog() {
  var gandalf = $('.buddies').eq(0);
  gandalf.text('Gandalf the White');
  gandalf.css('background-color', 'white');
  gandalf.css('border-style', 'solid');
  gandalf.css('border-color', 'grey');
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}

function hornOfGondor() {
  alert("The Horn of Gondor has been Blown!");
  alert("Boromir's been killed by the Uruk-hai!");
  var boromir = $('.buddies').eq(4);
  boromir.css("text-decoration", "line-through");
  uruks = $('.baddies').eq(2);
  uruks.remove();
}

function itsDangerousToGoAlone(){
  var sam = $('.hobbit').eq(1);
  var frodo = $('.hobbit').eq(0);
  var mordor = $('article').eq(2);
  frodo.appendTo(mordor);
  sam.appendTo(mordor);
  mountDoom = $('<div>').attr('id', 'mount-doom').appendTo(mordor);

  // add a div with an id of 'mount-doom' to Mordor
}

function weWantsIt() {
  var mordor = $('article').eq(2);
  var gollum = $('<div>').attr('id', 'gollum').appendTo(mordor);
  $('div#the-ring').appendTo(gollum);
  gollum.appendTo('div#mount-doom');
}

function thereAndBackAgain() {
  $('div#the-ring').remove();
  $('div#gollum').remove();
  var hobbitList = $('ul').eq(0);
  var sam = $('.hobbit').eq(2);
  var frodo = $('.hobbit').eq(3);
  sam.appendTo(hobbitList);
  frodo.appendTo(hobbitList);
  var shire = $('article').eq(0);
  hobbitList.appendTo(shire);


  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}

makeMiddleEarth(lands);
makeHobbits(hobbits);
makeBaddies(baddies);
keepItSecretKeepItSafe();
makeBuddies(buddies);
beautifulStranger();
forgeTheFellowShip();
theBalrog();
hornOfGondor();
itsDangerousToGoAlone();
weWantsIt();
thereAndBackAgain();
