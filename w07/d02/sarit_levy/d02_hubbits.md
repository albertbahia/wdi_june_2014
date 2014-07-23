Homework 07-02

#### Learning Objectives
- Practice using 'Vanilla' JavaScript to manipulate the DOM
- Practice using a JavaScript library, jQuery

## Lord Of the Bling

![Bling](http://images4.fanpop.com/image/photos/18600000/The-Lord-of-the-Bling-movies-18669429-590-880.jpg)

Create a function for each of the following steps to practice DOM Manipulation using JavaScript and jQuery. Write out each function in Atom/Sublime and test that it works in the JavaScript console in Chrome (or your browser of choice).

```javascript
// Dramatis Personae

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

var lands = [
  "The Shire",
  "Rivendell",
  "Mordor"
];
```

## 1

```
function makeMiddleEarth(landsPlaceholder) {

  landsPlaceholder  // ["The Shire", "Rivndell", "Mrder"]
    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append the section to the body
}

makeMiddleEarth(lands);
```

## 2
```
function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}
```

## 3
```
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}
```

## 4

```
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  // give each of the baddies a class of baddy
}
```

## 5

```
function makeBuddies(buddies) {
  // create an aside tag and append it below mordor
  // display an unordered list of buddies in the aside
  // give each of the buddies a class of buddy
}
```

## 6
```
function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
}
```

## 7

```
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
}
```

## 8

```
function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add an h1 with the text 'The Fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}
```

## 9

```
function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}
```

## 10
```
function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
}
```

## 11
```
function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}
```

## 12
```
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}
```

## 13
```
function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
```
