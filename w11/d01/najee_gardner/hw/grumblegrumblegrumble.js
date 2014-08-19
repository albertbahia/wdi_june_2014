// Create a new grumble (call it 'grumble1') with no attributes set.
var grumble1 = new Grumble();

// Set that grumbles attributes in one line.
grumble1.set({author: 'Charles', content: 'I run a school for the gifted children of the world.', title: 'Professor', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'});

// Save grumble1.
grumble1.save();

// Delete grumble1.
grumble1.destroy();

// Create grumble2, this time setting the attributes when you create it.
var grumble2 = new Grumble({author: 'Bobby', content: 'I be shooting that ice out my fingertips, yo.', title: 'Ice Man', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'});

// Modify grumble2's title and content, and save it (2 lines).
grumble2.set({title: 'Big Ice Man', content: 'I shoot icebergs out my hands now!'});
grumble2.save();

// Create a new gumble collection, and call it allGrumbles.
var allGrumbles = new GrumbleCollection();

// Fill the allGrumbles collection with the data from the server.
allGrumbles.fetch();

// Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
var myFavGrumble = allGrumbles.where({author: 'Bruce'});

// Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
allGrumbles.remove(myFavGrumble);

// Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumbles.add({author: 'Ash', content: 'I want to be the greatest Pokemon Master there ever was.', title: 'Ketchum', image: 'http://placekitten.com/200/300', avatar: 'http://placekitten.com/200/300'});

// Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
allGrumbles.sync('create', allGrumbles); // this doesn't work for some reason. I'm not sure what this is actually used for.
allGrumbles.sync('destroy', allGrumbles);
