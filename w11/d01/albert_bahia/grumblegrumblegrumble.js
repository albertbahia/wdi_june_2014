// 1. Create a new grumble (call it 'grumble1') with no attributes set.
var grumble1 = new GrumbleModel();

// 2. Set that grumbles attributes in one line.
grumble1.set({author: "Wolowitz", content: "I am engineer from MIT.", title: "Do not hate on me.", image: "http://wac.450f.edgecastcdn.net/80450F/kkcb.com/files/2013/04/howard-wolowitz-the-big-bang-theory-630x441.jpg", avatar: "http://i1.wp.com/hrfarmer.com/wp-content/uploads/2012/12/the-big-bang-theory-wallpaper-11-Howard-Wolowitz.jpg?resize=300%2C225"})

// 3. Save grumble1.
grumble1.save();

// 4. Delete grumble1.
grumble1.destroy();

// 5. Create grumble2, this time setting the attributes when you create it.
var grumble2 = new GrumbleModel({author: "raj", content: "Yes, Siri.  I can do that.", title: "The Perpetual Dilemna", image: "http://static.iphoneitalia.com/wp-content/uploads/2012/01/siri-414x226.jpg", avatar: "http://media.tumblr.com/tumblr_kzo210Zb7J1qanok5.jpg"});

// 6. Modify grumble2's title and content, and save it (2 lines).
grumble2.set({title: "The Perpetual Dilemna EDITED", content: "Yes Siri, I just got EDITED."});

grumble2.save();

// 7. Create a new grumble collection, and call it allGrumbles.
var allGrumbles = new GrumblesCollection();

// 8. Fill the allGrumbles collection with the data from the server.
allGrumbles.fetch();

// 9. Retrieve a specific grumble (of your choosing) from the collection and store it in a variable called 'myFavGrumble'.
var myFavGrumble = allGrumbles.get(10);

// 10. Remove myFavGrumble from the collection. Shed a solitary tear, but resolve to move on.
allGrumbles.remove(myFavGrumble);

// 11. Add a brand new grumble to the collection in one line. Make sure to set its properties.
allGrumbles.add([{author: "spock", content: "Go in peace and prosper.", title: "True Commander", image: "http://www.startrek.com/legacy_media/images/200307/spock01/320x240.jpg", avatar: "http://upload.wikimedia.org/wikipedia/en/2/24/Spock_Zachary_Quinto.jpg"}]);

// 12. Research how to sync a collection to the server (additions and deleteions). Sync your allGrumbles collection.
allGrumbles.sync("read", allGrumbles);
//OR
allGrumbles.fetch();
