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
    var middleEarth = $('<section>').attr('id', 'middle-earth');
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    for(var i = 0; i < lands.length; i++) {
      $('<article>').html(function() {
        return '<h1>' + lands[i] + '</h1>';
      }).appendTo(middleEarth);
    };
    // append the section to the body
    middleEarth.appendTo('body');
}

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  var hobbitList = $('<ul>').attr('id', 'hobbits');
  for(var i = 0; i < hobbits.length; i++) {
    $('<li>').html(hobbits[i]).addClass('hobbit').appendTo(hobbitList);
  }
  hobbitList.appendTo('body');
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  $('.hobbit').first().append('<div id=\"the-ring\">');

}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  // give each of the baddies a class of baddy
  var baddyList = $('<ul>').attr('id', 'baddies');
  for(var i = 0; i < baddies.length; i++) {
    $('<li>').html(baddies[i]).addClass('baddy').appendTo(baddyList);
  }
  baddyList.appendTo('body');
}

function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy
  $('<aside>').attr('id', 'buddies').appendTo('#middle-earth h1:last');

  var buddyList = $('<ul>');
  for (var i = 0; i < buddies.length; i++) {
    $('<li>').html(buddies[i]).addClass('buddy').appendTo(buddyList);
  }
  buddyList.appendTo('#buddies');

}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $('#hobbits').appendTo('#middle-earth article:nth-child(2) h1:first-child');
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $('#buddies li:nth-child(4)').text('Aragon');
}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $('#hobbits').appendTo('#middle-earth article:nth-child(2) h1:first-child');
  $('#buddies').appendTo('#middle-earth article:nth-child(2) h1:first-child');
  // create a new div called 'the-fellowship'
  var thefellowship = $('<div>').attr('id, the-fellowship');
  thefellowship.appendTo('body');

  // add an h1 with the text 'The Fellowship'
  $('<h1>').html('The Fellowship');
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}
