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
  var section = $('<section>').attr('id', 'middle-earth').appendTo('body');
  for (index in lands) {
    var article = $('<article>')
      .attr('id', 'land'+index)
      .append($('<h1>')
      .text(lands[index]));
    article.appendTo(section);
  }
}

function makeHobbits(hobbits){
  var list = $('<ul>').attr('id', 'hobbits');
  var shire = $("#land0");
  list.appendTo(shire);
  for (index in hobbits) {
    $('<li>')
      .attr('class', 'hobbits')
      .attr('id', 'hobbit' + index)
      .text(hobbits[index])
      .appendTo(list);
  }
}

function keepItSecretKeepItSafe() {
  $('<div>').attr('id', 'the-ring').appendTo($('#hobbit0'));
}

function makeBaddies(baddies) {
  var list = $('<ul>');
  mondor = $('#land2');
  list.appendTo(mondor)
  for (i in baddies){
    $('<li>').attr('class', 'baddy').text(baddies[i]).appendTo(list);
  }
}

function makeBuddies(buddies) {
  var aside = $('<aside>');
  $('body').append(aside);
  var list = $('<ul>');
  list.appendTo(aside);
  for (i in buddies){
    $('<li>').attr('class', 'buddy').text(buddies[i]).appendTo(list);
  }
}

function leaveTheShire() {
  var movingHobbits = $('#hobbits');
  $('#hobbits').remove();
  $('#land1').append(movingHobbits);
}

function beautifulStranger() {
  $('aside ul li:nth-child(4)').text('Aragorn');
}

function forgeTheFellowShip() {
  var movingBuddies = $('.buddy').remove();
  var list = $('<ul>').attr('id', 'buddies');
  $('#land1').append(list.append(movingBuddies));
  
  var theFellowship = $('<div>').attr('class', 'the-fellowship');
  theFellowship.appendTo($('#land1'));
  $('<h1>').text('The Fellowship').appendTo(theFellowship);

  for (i in hobbits){
    $('<li>').text(hobbits[i]).appendTo(theFellowship);
    $('<p>').text(hobbits[i] + "has joined our party").appendTo(theFellowship);
  }
}

function theBalrog() {
  var gandalf = $('#buddies li:first-child').text('Gandalf the White');
  gandalf.css('background', 'white');
  gandalf.css('border', '3px solid grey');
}

function hornOfGondor() {
  $('body').append($('<p>').text('The Horn of Gondor has been blown'));
  $('body').append($('<p>').text("Boromir has been killed by the Uruk-hai!"));
  
  $('#buddies li:last-child').css('text-decoration', 'line-through');

  var urukHai = $('#land2 ul:nth-child(2) li:nth-child(3)').remove();
}

function itsDangerousToGoAlone(){
  var frodoAndSam = $('#hobbits li:first-child li:nth-child(2)');
  frodoAndSam.remove();
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}

















