$(function(){
  console.log('Loaded, bro!');
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
  makeBaddies(baddies);
  makeBuddies(buddies);
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
    var section = $('<section>').attr('id', 'middle-earth')
    // add each land as an article tag
    for (var i = 0; i < lands.length; i++ ) {
      var landText = lands[i];
      var article = $('<article>').appendTo(section);
      $('<h1>').text(landText).appendTo(article);
    }
    // inside each article tag include an h1 with the name of the land

    // append the section to the body
    section.appendTo('body');
}


function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var shire = $('article')[0];
  var unorderedList = $('<ul>').addClass('hobbit-list').appendTo(shire)

  // give each hobbit a class of hobbit
  for (var i = 0; i < hobbits.length; i++ ) {
    var hobbit = hobbits[i];
    $('<li>').addClass('hobbit').text(hobbit).appendTo(unorderedList);
  }
}


function keepItSecretKeepItSafe() {
  var frodo = $('.hobbit')[0];
  // create a div with an id of 'the-ring'
  var ring = $('<div>').attr('id', 'the-ring');
  // add the ring as a child of Frodo
  ring.appendTo(frodo);
}




function makeBaddies(baddies) {

  var morder = $('article')[2];
  var unorderedList = $('<ul>').addClass('baddy-list').appendTo(morder);
  // display an unordered list of baddies in Mordor
  for (var i = 0; i < baddies.length; i++) {
    $('<li>').addClass('baddy').text(baddies[i]).appendTo(unorderedList);
  }

  // give each of the baddies a class of baddy
}




function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  var aside = $('<aside>').appendTo($('#middle-earth'));
  // display an unordered list of buddies in the aside
  var unorderedList = $('<ul>').addClass('buddy-list').appendTo(aside);
  // give each of the buddies a class of buddy
  for (var i = 0; i < buddies.length; i++) {
    $('<li>').addClass('buddy').text(buddies[i]).appendTo(unorderedList);
  }

}



function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var shire = $('article')[0];
  var rivendell = $('article')[1];
  var hobbitList = $('.hobbit-list');
  hobbitList.appendTo(rivendell);
}




function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var aragorn = $('.buddy').eq(3);
  aragorn.text('Aragorn');
}




function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var rivendell = $('article').eq(1);
  var hobbits = $('.hobbit');
  var buddys = $('.buddy');
  var ul = $('<ul>').appendTo(rivendell);
  hobbits.appendTo(ul);
  buddys.appendTo(ul);
  // create a new div called 'the-fellowship'
  $('<div>').attr('id', 'the-fellowship').appendTo(rivendell);
  // add an h1 with the text 'The Fellowship'
  // $('<h1>').text('The Fellowship').appendTo($('#the-fellowship'));
  //
  //
  // // add each hobbit and buddy one at a time to 'the-fellowship'
  // for (var i = 0; i < ul.length; i++) {
  //   ul.eq(i).appendTo($('#the-fellowship'));
  //   alert( ul[i] + "has joined the fellowship");
  // };

  // ul.each(function() {
  //   ( this ).appendTo($('#the-fellowship'));
  //   alert( this + "has joined the fellowship");
  // })

  // after each character is added make an alert that they have joined your party
    // // mck solution

    var theFellowship = $('<div>').attr('id', 'the-fellowship')
      .append('<h1>The Fellowship</h1>');
    var hobbitBuddyList = $('<ul>');
    for (var i = 0; i < hobbits.length; i++) {
      hobbitBuddyList.append(hobbits[i]);
      alert(hobbits[i].innerText + " has joined");
    }
    for (var i = 0; i < buddys.length; i++) {
      hobbitBuddyList.append(buddys[i]);
      alert(buddys[i].innerText + " has joined");
    }
    theFellowship.append(hobbitBuddyList).appendTo($('#the-fellowship'))
}




function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  var gandalf = $('.buddy').eq(0);
  gandalf.text('Gandalf the White');
  // apply style to the element
  gandalf.css('background-color', 'white');
  gandalf.css('border-style', 'solid');
  gandalf.css('border-color', 'grey');
  gandalf.css('color', 'grey');
  // make the background 'white', add a grey border
}




function hornOfGondor() {
  alert("Horn of Gondor sound ");
  alert("Boromir dead. Uruk-hai done it.");

  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  var borimir = $('.buddy').eq(4);
  borimir.css('text-decoration', 'line-through');
  // Remove the Uruk-Hai from the Baddies on the page
  $('.baddy').eq(2).remove();
}




function itsDangerousToGoAlone() {
  // take Frodo and Sam out of the fellowship and move them to Mordor
  var frodo = $('.hobbit').eq(0);
  var sam = $('.hobbit').eq(1);
  var mordor = $('article').eq(2);
  frodo.appendTo(mordor);
  sam.appendTo(mordor);
  // add a div with an id of 'mount-doom' to Mordor

  $('<div>').attr('id', 'mount-doom').appendTo(mordor);
}




function weWantsIt() {
  var mordor = $('article').eq(2);
  $('<div>').attr('id', 'gollum').appendTo(mordor);
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  var ring = $('#the-ring');
  ring.appendTo($('#gollum'));
  // Move Gollum into Mount Doom
  gollum.appendTo($('#mount-doom'));
}




function thereAndBackAgain() {
  $('#gollum').remove();
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  $('.baddy-list').remove();
  // Move all the hobbits back to the shire
  var shire = $('article').eq(0).append('<ul id-"hubbits">');
  $('.hobbit').appendTo(shire);
}
