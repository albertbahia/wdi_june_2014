// HW_W11_D11 

// Create a new grumble (call it 'grumble1') with no attributes set.
// var grumble1 = new GrumbleModel;

// Set that grumbles attributes in one line.
// grumble1.set({author: 'Grumpy Cat', title: 'Not Impressed', content: 'Alex is a silly human.', image: 'http://s3-ec.buzzfed.com/static/enhanced/webdr05/2013/8/7/11/enhanced-buzz-15017-1375889565-8.jpg', avatar:'http://placekitten.com/400/400'});
// grumble1.attributes --> returns set attributes

// Save grumble1.
// grumble1.save();

// Delete grumble1.
// grumble1.destroy();


// Create grumble2, this time setting the attributes when you create it.
// grumble2 = new GrumbleModel({author: 'Lil Bub', title: 'I Didnt Even Have Fun Once', image: "https://dr56wvhu2c8zo.cloudfront.net/cpusandbox/assets/9bee2b02-de08-4d60-9133-bfb88490d7f2/1_5---MANYFACES-laughing.jpg", content: "Nope. Never. Not once.", avatar: "http://placekitten.com/400/400"});
// grumble2.attributes --> returns grumble2 with attributes

// Modify grumble2's title and content, and save it (2 lines).
// grumble2.set({title: 'Can I Sleeps Now?', content: "I'm so tired. Can I nap in your lap? PLZ."});
// grumble2.save();

// Create a new gumble collection, and call it allGrumbles.
// var allGrumbles = new GrumblesCollection;

// Fill the allGrumbles collection with the data from the server.
// allGrumbles.fetch();

// Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
// var myFavGrumble = allGrumbles.get(12)


// Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
// allGrumbles.remove(grumble2);

// Add a brand new grumble to the collection in one line. Make sure to set its properties.
// allGrumbles.add({author: 'Meowth', title: 'Farewell Team Rocket', content: 'No longer blasting off at the speed of light.', avatar: "http://img2.wikia.nocookie.net/__cb20091030202635/villains/images/9/99/Meowth.png", image: "http://media-cache-ec0.pinimg.com/236x/e8/c0/07/e8c00754ea87a86706d3433f2e435f4c.jpg"});

// Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
// Backbone.sync('create', allGrumbles); --> I also created a save function in my grumbleCollection.js for this
// Backbone.sync('destroy', allGrumbles); --> also created delete function in grumbleCollection.js
