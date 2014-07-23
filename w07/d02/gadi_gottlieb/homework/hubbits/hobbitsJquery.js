$(function(){
  console.log('Loaded, bro.');
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
  makeBaddies(baddies);
  makeBuddies(buddies);
  leaveTheShire();
  beautifulStranger();
  // forgeTheFellowShip();
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

// ##1
function makeMiddleEarth(lands) {
  // create a section tag with an id of middle-earth
  var section = $('<section>').attr('id', 'middle-earth')
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append the section to the body

    for (var i = 0; i < lands.length; i++) {
      var landText = lands[i]
      var article = $('<article>').appendTo(section)
      $('<h1>').text(landText).appendTo(article);
    }
    section.appendTo('body')
}

makeMiddleEarth(lands);


// ## 2

function makeHobbits(hobbits) {

  var shire = $('article').eq(0)

  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  var list = $('<ul>').addClass('hobbit')
  for (var i = 0; i < hobbits.length; i++) {
    var items = hobbits[i]
    $('<li>').addClass('hobbit-list-item').text(items).appendTo(list);
  }
    list.appendTo(shire);
}

// ## 3

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var frodo = $('li')[0]
  $('<div>').attr('id', 'the-ring').appendTo(frodo);
}


// ## 4

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  // give each of the baddies a class of baddy
  var mordor = $('article')[2]

  var list = $('<ul>').addClass('baddies')
  for (var i = 0; i < baddies.length; i++) {
    var baddy = baddies[i];
    $('<li>').addClass('baddy').text(baddy).appendTo(list);
  }
  list.appendTo(mordor);
}


// ## 5

function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy

  var mordor = $('article').eq(2)
  var aside = $('<aside>')
  var list = $('<ul>').addClass('buddy')
    for (var i = 0; i < buddies.length; i++) {
      var buddy = buddies[i];
      $('<li>').addClass('buddy-list-item').text(buddy).appendTo(list);
    }
  list.appendTo(aside)
  aside.appendTo(mordor)

}


// ## 6

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var movingHobbits = $('.hobbit').remove();
  var rivendell = $('article').eq(1)
  movingHobbits.appendTo(rivendell)
}

// ## 7

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var striderToAragorn = $('.buddy').eq(3);
  striderToAragorn.text("Aragorn")
  }

// ## 8


// function forgeTheFellowShip() {
//   // move the hobbits and the buddies to Rivendell
//   // create a new div called 'the-fellowship'
//   // add an h1 with the text 'The Fellowship'
//   // add each hobbit and buddy one at a time to 'the-fellowship'
//   // after each character is added make an alert that they have joined your party
//
//   // var movingHobbits = $('.hobbit').remove();
//   var rivendell = $('article').eq(1);
//   var hobbits = $('.hobbit-list-item');
//   var buddies = $('.buddy-list-item');
//   var fellowship = $('<h1>').addClass.text('The Fellowship').appendTo(rivendell);
//   var unorderedList = $('<ul>').addClass('list-fellowship').appendTo(rivendell);
//
//   var divFellowship = $('<div>').attr('id', 'the-fellowship').appendTo(fellowship)
//
//   hobbits.appendTo(unorderedList)
//   buddies.appendTo(unorderedList)
//
//   for (var i = 0; i < unorderedList.length; i++) {
//     unorderedList.eq(i).appendTo(fellowship);
//     alert(unorderedList.eq(i) + " has been added")
//   }
// }

// ## 9


function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  var gandalfGrey = $('.buddy-list-item').eq(0);
  var gandalfWhite = gandalfGrey.text('Gandalf the White').css('background-color','white').css('border-color', 'grey');
}

// ## 10

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  alert("The Horn of Gondor has been blown!")
  var urukHai = $('.baddy').eq(2).remove();
  var boromir = $('.buddy-list-item').eq(4);
  boromir.wrap('<strike>');
}


// ## 11

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  var frodo = $('.hobbit-list-item').eq(0)
  var sam = $('.hobbit-list-item').eq(1)
  var mordor = $('article').eq(2)
  var divMountDoom = $('<div>').attr('id', 'mount-doom').appendTo(mordor)
  frodo.appendTo(divMountDoom)
  sam.appendTo(divMountDoom)
}


// ## 12

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
  var mordor = $('article').eq(2)
  var divGollum = $('<div>').attr('id', 'gollum')
  var ring = $('.the-ring').remove()
  var divMountDoom = $('<div>').attr('id', 'mount-doom')
  divGollum.appendTo(mordor)
  divGollum.appendTo(divMountDoom);
  ring.appendTo(divGollum);
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
  var baddies = $('.baddies').remove();
  var shire = $('article').eq(0)
  var hobbitsMoveHome = $('.hobbit').appendTo(shire)
}
