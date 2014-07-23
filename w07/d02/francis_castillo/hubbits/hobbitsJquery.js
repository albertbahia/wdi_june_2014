$(function(){
  console.log('Loaded, bro.');
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
  keepItSecretKeepItSafe();
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

function makeMiddleEarth (lands) {
  var section = $('<section>').attr('id', 'middle-earth').appendTo($('body'));
  for (var i = 0; i < lands.length; i++) {
    var article = $('<article>').appendTo(section);
    $('<h1>').text(lands[i]).appendTo(article);
  }
}

function makeHobbits (hobbits) {
  var article = $('<ul>').addClass("hobbits-list").appendTo($('article')[0]);
  for (var i = 0; i < hobbits.length; i++) {
    $('<li>').addClass(hobbits[i]).text(hobbits[i]).appendTo($('.hobbits'));
  }
}

function keepItSecretKeepItSafe() {
  $('<div>').attr("id", "the-ring").appendTo($('.Frodo'));
}


function makeBaddies(baddies) {
  var article = $('<ul>').addClass("baddies").appendTo($('article')[2]);
  for (var i = 0; i < baddies.length; i++) {
    $('<li>').addClass(baddies[i]).text(baddies[i]).appendTo($('.baddies'));
  }
}

function makeBuddies(buddies) {
  var article = $('<aside>').appendTo($('article')[2]);
  var aside = $('<ul>').addClass("buddies").appendTo($('aside'));
  for (var i = 0; i < buddies.length; i++) {
    $('<li>').addClass(buddies[i]).text(buddies[i]).appendTo($('.buddies'));
  }
}

function leaveTheShire() {
  $('.hobbits').appendTo($('article')[1]);
}

function beautifulStranger() {
  $('.Strider').text("Aragon");
}

function forgeTheFellowShip() {
  $('<h1>').text("The Fellowship").appendTo($('article')[1]);
  $('<div>').addClass("the-fellowship").appendTo($('article')[1]);
  $('.hobbits').empty();
  $('.buddies').empty();
    var article = $('<ul>').addClass("fellow-items").appendTo($('.the-fellowship'));
    for (var i = 0; i < buddies.length; i++) {
  $('<li>').text(hobbits[i]).addClass('hobbits').addClass(hobbits[i]).appendTo($('.fellow-items'));
      alert(hobbits[i] + " is joining the party!");
      $('<li>').text(buddies[i]).addClass(buddies[i]).appendTo($('.fellow-items'));
      alert(buddies[i] + " is joining the party!");
    }
    keepItSecretKeepItSafe();
}

function theBalrog() {
  $('.Gandalf').text('Gandalf the White').css("background-color", "white").css("border", "5px solid gray");

}

function hornOfGondor() {
  alert("The horn of gondor has been blown!");
  $('.Boromir').css('text-decoration', 'line-through');
  $('.the').empty();

}

function itsDangerousToGoAlone () {
  forgeTheFellowShip();
  $('<div>').attr("id","mount-doom").appendTo($('article').eq(2));
  $('<ul>').appendTo($('#mount-doom'));
  $('.fellow-items li').eq(0).appendTo($('#mount-doom ul'));
  $('.fellow-items li').eq(1).appendTo($('#mount-doom ul'));

}

function weWantsIt () {
  keepItSecretKeepItSafe();
  itsDangerousToGoAlone();

  $('<div>').attr("id", "gollum").appendTo($('article').eq(2));
  $('<ul>').appendTo($('#gollum'));
  $('<li>').text("Gollum").appendTo($('#gollum ul'));
  $('#the-ring').appendTo($('#gollum ul li'));
  $('#gollum').appendTo($('#mount-doom'));
}

function thereAndBackAgain () {
  weWantsIt();

  $('#gollum').remove();
  $('.baddies').remove();
  $('.hobbits').appendTo($('.hobbits-list'))
}
