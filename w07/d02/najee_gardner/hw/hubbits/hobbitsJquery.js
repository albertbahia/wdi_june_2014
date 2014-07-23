$(function(){
  console.log('Loaded, bro.');

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
    var section = $('<section>');
    section.attr('id', 'middle-earth');

    for (var i in lands) {
      // add each land as an article tag
      var article = $('<article>').appendTo(section);

      // inside each article tag include an h1 with the name of the land
      $('<h1>').appendTo(article).text(lands[i]);
    }

    // append the section to the body
    section.appendTo('body');
}

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var list = $('<ul>');

  for (var i in hobbits) {
    var item = $('<li>').appendTo(list);
    item.text(hobbits[i]);

    // give each hobbit a class of hobbit
    item.addClass('hobbit');
  }

  var middleEarth = $('#middle-earth');


  for (var i = 0; i < middleEarth.children().length; i++) {
    // weird stuff going on here.
    // console.log(middleEarth);
    if (middleEarth.children()[i].firstElementChild.innerHTML === 'The Shire') {
      middleEarth.children()[i].appendChild(list[0]);
    }
  }

}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var theRing = $('<div>').attr('id', 'the-ring');

  // add the ring as a child of Frodo
  var hobbits = $('.hobbit');
  for (var i = 0; i < hobbits.length; i++) {
    if (hobbits[i].innerHTML === 'Frodo Baggins') {
      hobbits[i].appendChild(theRing[0]);
    }
  }
}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var list = $('<ul>');

  // give each of the baddies a class of baddy
  for (var i = 0; i < baddies.length; i++) {
    var baddy = $('<li>').appendTo(list);
    baddy.addClass('baddy');
    baddy.text(baddies[i]);
  }

  var middleEarth = $('#middle-earth');
  for (var i = 0; i < middleEarth.children().length; i++) {
    if (middleEarth.children()[i].firstElementChild.innerHTML === 'Mordor') {
      middleEarth.children()[i].appendChild(list[0]);
    }
  }
}

function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  var aside = $('<aside>').appendTo('section');
  var list = $('<ul>').appendTo(aside);

  // display an unordered list of buddies in the aside
  for (var i = 0; i < buddies.length; i++) {
    var buddy = $('<li>').appendTo(list);
    buddy.text(buddies[i]);

    // give each of the buddies a class of buddy
    buddy.addClass('buddy')
  }

}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var hobbitsList = $('.hobbit').parent();
  var middleEarth = $('#middle-earth');

  for (var i = 0; i < middleEarth.children().length; i++) {
    if (middleEarth.children()[i].firstElementChild.innerHTML === 'Rivendell') {
      middleEarth.children()[i].appendChild(hobbitsList[0]);
    }
  }
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var buddies = $('.buddy')

  for (var i = 0; i < buddies.length; i++) {

    if(buddies[i].innerHTML === 'Strider') {
      buddies[i].innerHTML = 'Aragorn';
    }
  }
}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var buddiesList = $('.buddy').parent();
  var middleEarth = $('#middle-earth');

  for (var i = 0; i < middleEarth.children().length; i++) {
    if (middleEarth.children()[i].firstElementChild.innerHTML === 'Rivendell') {
      var rivendell = middleEarth.children()[i];
      rivendell.appendChild(buddiesList[0]);
      break;
    }
  }

  // create a new div called 'the-fellowship'
  var theFellowship = $('<div>');
  theFellowship.attr('id', 'the-fellowship')
  rivendell.appendChild(theFellowship[0]);

  // add an h1 with the text 'The Fellowship'
  $('<h1>').appendTo(theFellowship).text('The Fellowhship');

  // add each hobbit and buddy one at a time to 'the-fellowship'
  var fellowshipMembers = $('.hobbit, .buddy');
  fellowshipMembers.parent().remove();

  var list = $('<ul>').appendTo(theFellowship);

  for (var i = 0; i < fellowshipMembers.length; i++) {
    list[0].appendChild(fellowshipMembers[i]);

    // // after each character is added make an alert that they have joined your party
    alert(fellowshipMembers[i].innerHTML.split('<')[0] + ' has joined your party.');
  }
}

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  var fellowshipMembers = $('#the-fellowship ul').children();

  for (var i = 0; i < fellowshipMembers.length; i++) {
    if (fellowshipMembers[i].innerHTML === 'Gandalf the Grey') {
      var gandalf = fellowshipMembers[i];
      gandalf.innerHTML = 'Gandalf the White';
      // apply style to the element
      // make the background 'white', add a grey border
      gandalf.setAttribute('style', 'background: white; border: 2px solid gray');
    }
  }
}

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert('The Horn of Gondor has been blown!');

  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  var fellowshipMembers = $('#the-fellowship ul').children();

  for (var i = 0; i < fellowshipMembers.length; i++) {
    if (fellowshipMembers[i].innerHTML === 'Boromir') {
      fellowshipMembers[i].setAttribute('style', 'text-decoration: line-through')
    }
  }

  // Remove the Uruk-Hai from the Baddies on the page
  var baddies = $('.baddy');

  for (var i = 0; i < baddies.length; i++) {
    if (baddies[i].innerHTML === 'The Uruk-hai') {
      baddies[i].remove();
    }
  }
}

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  var list = $('<ul>');
  var middleEarthLocales = $('#middle-earth').children();
  var fellows = $('#the-fellowship ul').children();

  for (var i = 0; i < fellows.length; i++) {
    if (fellows[i].innerHTML.split('<')[0] === 'Frodo Baggins' ||
        fellows[i].innerHTML.split('<')[0] === 'Samwise \'Sam\' Gamgee') {
      list[0].appendChild(fellows[i]);
    }
  }

  for (var i = 0; i < middleEarthLocales.length; i++) {
    if (middleEarthLocales[i].firstElementChild.innerHTML === 'Mordor') {
      middleEarthLocales[i].appendChild(list[0]);

      // add a div with an id of 'mount-doom' to Mordor
      var mountDoom = $('<div>').attr('id', 'mount-doom');
      middleEarthLocales[i].appendChild(mountDoom[0]);
      $('<h1>').appendTo(mountDoom).text('Mount Doom');
      break;
    }
  }
}

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  var mordor = $('#mount-doom').parent();
  var gollum = $('<div>').attr('id', 'gollum');
  gollum.text('Gollum');
  gollum.appendTo(mordor);

  // Remove the ring from Frodo and give it to Gollum
  $('#the-ring').appendTo(gollum);

  // Move Gollum into Mount Doom
  gollum.appendTo($('#mount-doom'));
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $('#gollum').remove();
  // remove all the baddies from the document
  $('.baddy').parent().remove();
  // Move all the hobbits back to the shire
  var hobbits = $('.hobbit');
  var middleEarthLocales = $('#middle-earth').children();

  for (var i = 0; i < middleEarthLocales.length; i++) {
    if (middleEarthLocales[i].firstElementChild.innerHTML === 'The Shire') {
      middleEarthLocales[i].appendChild($('<ul>').append(hobbits)[0])
      break;
    }
  }
}
