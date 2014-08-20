// Create a new grumble (call it 'grumble1') with no attributes set.
var grumble1 = new Grumble();

// Set that grumbles attributes in one line.
grumble1.set({author: 'fen', title: 'test', content: 'tooooooo short hmm', image: 'image url u kno', avatar: 'avatar url too'});

// Save grumble1.
grumble1.save();

// Delete grumble1.
grumble1.destroy();

// Create grumble2, this time setting the attributes when you create it.
var grumble2 = new Grumble({author: 'fenfen', title: 'new grumbl', content: 'tooooooo short hmm', image: 'image url u kno', avatar: 'avatar url too'});

// Modify grumble2's title and content, and save it (2 lines).
grumble2.set({title: 'new new new grumbl', content: 'something about bootstrapping'});

grumble2.save()

// Create a new gumble collection, and call it allGrumbles.
var allGrumbles = new grumblesCollection()

// Fill the allGrumbles collection with the data from the server.
allGrumbles.fetch();

// Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
var myFavGrumbl = allGrumbles.get(12);

// Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
allGrumbles.remove(myFavGrumbl);

(;_;)/

// Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumbles.add({author: 'me', title: 'yet another grumbl', content: 'oRiGiNaL cOnTeNt', image: 'image url u kno', avatar: 'avatar url too'});

// Research how to sync a collection to the server (additions and deletions). Sync your allGrumbles collection.

I am really very confused about this, despite trying to research it as thoroughly as possible. Apparently there is no 'save' function native to a collection object. I ended up trying to write a save: behavior into my grumblesCollection object that would invoke Backbone.sync on a success result.

But it seems I need to be able to either call create on the whole array of existing Grumble db objects and replace them with those living on the browser, or update each one individually with some iteration. I can not figure out how to reconcile either of those options with the controller. I think Im confused because I know the collection only exists in the browser, meaning that to update the db objects corresponding to its models, I would need to iterate, meaning I cant use the .reset() function.
Anyways, I hope Im on the right path at least. Im not sure what other options there are and all the stackoverflows etc on the topic are referencing the same piece of documentation that I cant quite understand.
