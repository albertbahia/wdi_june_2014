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
    // create a section tag with an id of middle-earth & append the section to the body
    var landsSection = $('<section>').attr('id', 'middle-earth')
    $('body').append(landsSection);
    // add each land as an article tag
    for (var landIndex = 0; landIndex < lands.length; landIndex++) {
      var landTag = lands[landIndex].replace(/\s+/g, '-').toLowerCase();
      var landArticle = $('<article>');
      landArticle.attr('id', landTag).appendTo($(landsSection));
      // inside each article tag include an h1 with the name of the land
      $('<h1>')
        .text(lands[landIndex])
        .appendTo(landArticle);
    }  
}

function makeHobbits(hobbits) {
  var hobbitUL = $('<ul>').appendTo($('#the-shire'));
  // display an unordered list of hobbits in the shire
  for (hobbitIndex in hobbits) {
    $('<li>')
      .text(hobbits[hobbitIndex])
      // give each hobbit a class of hobbit
      .addClass('hobbit')
      .appendTo(hobbitUL);
  }
}


function keepItSecretKeepItSafe() {
  var ringDiv = $('<div>')
    .text('The One Ring')
    .attr('id', 'the-ring')
    .appendTo($('.hobbit').eq(0));
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}

function makeBaddies(baddies) {
  var baddiesUL = $('<ul>').appendTo($('#mordor'));
  for (baddyIndex in baddies) {
    $('<li>')
      .text(baddies[baddyIndex])
      .addClass('baddy')
      .appendTo(baddiesUL);
  }
  // display an unordered list of baddies in Mordor
  // give each of the baddies a class of baddy
}


function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  var buddiesAside = $('<aside>').appendTo($('#mordor'));
  var buddiesUL = $('<ul>').appendTo(buddiesAside);
  for (buddyIndex in buddies) {
    $('<li>')
      .text(buddies[buddyIndex])
      .addClass('buddy')
      .appendTo(buddiesUL);
  }
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy
}

function leaveTheShire() {
  $('.hobbit').appendTo($('#rivendell'));
  // assemble the hobbits and move them to Rivendell
}


function beautifulStranger() {
  var strangerAtTheInn = $('.buddy').eq(3);
  strangerAtTheInn.text('Aragorn');
  // change the buddy 'Strider' textnode to "Aragorn"
}


function forgeTheFellowShip() {
  var hobbits = $('.hobbit');
  var buddies =  $('.buddy');
  var fellowshipDiv = $('<div>').attr('id', 'the-fellowship').append('<h1>The Fellowship</h1>');
  fellowshipDiv.appendTo($('#rivendell'))
  var hobbitBuddyList = $('<ul>');
  hobbitBuddyList.appendTo(fellowshipDiv);
  for (var i = 0; i < hobbits.length; i++) {
    hobbitBuddyList.append(hobbits[i]);
    alert(hobbits[i].innerText);
  };
  for (var x = 0; x < buddies.length; x++) {
    hobbitBuddyList.append(buddies[x]);
    alert(buddies[x].innerText);
  } 
}

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  var gandalf = $('.buddy').eq(0);
  gandalf.text('Gandalf the White');
  // apply style to the element
  gandalf.css({'background':'whitesmoke', 'border':'2px solid grey'});
  // make the background 'white', add a grey border
}

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  var duo = $('.hobbit:lt(2)');
  var mordor = $('<div>').attr('id', 'mount-doom').appendTo($('#mordor'))
  duo.appendTo($('#mount-doom'));
  // add a div with an id of 'mount-doom' to Mordor
}


function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  var gollum = $('<div>').attr('id', 'gollum').appendTo($('#mordor'));
  // Remove the ring from Frodo and give it to Gollum
  $('#the-ring').appendTo($('#gollum'))
  // Move Gollum into Mount Doom
  $('#gollum').appendTo($('#mount-doom'))
}



function thereAndBackAgain() {
  // Move all the hobbits back to the shire
  $('.hobbit').appendTo($('#the-shire'));
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  $('#gollum').remove();
  $('.baddy').remove();
}














// scroll