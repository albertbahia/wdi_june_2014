//
// Create a new grumble (call it 'grumble1') with no attributes set.
var grumble1 = new grumbleModel();
// Set that grumbles attributes in one line.
grumble1.set({author: 'Bobby Brown', content: 'something something my prerogative', title: 'every little step' });
// Save grumble1.
grumble1.save();
// Delete grumble1
grumble1.destroy();
// Create grumble2, this time setting the attributes when you create it.
var grumble2 = new grumbleModel({
  title: 'some title',
  author: 'some guy',
  content: 'some stuff goes here',
  image: 'http://www.fillmurray.com/460/300'
});
// Modify grumble2's title and content, and save it (2 lines).
grumble2.set({ title: "some new title", content: "some new content" });
grumble2.save();
// Create a new gumble collection, and call it allGrumbles.
var allGrumbles = new grumblesCollection();
// Fill the allGrumbles collection with the data from the server.
allGrumbles.fetch();
// Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
var myFavGrumble = allGrumbles.get(13);
// Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
allGrumbles.remove(myFavGrumble);

// Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumbles.create({title: 'created title', content: 'some some content', author: 'guy who wrote this' });

// Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
Backbone.sync('read', allGrumbles);
