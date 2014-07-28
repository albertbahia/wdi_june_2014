$(function(){
  console.log('Loaded, bro.');
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
  makeBuddies(buddies);
  makeBaddies(baddies);
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
  for(var i=0;i<lands.length;i++){
    $('<article>').html(lands[i]).appendTo(section);
  }
}

function makeHobbits(hobbits) {
  var ul = $('<ul>').addClass('hobbits').appendTo('article').eq(0);
  for(var i=0;i<hobbits.length;i++){
    $('<li>').text(hobbits[i]).addClass('hobbit').appendTo(ul);
  }
}

function keepItSecretKeepItSafe() {
  var theRing = $('<div>').text("THE RING").attr('id', 'the-ring').appendTo($('ul li:first-child'));
}

function makeBaddies(baddies) {
  var ul = $('<ul>').addClass('baddies').appendTo('section article:last-child');
  for(var i=0;i<baddies.length;i++){
    $('<li>').text(baddies[i]).addClass('baddy').appendTo(ul);
  }
}

function makeBuddies(buddies) {
  var aside = $('<aside>').appendTo('section article:last-child');
  var ul = $('<ul>').addClass('buddies').appendTo(aside);
  for(var i=0;i<buddies.length;i++) {
    $('<li>').text(buddies[i]).addClass('buddy').appendTo(ul);
  }
}

function leaveTheShire() {
  $('.hobbits').appendTo('section article:nth-child(2)');
}

function beautifulStranger() {
  $('.buddies :nth-child(4)').text("Aragon");
}

function forgeTheFellowShip() {

  var fellowship = $('<div>').html('<h1>The Fellowship</h1>').addClass('the-fellowship').appendTo('article').eq(1);

    $('.buddy').each(function(){
      $('.buddy').appendTo(fellowship);
      alert($(this,'.buddy').text() + "has joined the fellowship.")
    });

    $('.hobbit').each(function(){
      $('.hobbit').appendTo(fellowship);
      alert($(this,'.hobbit').text() + "has joined the fellowship.")
    });

}

function theBalrog() {
  $("li:contains('Gandalf')").text('Gandalf the White').css({'border': 'solid 1px gray', 'background-color': 'white'});
}

function hornOfGondor() {
  alert("The horn of gondor has been blown");
  $("li:contains('Boromir')").css('text-decoration', 'line-through');
  $("li:contains('Uruk-hai')").remove();
}

function itsDangerousToGoAlone() {
  $("li:contains('Frodo')").appendTo('section article:last-child');
  $("li:contains('Samwise')").appendTo('section article:last-child');
}

function weWantsIt() {
  $('<div>').attr('id', 'gollum').text('GOLLUM').appendTo('section article:last-child');
  $('#the-ring').remove().appendTo('#gollum');
  $('<article>').text('Mount Doom').addClass('mount_doom').appendTo('section');
  $('#gollum').appendTo('.mount_doom');
}

function thereAndBackAgain() {
  $('#gollum').remove();
  $('#the-ring').remove();
  $('.baddies').remove();
  $('.hobbit').appendTo('section article:first-child');
}
