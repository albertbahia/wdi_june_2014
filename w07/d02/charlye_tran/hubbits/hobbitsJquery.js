$(function(){
  console.log('Loaded, bro.');
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  makeBaddies(baddies);
  makeBuddies(buddies);
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
  var body = $('body');
  var section = $('<section>').attr('id', 'middle-earth');
  for (var i =0; i< lands.length; i++){
    var article = $('<article>').appendTo(section).attr('id', i);
    var h1 = $('<h1>').text(lands[i]);
    article.append(h1);
  }
  body.append(section);
}



function makeHobbits(hobbits) {
  var shire = $('article')[0];
  var ul = $('<ul>');
  for (var i=0; i < hobbits.length; i++){
    var li = $('<li>')
    .text(hobbits[i])
    .addClass('hobbit');
    ul.append(li);
  }
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  ul.appendTo(shire);
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var body = $('body');
  var frodoList = $('li:first-of-type');
  var ring = $('<div>');
  ring.attr('id', 'the-ring');
  frodoList.append(ring);
}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  // give each of the baddies a class of baddy
  var mordor = $('article')[2];
  var ul = $('<ul>');
  for (var i=0; i < baddies.length; i++){
    var li = $('<li>')
    .text(baddies[i])
    .addClass('baddy');
    ul.append(li);
  }
  ul.appendTo(mordor);
}

function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy
  var mordor = $('article')[2];
  var aside = $('<aside>');
  var  ul = $('<ul>');
  for (var i=0; i < buddies.length; i++){
    var li = $('<li>')
    .text(buddies[i])
    .addClass('buddy');
    ul.append(li);
  }
  ul.appendTo(aside);
  aside.appendTo(mordor);
}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var rivendell = $('article')[1];
  var shire = $('article')[0];
  var hobbits = $('.hobbit');
  hobbits.remove();
  hobbits.appendTo(rivendell);
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var strider = $('.buddy')[3];
  strider.textContent= 'Aragorn';
}

function forgeTheFellowShip() {
  var div = $('<div>').attr('id', 'the-fellowship');
  var h1 = $('<h1>').text("The Fellowship");
  var rivendell = $('article')[1];
  h1.appendTo(rivendell);
  var hobbits = $('.hobbit');
  var buddies = $('.buddy');
  hobbits.remove();
  hobbits.appendTo(rivendell);
  buddies.remove();
  hobbits.appendTo(rivendell);
  for (var i = 0; i < hobbits.length; i++){
    hobbit = hobbits[i].appendTo(div);
    return hobbit + " has joined the Fellowship.";
  }
  for (var t = 0; t < buddies.length; t++){
    buddy = buddies[t];
    div.appendChild(buddy);
    return buddy + " has joined the Fellowship.";
  }
}

function theBalrog() {
  var gandalf = $('.buddy')[0];
  gandalf.textContent = "Gandalf the White";
}

function hornOfGondor() {
  window.alert("The Horn of Gondor has been blown!");
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  var boromir = $('.buddy')[4];
  boromir.style.textDecoration ="line-through";
  // Remove the Uruk-Hai from the Baddies on the page
  var urukHai = $('.baddy')[2];
  urukHai.remove();
}

function itsDangerousToGoAlone(){
  var frodo = $('.hobbit')[0];
  var sam = $('.hobbit')[1];
  frodo.remove();
  sam.remove();
  var mordor = $('article')[2];
  mordor.appendChild(frodo);
  mordor.appendChild(sam);
  var mountDoom = $('<div>');
  mountDoom.attr('id', 'mount-doom');
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

function weWantsIt() {
  var gollum = $('<div>');
  gollum.attr('id', 'gollum');
  var mordor = $('article')[2];
  mordor.append(gollum);
  var ring = $('#the-ring');
  ring.remove();
  gollum.append(ring);
  var mountDoom = $('#mount-doom');
  gollum.appendTo(mountDoom);

  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

function thereAndBackAgain() {
  var gollum = $('#gollum');
  gollum.remove();
  var ring = $('#the-ring');
  ring.remove();
  baddies = $('baddy');
  baddies.remove();
  var shire = $('article')[0];
  shire.append($('.hobbit'));
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
