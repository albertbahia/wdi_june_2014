$(function() {
  console.log('JS loaded.');
});

// Dramatis Personae

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

var lands = [
  "The Shire", 
  "Rivendell", 
  "Mordor"
];

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
    $('<section>').addClass("middle-earth"); 

    for (var i = lands.length - 1; i >= 0; i--) {
      $('<article>').add('<h1>').text(lands[i]).appendTo('#body'); 
    };
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append the section to the body      
}

console.log(makeMiddleEarth(lands));

function makeHobbits(hobbits) {

  // display an unordered list of hobbits in the shire
  for (var i = hobbits.length - 1; i >= 0; i--) {
    $('<ul>')
      .addClass('hobbit').text(hobbits[i]).appendTo(lands[0]);
  };
  // give each hobbit a class of hobbit
}

function keepItSecretKeepItSafe() {
  $('<div>').addClass('the-ring'); 
  ('the-ring').prependTo(hobbits[0]); 
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
    for (var i = baddies.length - 1; i >= 0; i--) {
    $('<ul>')
      .addClass('baddie').text(baddies[i]).appendTo(lands[2]);
  };
  // give each of the baddies a class of baddy
}
function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  $('<aside>').appendTo(lands[2]);
    
    for (var i = buddie.length - 1; i >= 0; i--) {
      $('<ul>').addClass('buddy').text(buddie[i])
    };
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy
}

function leaveTheShire() {
  $(lands[0]).empty();
  for (var i = hobbits.length - 1; i >= 0; i--) {
    (hobbits[i]).appendTo(lands[1]);
  };
  // assemble the hobbits and move them to Rivendell
}
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $(buddy[3]).text('Aragorn'); 
}
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $(lands[1]).empty();
  $(lands[2]).empty();
  // create a new div called 'the-fellowship'
  $('<div>').addClass('the-fellowship').html("<h1>The Fellowship</h1>"); 
  // add an h1 with the text 'The Fellowship'

  // add each hobbit and buddy one at a time to 'the-fellowship'
  for (var i = hobbits.length - 1; i >= 0; i--) {
    (hobbits[i]).appendTo(div.the-fellowship);
  };  
  for (var i = buddies.length - 1; i >= 0; i--) {
    (buddies[i]).appendTo(div.the-fellowship);
  };
  
  // after each character is added make an alert that they have joined your party
}


