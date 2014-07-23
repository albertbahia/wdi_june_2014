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
  var body = $('body');
  var middleEarth = $('<section>').attr('id', 'middle-earth').appendTo(body);
  for(var i = 0; i < lands.length; i++) {
    $('<article>').html('<h1>' + lands[i] + '</h1>').appendTo(middleEarth);
  };
};

function makeHobbits(hobbits){
  var theShire = $("article:contains('The Shire')");
  var hobbitList = $('<ol>').attr('id', 'hobbits').appendTo(theShire);
  for(var i = 0; i < hobbits.length; i++) {
    var hobbit = $('<li>').addClass('hobbit').text(hobbits[i]);
    hobbit.appendTo(hobbitList)
  };
};

function keepItSecretKeepItSafe() {
  var ring = $('<div>').attr('id', 'the-ring');
  var frodo = $("ol li:contains('Frodo')");
  frodo.append(ring);
};

function makeBaddies(baddies) {
  var body = $('body');
  var baddieList = $('<ol>').attr('id', 'baddies').appendTo(body);
  for(var i = 0; i < baddies.length; i++) {
    var baddie = $('<li>').addClass('baddy').text(baddies[i]);
    baddie.appendTo(baddieList)
  };
};

function makeBuddies(buddies) {
  var mordor = $("article:contains('Mordor')");
  var mordorAside = $('<aside>').appendTo(mordor);
  var buddieList = $('<ul>').attr('id', 'buddies').appendTo(mordorAside);

  for(var i = 0; i < buddies.length; i++) {
    var buddie = $('<li>').addClass('buddy').text(buddies[i]);
    buddie.appendTo(buddieList);
  };
};

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var hobbits = $('#hobbits');
  var rivendell = $("article:contains('Rivendell')");
  hobbits.appendTo(rivendell);
};

function beautifulStranger() {
  var strider = $("ul li:contains('Strider')");
  strider.text('Aragorn');
};

function forgeTheFellowShip() {
  var allHobbits = $('#hobbits');
  var allBuddies = $('#buddies');
  var rivendell = $("article:contains('Rivendell')");
  rivendell.append(allHobbits, allBuddies);

  var hobbits = $('.hobbit');
  var buddies = $('.buddy');
  fellows = $.merge( $.merge( [], hobbits ), buddies );

  var theFellowship = $('<div>').attr('id', 'the-fellowship');
  $('<h1>').text('The Fellowship').appendTo(theFellowship);

  for(var i = 0; i < fellows.length; i++) {
    theFellowship.append(fellows[i]);
    var fellowName = $(fellows[i]).text();
    alert(fellowName + ' has joined your party!');
  };
  theFellowship.appendTo(rivendell);
};

function theBalrog() {
  var gandalf = $("li:contains('Gandalf')");
  gandalf.text('Gandalf the White');
  gandalf.css('background', 'white').css('border', '2px solid grey');
}

function hornOfGondor() {
  alert('The Horn of Gondor has been blown!');
  alert('Boromir\'s been killed by the Uruk-hai!');
  var boromir = $("li:contains('Boromir')");
  boromir.css('text-decoration', 'line-through');
  $("li:contains('Uruk')").remove();
}

function itsDangerousToGoAlone(){
  var mordor = $("article:contains('Mordor')");
  $(".hobbit:contains('Frodo')").appendTo(mordor);
  $(".hobbit:contains('Sam')").appendTo(mordor);
  $('<div>').attr('id', 'mount-doom').appendTo(mordor);
}

function weWantsIt() {
  var mordor = $("section article:contains('Mordor')");
  var gollum = $('<div>').attr('id', 'gollum').appendTo(mordor);
  $('#the-ring').appendTo(gollum);
  $('#mount-doom').append(gollum);
}

function thereAndBackAgain() {
  $('#gollum').remove();
  $('#the-ring').remove();
  $('#baddies').remove();

  var theShire = $("section article:contains('The Shire')");
  theShire.append($('.hobbit'));
}
