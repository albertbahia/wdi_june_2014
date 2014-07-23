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
    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append the section to the body
  var body = $('body');
  var section = $('<section>').attr('id', 'middle-earth').appendTo(body);
  for (var i = 0; i < lands.length; i++) {
    $('<article>').html('<h1>' + lands[i] + '</h1>').appendTo(section);
  }
};


function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  var theShire = $("article:contains('The Shire')");
  var hobbitList = $('<ul>').attr('id', 'hobbits').appendTo(theShire);
  for (var i = 0; i < hobbits.length; i++) {
    var hobbit = $('<li>').addClass('hobbit').text(hobbits[i]);
    hobbit.appendTo(hobbitList)
  };
};

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var theRing = $('<div>').attr('id', 'the-ring');
  var frodo = $("ul li:contains('Frodo')");
  frodo.append(theRing);
};

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  // give each of the baddies a class of baddy
  var body = $('body');
  var baddieList = $('<ul>').attr('id', 'baddies').appendTo(body);
  for (var i = 0; i < baddies.length; i++) {
    var baddie = $('<li>').addClass('baddy').text(baddies[i]);
    baddie.appendTo(baddieList)
  };
};

function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy
  var mordor = $("article:contains('Mordor')");
  var mordorAside = $('<aside>').appendTo(mordor);
  var buddiesList = $('<ul>').attr('id', 'buddies').appendTo(mordorAside);

  for (var i = 0; i < buddies.length; i++) {
    var buddy = $('<li>').addClass('buddy').text(buddies[i]);
    buddy.appendTo(buddiesList);
  };
};

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var hobbits = $('#hobbits');
  var rivendell = $("article:contains('Rivendell')");
  hobbits.appendTo(rivendell);
};

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var strider = $("ul li:contains('Strider')");
  strider.text('Aragorn');
};

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add an h1 with the text 'The Fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  var body = $('body');
  $('.buddies').appendTo('section article:nth-child(2)');
  $('.hobbits').appendTo('section article:nth-child(2)');
  var fellowship = $('<div>').html('<h1>The Fellowship</h1>').addClass('the-fellowship').appendTo(body)

    $('.buddy').each(function(){
      $('.buddy').appendTo(fellowship);
      alert($(this, '.buddy').text() + "has joined the fellowship.")
    });

    $('.hobbit').each(function(){
      $('.hobbit').appendTo(fellowship);
      alert($(this, '.hobbit').text() + "has joined the fellowship.")
    });
};

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  $("li:contains('Gandalf')").text('Gandalf the White').css({'border': 'solid 1px #ccc', 'background-color': '#fff', 'display': 'inline-block'});
};

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  alert("The horn of gondor has been blown.");
  $("li:contains('Boromir')").css('text-decoration', 'line-through');
  $("li:contains('Uruk-hai')").remove();
};

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  $("li:contains('Frodo')").appendTo('section article:last-child');
  $("li:contains('Samwise')").appendTo('section article:last-child');
  $('<div>').attr('id', 'mount-doom').appendTo("section:contains('Mordor')");
};

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
  $('<div>').text('gollum').attr('id', 'gollum').appendTo('section article:last-child');
  $('#the-ring').remove().appendTo('#gollum');
  $('<article>').text('Mount Doom').addClass('mount_doom').appendTo('section');
  $('#gollum').appendTo('.mount_doom');
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
  $('#gollum').remove();
  $('#the-ring').remove();
  $('.baddies').remove();
  $('.hobbit').appendTo('section article:first-child');
}
