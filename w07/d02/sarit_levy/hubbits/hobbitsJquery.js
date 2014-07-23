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

// ## 1

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
      $('<section id="middle-earth">');

    // add each land as an article tag
      $('<article>');
    // inside each article tag include an h1 with the name of the land
      $('<h1>').text("The Shire").appendTo($('article'));
    // add each land as an article tag
      $('<article>');
    //  inside each article tag include an h1 with the name of the land
      $('<h1>').text("Rivendell").appendTo($('article'));
    // add each land as an article tag
      $('<article>');
    //  inside each article tag include an h1 with the name of the land
      $('<h1>').text("Mordor").appendTo($('article'));


    // append the section to the body
      $('#middle-earth').appendTo($('body'));
}

// ## 2

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // // give each hobbit a class of hobbit
  $('<ul>').html(hobbits).append('<li>').addClass('.hobbit');
  // $('<li>').appendTo($('ul')(hobbits));

  // $('<li>').addClass('.hobbit');
}

// ## 3

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
    $('<div>');
    $('#the-ring').appendTo($('div'));
  // add the ring as a child of Frodo
    $('#the-ring').appendTo("Frodo Baggins");
}

// ## 4

```
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
    $('<ul>');
    $('<li>').appendTo($('ul'));
  // give each of the baddies a class of baddy
    $('<li>').addClass('.baddy');
}
```

// ## 5

```
function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy
  $('<aside>').appendTo("Mordor").append('ul').html(buddies).addClass('buddy');
}
```

// ## 6
```
function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell

  $(hobbits).html().appendTo("Rivendale");
}
```

// ## 7

```
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $(buddies).html("Strider").text("Aragorn")
}
```

// ## 8

```
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $(hobbits).appendTo("Rivendell").append(buddies);

  // create a new div called 'the-fellowship'
  // add an h1 with the text 'The Fellowship'
  $('<div>').addClass('the-fellowship').text('The Fellowship');

  // add each hobbit and buddy one at a time to 'the-fellowship'
  $(hobbits).appendTo('.the-fellowship')
  $(buddies).appendTo('.the-fellowship')
  // after each character is added make an alert that they have joined your party


}
```

// ## 9

```
function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  $("Gandalf").attr("Gandalf the White")

  // apply style to the element

  // make the background 'white', add a grey border
}
```

// ## 10
```
function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown

  // Boromir's been killed by the Uruk-hai!

  // put a linethrough on boromir's name

  // Remove the Uruk-Hai from the Baddies on the page
  $(baddies).remove("The Uruk-hai")
}
```

// ## 11
```
function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor

  // add a div with an id of 'mount-doom' to Mordor
  $('<div>').appendTo('#mount-doom').appendTo("Mordor");
}
```

// ## 12
```
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  $('<div>').appendTo('#gollum').appendTo("Mordor");
  // Remove the ring from Frodo and give it to Gollum
  $('#the-ring').remove("Frodo").appendTo("Gollum");
  // Move Gollum into Mount Doom
  $("Gollum").appendTo("Mount Doom");
}
```

// ## 13
```
function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $("Gollum").remove();
  $('#the-ring').remove();

  // remove all the baddies from the document
  $(baddies).remove();

  // Move all the hobbits back to the shire
  $(hobbits).appendTo("The Shire");
}
```
