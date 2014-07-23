$(function(){
  console.log('Loaded, bro.');
  makeMiddleEarth(lands);
  makeHobbits(hobbits);
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

  sec = $("<section>").attr("id", "middle-earth").appendTo("body");
  for(var i = 0; i < lands.length; i++) {
    if(i === 0){
      sec.append("<article id=" + lands[i].replace(' ', '-') + "><h1>" + lands[i]);

    } else if (i === 1){
      sec.append("<article id=" + lands[i].replace(' ', '-') + "><h1>" + lands[i]);
    } else if (i === 2) {
      sec.append("<article id=" + lands[i].replace(' ', '-') + "><h1>" + lands[i]);

    }
  }
}

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  hobbitsList = $("<ul>").appendTo("#The-Shire");

  for(var k = 0; k < hobbits.length; k++) {
    hobbitsList.append("<li>" + hobbits[k]);
    if(hobbits[k] === "Frodo Baggins") {
      keepItSecretKeepItSafe();
    }
  }
  $("li").addClass("hobbit");
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  ring = $("<div>").attr("id", "the-ring").appendTo("li");
}

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  // give each of the baddies a class of baddy
  var baddiesList = $("<ul>").appendTo("#Mordor");

  for(var m = 0; m < baddies.length; m++) {
    baddiesList.append("<li>" + baddies[m]);
  }
  $("#Mordor li").addClass("baddies");
}

function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy
  $("<aside>").appendTo("#Mordor");
  buddiesList = $("<ul>").appendTo("#Mordor aside");
  for(var p = 0; p < buddies.length; p++) {
    buddiesList.append("<li>" + buddies[p]);
  }
  $("#Mordor aside li").addClass("buddy");
}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  hobbitsList.remove();
  hobbitsList.appendTo("#Rivendell");
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var aragorn = $(".buddy").eq(3);
  aragorn.text("Aragorn");
  return aragorn;
}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add an h1 with the text 'The Fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party

  buddiesList.appendTo("#Rivendell");

  $("<div>").attr("id", "the-fellowship").appendTo("#Rivendell");
  $("<h1>").text("The Fellowship").appendTo("#the-fellowship");

  $(".hobbit").remove();
  for(var q = 0; q < hobbits.length; q++) {
    hobbitsList.append("<li>" + hobbits[q]).appendTo("#the-fellowship");
    alert(hobbits[q] + " joined The Fellowship.");
  }
  $(".buddy").remove();
  for(var r = 0; r < buddies.length; r++) {
    buddiesList.append("<li>" + buddies[r]).appendTo("#the-fellowship");
    theBalrog();
    alert(buddies[r] + " joined The Fellowship.");
  }
}

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  var gandalf = $(".buddy").eq(0).css("border-color", "grey");
  gandalf.text("Gandalf the White");
  gandalf.css("background-color", "white");
  return gandalf;
}

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  alert("Horn of Gondor has been blown!");
  alert("Boromir has been killed by the Uruk-hai!");
  $(".buddy").eq(4).css("text-decoration", "line-through");
  $(".baddies").eq(2).remove();
}

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  var frodo = $(".hobbit").eq(0).remove();
  var sam = $(".hobbit").eq(1).remove();
  frodo.appendTo("#Mordor");
  sam.appendTo("#Mordor");
  $("<div>").attr("id", "mount-doom").appendTo("#Mordor");
}

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
  $("<div>").attr("id", "gollum").appendTo("#Mordor");
  ring.remove();
  gollum = $("#gollum").append(ring);
  gollum.appendTo("#mount-doom");
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
  $("#mount-doom").empty();
  $(".baddies").remove();
  $(".hobbit").appendTo("#The-Shire");
}
