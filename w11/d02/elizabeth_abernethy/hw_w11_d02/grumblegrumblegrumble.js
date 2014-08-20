// Homework: Week 11, Day 1

// 1. Create a new grumble (call it 'grumble1') with no attributes set.
var grumble1 = new GrumbleModel();

// 2. Set that grumbles attributes in one line.
grumble1.set({
author: 'Liz',
content: 'blah blah blah',
title: 'hello',
image: 'www.placekitten.com/200/200',
avatar: 'www.placekitten.com/200/200'
});

// 3. Save grumble1.
grumble1.save();

// 4. Delete grumble1.
grumble1.destroy();

// 5. Create grumble2, this time setting the attributes when you create it.
var grumble2 = new GrumbleModel({
author: 'Liz',
content: 'blah blah blah',
title: 'hello',
image: 'www.placekitten.com/200/200',
avatar: 'www.placekitten.com/200/200'
});

// 6. Modify grumble2's title and content, and save it (2 lines).
grumble2.set({ title: 'Hey!', content: 'hey hey hey!'});
grumble2.save();

// 7. Create a new gumble collection, and call it allGrumbles.
var allGrumbles = new GrumblesCollection();

// 8. Fill the allGrumbles collection with the data from the server.
allGrumbles.fetch();

// 9. Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
var myFavGrumble = allGrumbles.last();

// 10. Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
myFavGrumble.destroy();

// 11. Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumbles.add({
author: 'Liz',
content: 'blah blah blah',
title: 'hello',
image: 'www.placekitten.com/200/200',
avatar: 'www.placekitten.com/200/200'
 });

// 12. Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
Backbone.sync('create', allGrumbles);
